import "package:service_masters/common/barrels.dart";

class LoadingOverlay extends StatelessWidget {
  LoadingOverlay({required this.child, super.key})
      : _isLoadingNotifier = ValueNotifier(false);

  final ValueNotifier<bool> _isLoadingNotifier;
  final Widget child;

  static LoadingOverlay of(BuildContext context) {
    return context.findAncestorWidgetOfExactType<LoadingOverlay>()!;
  }

  void show() {
    _isLoadingNotifier.value = true;
  }

  void hide() {
    _isLoadingNotifier.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      child: child,
      builder: (context, isLoading, child) {
        return Stack(
          children: [
            child!,
            if (isLoading)
              const Opacity(
                opacity: 0.8,
                child: ModalBarrier(dismissible: false, color: Colors.black),
              ),
            if (isLoading)
              const Center(
                child: WaveDots(size: 50, color: tPrimaryColor),
              ),
          ],
        );
      },
    );
  }
}
