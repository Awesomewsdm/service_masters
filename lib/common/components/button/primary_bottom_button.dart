import "package:service_masters/common/barrels.dart";

class PrimaryBottomButton extends StatelessWidget {
  const PrimaryBottomButton({
    required this.label,
    this.onPressed,
    super.key,
    this.backgroundColor = tPrimaryColor,
  });

  final String label;
  final void Function()? onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.transparent,
      child: SizedBox(
        width: context.screenWidth,
        child: FloatingActionButton(
          heroTag: null,
          elevation: 0,
          backgroundColor: backgroundColor,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            label,
            style: context.textTheme.bodyLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
