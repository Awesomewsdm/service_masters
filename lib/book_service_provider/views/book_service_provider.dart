import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends StatelessWidget {
  const BookServiceProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: "Book Service".text,
      ),
      body: BlocBuilder<DateTimeCubit, DateTimeState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 10,
                      child: SizedBox(
                        width: context.screenWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: context.textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Gap(10),
                            CustomTextField(
                              readOnly: true,
                              onTap: () => selectDate(context),
                              controller: TextEditingController(
                                text: state.selectedDate
                                    .toLocal()
                                    .toString()
                                    .split(" ")[0],
                              ),
                              hintText: "Select Date",
                              suffixIcon: const Icon(CustomIcons.calendar),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Flexible(
                      flex: 10,
                      child: SizedBox(
                        width: context.screenWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: context.textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const Gap(10),
                            CustomTextField(
                              controller: TextEditingController(
                                text: state.selectedTime.format(context),
                              ),
                              readOnly: true,
                              onTap: () => selectTime(context),
                              hintText: "",
                              suffixIcon: const Icon(CustomIcons.timeCircle),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const Gap(10),
                Text(
                  "Address",
                  style: context.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                CustomTextField(
                  hintText: "Your Location Address",
                  suffixIcon: IconButton(
                    icon: const Icon(
                      CustomIcons.location,
                      color: tPrimaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Gap(12),

                Text(
                  "Description",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                const SizedBox(
                  height: 100,
                  child: CustomTextField(
                    hintText: "Input description",
                    expand: true,
                  ),
                ),
                const Gap(12),
                // Add a button to show the date picker
              ],
            ),
          );
        },
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.transparent,
        child: SizedBox(
          width: context.screenWidth,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: tPrimaryColor,
            onPressed: () {
              context.router.push(const PaymentRoute());
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
