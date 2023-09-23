import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/icons/icon_button.dart';
import 'package:home_service_app/src/app/components/icons/text_with_bg.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/text.dart';
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                leading: IconWithBg(icon: LineIcons.toolbox),
                title: PrimaryTextWidget(
                    text: "Electrical Repairs",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
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
            Divider(
              thickness: 1,
            ),
            PrimaryTextWidget(
                text: tDescription, fontWeight: FontWeight.w600, fontSize: 16),
            SizedBox(
              height: 10,
            ),
            Text(tServiceDescription),
            Divider(
              thickness: 1,
            ),
            Row(
              children: [
                TitleWithDescriptionWidget(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Time"), Text("15:00pm")],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
