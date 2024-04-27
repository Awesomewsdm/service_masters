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
                  "Add some description",
                  style: context.textTheme.bodyLarge!
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
                Text(
                  "Add photo or video (optional)",
                  style: context.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddPhotoOrVideoWidget(
                      onTap: () {},
                    ),
                    const Spacer(),
                    AddPhotoOrVideoWidget(
                      onTap: () {},
                    ),
                    const Spacer(),
                    AddPhotoOrVideoWidget(
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: PrimaryBottomButton(
        label: "Book Service",
        onPressed: () {
          context.router.push(const PaymentRoute());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
