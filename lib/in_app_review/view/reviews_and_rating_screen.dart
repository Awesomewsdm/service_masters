import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews and Ratings"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.screenHeight,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
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
                              style: context.textTheme.displaySmall!.copyWith(
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
                  const Gap(10),
                  const Column(
                    children: [
                      Text("data"),
                      Text("data"),
                    ],
                  )
                ],
              ),
              const Row(
                children: [
                  Text("Excellent"),
                  SizedBox(
                    width: 500,
                    child: LinearProgressIndicator(
                      value: 1.0 / 5,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                ],
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
                      textTheme: context.textTheme,
                      comment: "comment",
                      reviewerName: "reviewerName",
                      reviewDate: "reviewDate",
                      reviewerPhoto: tPic,
                      rating: 4.0,
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
