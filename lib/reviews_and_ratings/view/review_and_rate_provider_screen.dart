import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/components/custom_textfield.dart";

@RoutePage()
class ReviewAndRateProviderScreen extends StatelessWidget {
  const ReviewAndRateProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rate Provider"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 100,
            ),
            const Gap(10),
            Text(
              "Provider Name",
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            Text(
              "Electrical Engineer",
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              allowHalfRating: true,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: logger.d,
            ),
            const Spacer(),
            SizedBox(
              height: 200,
              child: CustomTextField(
                controller: TextEditingController(),
                onTap: () {},
                hintText: "",
                expand: true,
              ),
            ),
            const Spacer(flex: 2),
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
