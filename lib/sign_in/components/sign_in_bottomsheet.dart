import "package:service_masters/common/barrels.dart";

class SignInScreenBottomsheet extends StatelessWidget {
  const SignInScreenBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: context.screenWidth / 10,
          child: const Divider(
            thickness: 5,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        SecondaryButtonWithIcon(
          onPressed: () {
            context.router.push(EnterEmailRoute());
          },
          label: "Email Verification",
          icon: Image.asset(
            tCamera2,
            color: tPrimaryColor,
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            tPrimaryColor,
          ),
        ),
        const Spacer(),
        SecondaryButtonWithIcon(
          onPressed: () {
            context.router.push(EnterPhoneRoute());
          },
          label: "Phone Verification",
          icon: Image.asset(
            tGalleryImport,
            color: tPrimaryColor,
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            tPrimaryColor,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
