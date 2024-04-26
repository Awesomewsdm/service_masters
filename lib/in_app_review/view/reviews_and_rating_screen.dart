import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({
    required this.serviceProviderRatings,
    super.key,
  });

  final List<ServiceProvider>? serviceProviderRatings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews and Ratings"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: context.screenWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomPaint(
                              painter: CircleProgress(
                                4.0,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Text(
                                    "4.0",
                                    style: context.textTheme.displaySmall!
                                        .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Text(
                              "Based on 10 reviews",
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(10),
                    Expanded(
                      child: SizedBox(
                        width: context.screenWidth,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Excellent"),
                            LinearProgressIndicator(
                              value: 4.5 / 5,
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.green),
                            ),
                            Gap(10),
                            Text("Very Good"),
                            LinearProgressIndicator(
                              value: 4.0 / 5,
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.green),
                            ),
                            Gap(10),
                            Text("Good"),
                            LinearProgressIndicator(
                              value: 3.0 / 5,
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.green),
                            ),
                            Gap(10),
                            Text("Fair"),
                            LinearProgressIndicator(
                              value: 2.0 / 5,
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.orange),
                            ),
                            Gap(10),
                            Text("Poor"),
                            LinearProgressIndicator(
                              value: 1.0 / 5,
                              backgroundColor: Colors.grey,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 15,
                color: Colors.grey.shade200,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ReviewAndRatingWidget(
                      borderColor: Colors.white,
                      textTheme: context.textTheme,
                      comment:
                          "Excellent service. I am very happy with the service. I will recommend this service to my friends and family. Thank you.",
                      reviewerName: "Yvette Cooper",
                      reviewDate: "12th May 2021",
                      reviewerPhoto: tPic,
                      rating: 3.5,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
