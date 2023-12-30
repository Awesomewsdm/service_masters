import 'package:home_service_app/common/barrels.dart';
import 'package:home_service_app/reviews_and_ratings/view/reviews_and_rating_screen.dart';
import 'package:home_service_app/service_provider_details/views/service_provider_portfolio.dart';

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

  final List<String> skillsAndExpertise = [
    "Plumbing",
    "Electrical",
    "Carpentry",
    "Painting",
    "Cleaning",
    "Landscaping",
    "HVAC",
    "Appliance Repair Hell Yea",
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
              title: const Text("Asante Twumasi"),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingWidget(
                    heading: "About",
                    horizontalPadding: 0.0,
                    onPressed: () {},
                    showSeeAll: false,
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
                    moreStyle: textTheme.bodyMedium!.copyWith(
                        color: tPrimaryColor, fontWeight: FontWeight.bold),
                    lessStyle: textTheme.bodyMedium!.copyWith(
                        color: tPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                  const Gap(18),
                  ProviderUniqueInfoWidget(
                    textTheme: textTheme,
                    title: "Location",
                    subtitle: "Kumasi",
                    icon: CustomIcons.location,
                  ),
                  const Gap(18),
                  ProviderUniqueInfoWidget(
                    textTheme: textTheme,
                    title: "Member Since",
                    subtitle: "August 2021",
                    icon: CustomIcons.user1,
                  ),
                  const Gap(18),
                  ProviderUniqueInfoWidget(
                    textTheme: textTheme,
                    title: "Languages Spoken",
                    subtitle: "English, Twi, Fante",
                    icon: CustomIcons.comments,
                  ),
                  const Gap(18),
                  ProviderUniqueInfoWidget(
                    textTheme: textTheme,
                    title: "Last Active",
                    subtitle: "2 hours ago",
                    icon: CustomIcons.eye,
                  ),
                  const Gap(18),
                  Text(
                    "Skills and Expertise",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.georama(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 2.0,
                      children: List.generate(
                        skillsAndExpertise.length,
                        (index) => Chip(
                          label: Text(
                              skillsAndExpertise[
                                  index % skillsAndExpertise.length],
                              style: textTheme.bodyMedium!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              )),
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          side: BorderSide.none,
                          padding: const EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReviewsAndRatingScreen(),
                        ),
                      );
                    },
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ServiceProviderPortfolio(),
                  ),
                );
              },
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                HeadingWidget(
                  heading: "You might also like",
                  onPressed: () {},
                ),
                SizedBox(
                  height: context.screenHeight / 3.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProviderCardWidget(
                        image: tCleaningServices,
                      );
                      //  ProviderCard(
                      //   textTheme: textTheme,
                      //   imageAsset: imageAssets[index % imageAssets.length],
                      //   title: "Asante Twumasi",
                      //   subtitle: "Plumber",
                      //   rating: 4.5,
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) =>
                      //              ServiceProviderDetailsScreen(),
                      //       ),
                      //     );
                      //   },
                      // );
                    },
                  ),
                ),
                const Gap(100),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllChatsScreen(),
                    ),
                  );
                },
                backgroundColor: tPrimaryColor,
                elevation: 0,
                child: const Icon(CustomIcons.chat, color: Colors.white),
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 4,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: tPrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookServiceProviderScreen(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Book Service",
                    style: textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
