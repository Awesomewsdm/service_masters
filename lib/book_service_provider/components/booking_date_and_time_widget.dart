import "package:service_masters/common/barrels.dart";

class BookingDateAndTime extends StatelessWidget {
  const BookingDateAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateTimeCubit, DateTimeState>(
      builder: (context, dateTimeState) {
        return Row(
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
                      onChanged: (date) {
                        context.read<BookServiceProviderBloc>().add(
                              BookServiceProviderEvent.serviceDate(
                                date as DateTime,
                              ),
                            );
                      },
                      controller: TextEditingController(
                        text: dateTimeState.selectedDate
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
                        text: dateTimeState.selectedTime.format(context),
                      ),
                      onChanged: (time) {
                        context.read<BookServiceProviderBloc>().add(
                              BookServiceProviderEvent.serviceTime(
                                time,
                              ),
                            );
                      },
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
        );
      },
    );
  }
}
