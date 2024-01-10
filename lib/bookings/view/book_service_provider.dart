import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends StatelessWidget {
  const BookServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Service"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomTextField(
                  hintText: "Input description",
                  expand: true,
                ),
              ),
            ),
            const Gap(12),
            // Add a button to show the date picker
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.transparent,
        child: SizedBox(
          width: context.screenWidth,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: tPrimaryColor,
            onPressed: () {
              context.router.push(const PaymentRoute());
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Book Service",
              style: context.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
