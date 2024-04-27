import "package:service_masters/common/barrels.dart";

class PrimaryBottomButton extends StatelessWidget {
  const PrimaryBottomButton({
    required this.onPressed,
    required this.label,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      color: Colors.transparent,
      child: SizedBox(
        width: context.screenWidth,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: tPrimaryColor,
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
