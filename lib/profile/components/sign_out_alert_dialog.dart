import "package:service_masters/common/barrels.dart";

class SignOutDialog extends StatelessWidget {
  const SignOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        "Sign Out?",
        style: context.textTheme.titleLarge!.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: Text(
        "Are you sure you want to sign out of the app?",
        style: context.textTheme.titleSmall!.copyWith(
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PrimaryButton(
                onPressed: () {
                  context.read<AppBloc>().add(
                        const AppLogoutRequested(),
                      );
                },
                label: "Confirm",
                labelColor: context.theme.primaryColor,
                backgroundColor: const Color(0xFFFFFFFF),
              ),
            ),
            const Gap(10),
            Expanded(
              child: PrimaryButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                labelColor: context.theme.scaffoldBackgroundColor,
                label: "Cancel",
                backgroundColor: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// To use the dialog:
// showDialog<void>(
//   context: context,
//   builder: (BuildContext context) {
//     return SignOutDialog();
//   },
// );
