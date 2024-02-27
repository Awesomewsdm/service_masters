import "package:service_masters/common/barrels.dart";

class ServiceProviderCardWidget extends StatelessWidget {
  const ServiceProviderCardWidget({
    required this.image,
    required this.rating,
    required this.totalJobs,
    required this.rate,
    required this.providerName,
    required this.providerExpertise,
    super.key,
  });
  final String image;
  final String rating;
  final String totalJobs;
  final String rate;
  final String providerName;
  final String providerExpertise;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(const ServiceProviderDetailsRoute()),
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: tPrimaryColor.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 150,
        width: context.screenWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: 140,
                height: double.maxFinite,
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              providerName,
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              providerExpertise,
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          CustomIcons.bookmark,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingInfoWidget(
                          rating: rating,
                        ),
                        TotalJobsInfo(
                          totalJobs: totalJobs,
                        ),
                        RateInfoWidget(
                          rate: rate,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingInfoWidget extends StatelessWidget {
  const RatingInfoWidget({
    required this.rating,
    super.key,
  });
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Rating"),
        Row(
          children: [
            const Icon(
              CustomIcons.star,
              color: Colors.amber,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(rating),
          ],
        ),
      ],
    );
  }
}

class RateInfoWidget extends StatelessWidget {
  const RateInfoWidget({
    required this.rate,
    super.key,
  });
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [const Text("Rate"), Text("$rate/hr")],
    );
  }
}

class TotalJobsInfo extends StatelessWidget {
  const TotalJobsInfo({
    required this.totalJobs,
    super.key,
  });
  final String totalJobs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Total Jobs"),
        Text(totalJobs),
      ],
    );
  }
}
