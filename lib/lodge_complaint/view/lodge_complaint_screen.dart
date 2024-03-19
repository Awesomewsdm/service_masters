import "package:service_masters/common/barrels.dart";

@RoutePage()
class LodgeComplaintScreen extends HookWidget {
  const LodgeComplaintScreen({
    this.serviceProvider,
    super.key,
  });
  final ServiceProvider? serviceProvider;

  @override
  Widget build(BuildContext context) {
    final subjectController = useTextEditingController();
    final descriptionController = useTextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  CustomTextField(
                    hintText: "Input subject",
                    controller: subjectController,
                  ),
                  const Gap(12),
                  Text(
                    "Description",
                    style: context.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Gap(4),
                  SizedBox(
                    height: 200,
                    child: CustomTextField(
                      hintText: "Input description",
                      controller: descriptionController,
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
