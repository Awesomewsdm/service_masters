import 'package:home_service_app/common/barrels.dart';

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
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
            Divider(
              thickness: 1,
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  TitleWithDescriptionWidget(
                    title: tDescription,
                    description: tServiceDescription,
                  ),
                  Gap(10),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
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
                  Gap(10),
                  TitleWithDescriptionWidget(
                    title: "Address",
                    description: "SE 995 Suame-Kumasi",
                  ),
                  Gap(10),
                  TitleWithDescriptionWidget(
                    title: "Total Cost",
                    description: "GHC105.00",
                  ),
                  Gap(10),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
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
                  Divider(
                    thickness: 1,
                  ),
                  Gap(80),
                  PrimaryButton(
                    label: "Mark as completed",
                    onPressed: () {},
                  ),
                  Gap(10),
                  PrimaryButton(
                    label: "Lodge a complaint",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
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
