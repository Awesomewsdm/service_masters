import 'package:home_service_app/common/barrels.dart';

class LodgeComplaintScreen extends StatelessWidget {
  const LodgeComplaintScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const Text("Lodge Complaint"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Name",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input name",
                  ),
                  const Gap(12),
                  Text(
                    "Email Address",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input email address",
                  ),
                  const Gap(12),
                  Text(
                    "Subject",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input subject",
                  ),
                  const Gap(12),
                  Text(
                    "Description",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input description",
                  ),
                ],
              ),
            ),
            PrimaryButton(
              label: "Submit compliant",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.verticalContentPadding = 8.0});
  final String hintText;
  final double verticalContentPadding;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextField(
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textTheme.bodyLarge!.copyWith(
          color: const Color.fromARGB(255, 132, 133, 137),
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: tPrimaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalContentPadding, horizontal: 16.0),
      ),
    );
  }
}
