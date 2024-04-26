import "package:intl/intl.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({
    this.serviceProviderReviews,
    super.key,
  });

  final List<ServiceProviderReview>? serviceProviderReviews;

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
                                serviceProviderReviews!
                                        .map((e) => e.rating)
                                        .reduce((a, b) => a + b) /
                                    serviceProviderReviews!.length,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Text(
                                    (serviceProviderReviews!
                                                .map((e) => e.rating)
                                                .reduce((a, b) => a + b) /
                                            serviceProviderReviews!.length)
                                        .toStringAsFixed(1),
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
                              "Based on ${serviceProviderReviews!.length} reviews",
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
                            Text("Excellent ()"),
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
                  itemCount: serviceProviderReviews!.length,
                  itemBuilder: (context, index) {
                    final review = serviceProviderReviews![index];
                    final date = (review.createdAt as Timestamp).toDate();
                    final formattedDate = DateFormat("yyyy-MM-dd").format(date);

                    return ReviewAndRatingWidget(
                      borderColor: Colors.white,
                      textTheme: context.textTheme,
                      comment: review.comment,
                      reviewerName: review.reviewerName,
                      reviewDate: formattedDate,
                      reviewerPhoto: review.reviewerPhoto,
                      rating: review.rating,
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
