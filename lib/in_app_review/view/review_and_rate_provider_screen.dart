import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewAndRateProviderScreen extends StatefulWidget {
  const ReviewAndRateProviderScreen({super.key});

  @override
  State<ReviewAndRateProviderScreen> createState() =>
      _ReviewAndRateProviderScreenState();
}

class _ReviewAndRateProviderScreenState
    extends State<ReviewAndRateProviderScreen> {
  final List<String> review = [
    "Plumbing",
    "Electrical",
    "Carpentry",
    "Painting",
    "Cleaning",
    "Cleaning",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Rate Provider"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Gap(10),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
              tPic,
            ),
          ),
          const Gap(10),
          Center(
            child: Text(
              "Provider Name",
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
          Center(
            child: Text(
              "Electrical Engineer",
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          const Gap(10),
          Center(
            child: SizedBox(
              child: Wrap(
                spacing: 5.0,
                runSpacing: 2.0,
                children: List.generate(
                  review.length,
                  (index) => Chip(
                    label: Text(
                      review[index % review.length],
                      style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: BorderSide.none,
                    padding: const EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
          ),
          const Gap(10),
          Center(
            child: RatingBar.builder(
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
          ),
          const Gap(20),
          const Text("Write a review (Optional)"),
          const Gap(5),
          SizedBox(
            height: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              onTap: () {},
              hintText: "Type here...",
              // verticalContentPadding: double.infinity,
              expand: true,
            ),
          ),
          // const Gap(20),
        ],
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
              "Send Review",
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
