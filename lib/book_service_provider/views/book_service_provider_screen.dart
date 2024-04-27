import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends StatelessWidget {
  const BookServiceProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: "Book Service".text,
            centerTitle: true,
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
                                  fillColor: backgroundColor1,
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
                                  fillColor: backgroundColor1,
                                  controller: TextEditingController(
                                    text: state.selectedTime.format(context),
                                  ),
                                  readOnly: true,
                                  onTap: () => selectTime(context),
                                  hintText: "",
                                  suffixIcon:
                                      const Icon(CustomIcons.timeCircle),
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
                    const Text(
                      "Enter the address where you need the service.",
                    ),
                    const Gap(4),
                    CustomTextField(
                      fillColor: backgroundColor1,
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
                    const Text(
                      "Describe the service you need in detail. The more details you provide, the better the service provider can understand your needs.",
                    ),
                    const Gap(4),
                    const SizedBox(
                      height: 100,
                      child: CustomTextField(
                        fillColor: backgroundColor1,
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
                    const Text(
                      "Add photos or videos to help the service provider understand your needs better.",
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
