import "package:service_masters/common/barrels.dart";

class ReviewAndRatingWidget extends StatelessWidget {
  const ReviewAndRatingWidget({
    required this.textTheme,
    required this.comment,
    required this.reviewerName,
    required this.reviewDate,
    required this.reviewerPhoto,
    super.key,
  });

  final TextTheme textTheme;
  final String comment;
  final String reviewerName;
  final String reviewDate;
  final String reviewerPhoto;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: tPrimaryColor.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(reviewerPhoto),
              ),
              const Gap(5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewerName,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    reviewDate,
                    style: textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ],
          ),
          Text(
            comment,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
