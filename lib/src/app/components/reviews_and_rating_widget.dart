import 'package:home_service_app/src/app/barrels.dart';

class ReviewAndRatingWidget extends StatelessWidget {
  const ReviewAndRatingWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(tPic),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tobey Marguire",
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Text("A day ago"),
                ],
              ),
              const Spacer(
                flex: 15,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ],
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            "Sed euismod, nisi quis aliquet aliquam,"
            "Sed euismod, nisi quis aliquet aliquam,",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
