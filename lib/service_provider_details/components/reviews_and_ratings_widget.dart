import "package:intl/intl.dart";
import "package:service_masters/common/barrels.dart";

class ReviewsAndRatingsWidget extends StatelessWidget {
  const ReviewsAndRatingsWidget({
    required this.serviceProviderReviews,
    super.key,
  });

  final List<ServiceProviderReview> serviceProviderReviews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight / 5,
      child: Column(
        children: [
          HeadingWidget(
            heading: "Reviews and Rating",
            onPressed: () {
              context.router.push(
                ReviewsAndRatingRoute(
                  serviceProviderReviews: serviceProviderReviews,
                ),
              );
            },
          ),
          Expanded(
            child: PageView.builder(
              itemCount: serviceProviderReviews.length,
              itemBuilder: (context, index) {
                final review = serviceProviderReviews[index];

                final date = (review.createdAt as Timestamp).toDate();
                final formattedDate = DateFormat("yyyy-MM-dd").format(date);

                return ReviewAndRatingWidget(
                  textTheme: context.textTheme,
                  comment: review.comment,
                  reviewerName: review.reviewerName,
                  reviewDate: formattedDate,
                  reviewerPhoto: review.reviewerPhoto,
                  rating: review.rating,
                  borderColor: tPrimaryColor.withOpacity(0.3),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
