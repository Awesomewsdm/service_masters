import "package:service_masters/common/barrels.dart";

class BookingDateAndTime extends StatelessWidget {
  BookingDateAndTime({
    super.key,
  });
  final timeController = TextEditingController();
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                  onTap: () =>
                      dateTimeCubit.selectDate(context, dateController),
                  controller: dateController,
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
                  controller: timeController,
                  readOnly: true,
                  onTap: () =>
                      dateTimeCubit.selectTime(context, timeController),
                  hintText: "Select time",
                  suffixIcon: const Icon(CustomIcons.timeCircle),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
