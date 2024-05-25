import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_provider_details/components/bottom_buttons_widget.dart";
import "package:service_masters/service_provider_details/components/service_provider_portfolio_widget.dart";
import "package:service_masters/service_provider_details/components/skills_and_expertise_widget.dart";

@RoutePage()
class ServiceProviderDetailsScreen extends StatefulWidget {
  const ServiceProviderDetailsScreen({
    required this.serviceProvider,
    required this.relatedServiceProviders,
    required this.serviceProviderReviews,
    required this.serviceProviderPortfolio,
    super.key,
  });

  final ServiceProvider serviceProvider;
  final List<ServiceProviderReview> serviceProviderReviews;
  final List<ServiceProviderPortfolio> serviceProviderPortfolio;
  final List<ServiceProvider> relatedServiceProviders;

  @override
  State<ServiceProviderDetailsScreen> createState() =>
      _ServiceProviderDetailsScreenState();
}

class _ServiceProviderDetailsScreenState
    extends State<ServiceProviderDetailsScreen> {
  final List<String> imageAssets = [
    tLaundry,
    tTeachingServices,
    tCleaningServices,
    tACRepair,
  ];

  List<dynamic> randomImages = [
    "https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
    "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",
  ];

  final PageController pageController = PageController();
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    final allRelatedServiceProviders = widget.relatedServiceProviders.where(
      (provider) => provider != widget.serviceProvider,
    );
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(
                innerBoxIsScrolled
                    ? "${widget.serviceProvider.firstName} ${widget.serviceProvider.lastName}"
                    : "",
                style: context.textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: tPrimaryColor,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: pageController,
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        return Image.asset(tPic, fit: BoxFit.cover);
                      },
                      onPageChanged: (value) {
                        setState(() => currentIndexPage = value);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: AnimatedSmoothIndicator(
                        activeIndex: currentIndexPage,
                        count: 3,
                        effect: const WormEffect(dotHeight: 5.0),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Share.share("check out my website https://example.com");
                  },
                  icon: const Icon(
                    CustomIcons.share,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CustomIcons.bookmark,
                  ),
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.serviceProvider.firstName} ${widget.serviceProvider.lastName}",
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      widget.serviceProvider.profession.toString(),
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        const Gap(5),
                        Text(
                          Utils.calculateAverageRating(
                            widget.serviceProviderReviews,
                          ),
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          "(100)",
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(15),
                        for (int i = 0; i < randomImages.length; i++)
                          Align(
                            widthFactor: 0.5,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage(randomImages[i] as String),
                            ),
                          ),
                      ],
                    ),
                    HeadingWidget(
                      heading: "About",
                      horizontalPadding: 0.0,
                      onPressed: () {},
                      showSeeAll: false,
                    ),
                    ReadMoreText(
                      widget.serviceProvider.about,
                      style: context.textTheme.bodyMedium,
                      trimLines: 3,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Read more",
                      trimExpandedText: "Read less",
                      moreStyle: context.textTheme.bodyMedium!.copyWith(
                        color: tPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      lessStyle: context.textTheme.bodyMedium!.copyWith(
                        color: tPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(18),
                    ProviderUniqueInfoWidget(
                      textTheme: context.textTheme,
                      title: "Location",
                      subtitle: widget.serviceProvider.location,
                      icon: CustomIcons.location,
                    ),
                    const Gap(18),
                    ProviderUniqueInfoWidget(
                      textTheme: context.textTheme,
                      title: "Member Since",
                      subtitle: "August 2021",
                      icon: CustomIcons.user1,
                    ),
                    const Gap(18),
                    ProviderUniqueInfoWidget(
                      textTheme: context.textTheme,
                      title: "Languages Spoken",
                      subtitle:
                          widget.serviceProvider.languagesSpoken.join(", "),
                      icon: CustomIcons.comments,
                    ),
                    const Gap(18),
                    ProviderUniqueInfoWidget(
                      textTheme: context.textTheme,
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
                    SkillsAndExpertiseWidget(widget: widget),
                  ],
                ),
              ),
              ReviewsAndRatingsWidget(
                serviceProviderReviews: widget.serviceProviderReviews,
              ),
              HeadingWidget(
                heading: "Portfolio",
                onPressed: () {
                  context.router.push(const ServiceProviderPortfolioRoute());
                },
              ),
              ServiceProviderPortfolioWidget(imageAssets: imageAssets),
              Column(
                children: [
                  HeadingWidget(
                    heading: "You might also like",
                    onPressed: () {
                      context.router.maybePop();
                    },
                  ),
                  RelatedServiceProviders(
                    allRelatedServiceProviders: allRelatedServiceProviders,
                    widget: widget,
                  ),
                  const Gap(100),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: BottomButtonsWidget(widget: widget),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
