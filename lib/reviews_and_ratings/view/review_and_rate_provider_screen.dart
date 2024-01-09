import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewAndRateProviderScreen extends StatelessWidget {
  const ReviewAndRateProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 50,
          ),
          const Text("Provider Name"),
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
        ],
      ),
    );
  }
}
