import "package:home_service_app/common/barrels.dart";

class BookedServiceScreen extends StatelessWidget {
  const BookedServiceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tPrimaryColor,
        title: const PrimaryTextWidget(
          text: "Booked Service",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: IconWithRoundBg(icon: CustomIcons.work),
              title: PrimaryTextWidget(
                text: "Electrical Repairs",
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              subtitle: Text("Monday, 15th January - 15:00pm"),
              trailing: Column(
                children: [
                  PrimaryTextWidget(
                    text: "GHC100.00",
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    fontColor: tPrimaryColor,
                  ),
                  TextWithBg(bgColor: tPrimaryColor, label: "Done"),
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
                  const Divider(
                    thickness: 1,
                  ),
                  const Row(
                    children: [
                      TitleWithDescriptionWidget(
                        title: "Date",
                        description: "Monday, 15th January",
                      ),
                      Spacer(),
                      TitleWithDescriptionWidget(
                        title: "Time",
                        description: "15:00pm",
                      ),
                      Spacer(),
                    ],
                  ),
                  const Gap(10),
                  const TitleWithDescriptionWidget(
                    title: "Address",
                    description: "SE 995 Suame-Kumasi",
                  ),
                  const Gap(10),
                  const TitleWithDescriptionWidget(
                    title: "Total Cost",
                    description: "GHC105.00",
                  ),
                  const Gap(10),
                  const Divider(
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: ProfileImageWidget(
                      imageString: tPic,
                      height: 50,
                      width: 50,
                    ),
                    title: PrimaryTextWidget(
                      text: "Jane Doe",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    subtitle: Text("Professional Electrician"),
                    trailing: Column(
                      children: [
                        PrimaryTextWidget(
                          text: "Rating",
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          fontColor: tBlackColor,
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
                    onPressed: () {},
                  ),
                  const Gap(10),
                  PrimaryButton(
                    label: "Lodge a complaint",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const LodgeComplaintScreen(),
                        ),
                      );
                    },
                    // backgroundColor: tWhiteColor,
                    // borderColor: tWarningColor,
                    // fontColor: tWarningColor,
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
