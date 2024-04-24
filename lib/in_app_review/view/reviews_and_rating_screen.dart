import "package:flutter/material.dart";
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
              Container(
                width: context.screenWidth,
                height: context.screenHeight / 3,
                padding: const EdgeInsets.all(8),
                child: Row(
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
                    Gap(15),
                    Column(
                      children: [
                        Flexible(
                          child: Stack(
                            children: [
                              Container(
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Container(
                                height: 10,
                                width: context.screenWidth * (1.0 / 5),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        // Flexible(
                        //   child: Stack(
                        //     children: [
                        //       Container(
                        //         height: 10,
                        //         decoration: BoxDecoration(
                        //           color: Colors.yellow,
                        //           borderRadius: BorderRadius.circular(5),
                        //         ),
                        //       ),
                        //       Container(
                        //         height: 10,
                        //         width: context.screenWidth,
                        //         decoration: BoxDecoration(
                        //           color: Colors.green,
                        //           borderRadius: BorderRadius.circular(5),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
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
