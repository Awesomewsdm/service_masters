import "package:service_masters/common/barrels.dart";

class SignInScreenBottomsheet extends StatelessWidget {
  const SignInScreenBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: context.screenWidth / 10,
            child: const Divider(
              thickness: 5,
            ),
          ),
          const Gap(10),
          SecondaryButtonWithIcon(
            onPressed: () {
              context.router.push(EnterEmailRoute());
            },
            label: "Email Verification",
            icon: tCamera2,
            backgroundColor: MaterialStateProperty.all<Color>(
              tPrimaryColor,
            ),
          ),
          SecondaryButtonWithIcon(
            onPressed: () {
              context.router.push(EnterPhoneRoute());
            },
            label: "Phone Verification",
            icon: tGalleryImport,
            backgroundColor: MaterialStateProperty.all<Color>(
              tPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
