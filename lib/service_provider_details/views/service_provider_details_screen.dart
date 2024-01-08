import "package:service_masters/common/barrels.dart";

@RoutePage()
class ServiceProviderDetailsScreen extends StatefulWidget {
  const ServiceProviderDetailsScreen({super.key});

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
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(
                innerBoxIsScrolled ? "Akwasi Twumasi" : "",
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
                    // toast("Share ${widget.name} to your friends");
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
                      "Asante Twumasi",
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      "Plumber",
                      style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const Gap(5),
                        Text(
                          "4.5",
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(5),
                        Text(
                          "(100)",
                          style: context.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                      subtitle: "Kumasi",
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
                      subtitle: "English, Twi, Fante",
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
                              style: context.textTheme.bodyMedium!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
              SizedBox(
                height: context.screenHeight / 5,
                child: Column(
                  children: [
                    HeadingWidget(
                      heading: "Reviews and Rating",
                      onPressed: () {
                        context.router.push(const ReviewsAndRatingRoute());
                      },
                    ),
                    Expanded(
                      child: PageView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ReviewAndRatingWidget(
                            textTheme: context.textTheme,
                            reviewText: reviews[index % reviews.length],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              HeadingWidget(
                heading: "Portfolio",
                onPressed: () {
                  context.router.push(const ServiceProviderPortfolioRoute());
                },
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: List.generate(
                    imageAssets.length,
                    (index) => SizedBox(
                      height: 80,
                      width: (context.screenWidth / 2) - 15,
                      child: Image.asset(
                        imageAssets[index % imageAssets.length],
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  HeadingWidget(
                    heading: "You might also like",
                    onPressed: () {
                      context.router.pop();
                    },
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
                      },
                    ),
                  ),
                  const Gap(100),
                ],
              ),
            ],
          ),
        ),
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
                  context.router.push(const AllChatsRoute());
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
                  context.router.push(const BookServiceProviderRoute());
                  logger.d("Book Service Provider");
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Book Service",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
