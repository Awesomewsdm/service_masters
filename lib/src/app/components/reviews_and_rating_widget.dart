import 'package:home_service_app/src/app/barrels.dart';

class ReviewAndRatingWidget extends StatelessWidget {
  const ReviewAndRatingWidget({
    super.key,
    required this.textTheme,
    required this.reviewText,
  });

  final TextTheme textTheme;
  final String reviewText;

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
              const CircleAvatar(
                backgroundImage: AssetImage(tPic),
              ),
              const Gap(5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tobey Marguire",
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "A day ago",
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
            reviewText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
