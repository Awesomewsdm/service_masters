import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/components/custom_textfield.dart";

@RoutePage()
class LodgeComplaintScreen extends StatelessWidget {
  const LodgeComplaintScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input name",
                  ),
                  const Gap(12),
                  Text(
                    "Email Address",
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input email address",
                  ),
                  const Gap(12),
                  Text(
                    "Subject",
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const CustomTextField(
                    hintText: "Input subject",
                  ),
                  const Gap(12),
                  Text(
                    "Description",
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  const SizedBox(
                    height: 200,
                    child: CustomTextField(
                      hintText: "Input description",
                      expand: true,
                    ),
                  ),
                ],
              ),
            ),
            PrimaryButton(
              label: "Submit compliant",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
