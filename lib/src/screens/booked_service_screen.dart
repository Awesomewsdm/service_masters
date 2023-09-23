import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/icons/icon_button.dart';
import 'package:home_service_app/src/app/components/icons/text_with_bg.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/components/text/title_with_description_widget.dart';
import 'package:home_service_app/src/app/components/user_profile/profile_image.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:line_icons/line_icons.dart';

class BookedServiceScreen extends StatelessWidget {
  const BookedServiceScreen({super.key});

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
                leading: IconWithBg(icon: LineIcons.toolbox),
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
                )),
            const Divider(
              thickness: 1,
            ),
            const TitleWithDescriptionWidget(
              title: tDescription,
              description: tServiceDescription,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const Row(
              children: [
                TitleWithDescriptionWidget(
                  title: "Date",
                  description: "Monday, 15th January",
                ),
                SizedBox(
                  width: 50,
                ),
                TitleWithDescriptionWidget(
                  title: "Time",
                  description: "15:00pm",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleWithDescriptionWidget(
              title: "Address",
              description: "SE 995 Suame-Kumasi",
            ),
            const SizedBox(
              height: 10,
            ),
            const TitleWithDescriptionWidget(
              title: "Total Cost",
              description: "GHC105.00",
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const ListTile(
                leading: ProfileImageWidget(
                    imageString: tPic, height: 50, width: 50),
                title: PrimaryTextWidget(
                    text: "Jane Doe",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                subtitle: Text("Proffessional Electrician"),
                trailing: Column(
                  children: [
                    PrimaryTextWidget(
                      text: "Rating",
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      fontColor: tBlackColor,
                    ),
                  ],
                )),
            const Divider(
              thickness: 1,
            ),
            const Spacer(),
            PrimaryButton(
              label: "Mark as completed",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(
              label: "Lodge a complaint",
              onTap: () {},
              backgroundColor: tWhiteColor,
              borderColor: tWarningColor,
              fontColor: tWarningColor,
            ),
          ],
        ),
      ),
    );
  }
}
