import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookedServiceScreen extends StatelessWidget {
  const BookedServiceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Booked Service",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const IconWithRoundBg(icon: CustomIcons.work),
              title: Text(
                "Electrical Repairs",
                style: context.textTheme.bodyLarge,
              ),
              subtitle: const Text("Monday, 15th January - 15:00pm"),
              trailing: Column(
                children: [
                  Text(
                    "GHC100.00",
                    style: context.textTheme.titleSmall,
                  ),
                  const TextWithBg(bgColor: tPrimaryColor, label: "Done"),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const TitleWithDescriptionWidget(
                    title: tDescription,
                    description: tServiceDescription,
                  ),
                  const Gap(10),
                  const ImageFilesWidget(
                    imagePaths: [tPic, tACRepair, tCleaningServices],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithDescriptionWidget(
                              title: "Date",
                              description: "Monday, 15th January",
                            ),
                            TitleWithDescriptionWidget(
                              title: "Time",
                              description: "15:00pm",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithDescriptionWidget(
                              title: "Address",
                              description: "SE 995 Suame-Kumasi",
                            ),
                            TitleWithDescriptionWidget(
                              title: "Total Cost",
                              description: "GHC105.00",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  const Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: const ProfileImageWidget(
                      imageString: tPic,
                      height: 50,
                      width: 50,
                    ),
                    title: Text(
                      "Jane Doe",
                      style: context.textTheme.bodyLarge,
                    ),
                    subtitle: const Text("Professional Electrician"),
                    trailing: Column(
                      children: [
                        Text(
                          "Rating",
                          style: context.textTheme.titleSmall,
                        ),
                        const Row(
                          children: [Icon(Icons.star), Text("4.5")],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const Gap(80),
                  PrimaryButton(
                    label: "Mark as completed",
                    onPressed: () {
                      context.router.push(ReviewsAndRatingRoute());
                    },
                  ),
                  const Gap(10),
                  PrimaryButton(
                    label: "Lodge a complaint",
                    backgroundColor: Colors.white,
                    borderColor: Colors.red,
                    labelColor: Colors.red,
                    onPressed: () {
                      context.router.push(LodgeComplaintRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
