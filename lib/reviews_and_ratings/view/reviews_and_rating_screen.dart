import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "package:home_service_app/common/barrels.dart";

class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews and Ratings"),
      ),
      body: Column(
        children: [
          Text(
            "4.5",
            style: context.textTheme.displayLarge!.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
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
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.3),
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
                                style: context.textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "A day ago",
                                style: context.textTheme.bodyMedium!.copyWith(
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
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        softWrap: true,
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
