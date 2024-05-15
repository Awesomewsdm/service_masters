import "package:service_masters/common/barrels.dart";

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(tAlreadyHaveAnAccount),
        InkWell(
          onTap: () {
            context.router.push(const SignInRoute());
          },
          child: const Text(
            tLogin,
            style: TextStyle(color: tPrimaryColor),
          ),
        ),
      ],
    );
  }
}
