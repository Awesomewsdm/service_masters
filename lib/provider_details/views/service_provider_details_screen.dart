import 'package:home_service_app/src/app/barrels.dart';

class ServiceProviderDetailsScreen extends StatelessWidget {
  ServiceProviderDetailsScreen({super.key});
  final List<String> imageAssets = [
    tLaundry,
    tTeachingServices,
    tCleaningServices,
    tACRepair
  ];

  final List<String> reviews = [
    "Excellent service! The provider was very professional and completed the job with precision.",
    "Malina Airline is the best! I've used their services multiple times, and I'm always satisfied.",
    "Prompt and efficient. The service provider arrived on time and fixed the issue quickly.",
    "Highly recommend! Courteous and skilled professionals. Will definitely use their services again.",
    "Great experience with Malina Airline. The team is reliable and provides top-notch service.",
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: context.screenHeight / 3,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Malina Airline"),
              background: Image.asset(
                tPic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  HeadingWidget(
                    heading: "About",
                    horizontalPadding: 0.0,
                    onPressed: () {},
                  ),
                  ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl.",
                    style: textTheme.bodyMedium,
                    trimLines: 3,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle:
                        textTheme.bodyMedium!.copyWith(color: tPrimaryColor),
                  ),
                  Container(
                    child: Row(children: [
                      const Icon(CustomIcons.marker),
                      Column(
                        children: [
                          Text(
                            "Location",
                            style: textTheme.bodyMedium,
                          ),
                          const Text("Kumasi"),
                        ],
                      )
                    ]),
                  ),
                  ListTile(
                    minVerticalPadding: 10,
                    horizontalTitleGap: 0,
                    leading: const Icon(Icons.location_on),
                    trailing: const Text(""),
                    title: Column(
                      children: [
                        Text(
                          "Location",
                          style: textTheme.bodyMedium,
                        ),
                        const Text("Kumasi"),
                      ],
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.person),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: context.screenHeight / 5,
              child: Column(
                children: [
                  HeadingWidget(
                    heading: "Reviews and Rating",
                    onPressed: () {},
                  ),
                  Expanded(
                    child: PageView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ReviewAndRatingWidget(
                          textTheme: textTheme,
                          reviewText: reviews[index % reviews.length],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: HeadingWidget(
              heading: "Portfolio",
              onPressed: () {},
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 8.0,
              mainAxisExtent: 100,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SizedBox(
                  height: 40,
                  child: Image.asset(
                    imageAssets[index % imageAssets.length],
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                );
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
