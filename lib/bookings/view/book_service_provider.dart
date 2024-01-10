import "package:service_masters/bookings/cubit/date_and_time_cubit.dart";
import "package:service_masters/bookings/cubit/date_and_time_state.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends StatelessWidget {
  const BookServiceProviderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Service"),
      ),
      body: BlocBuilder<DateTimeCubit, DateTimeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Text(
                  "Date",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(10),

                TextField(
                  readOnly: true,
                  onTap: () => selectDate(context),
                  controller: TextEditingController(
                    text: state.selectedDate.toLocal().toString().split(" ")[0],
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const Gap(10),
                Text(
                  "Time",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                TextField(
                  controller: TextEditingController(
                    text: state.selectedTime.format(context),
                  ),
                  readOnly: true,
                  onTap: () => selectTime(context),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Select Time",
                  ),
                ),
                Text(
                  "Address",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                const CustomTextField(
                  hintText: "Input email address",
                ),
                const Gap(12),
                Text(
                  "Subject",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                const CustomTextField(
                  hintText: "Input subject",
                ),
                const Gap(12),
                Text(
                  "Description",
                  style: context.textTheme.bodyMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                const SizedBox(
                  height: 200,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomTextField(
                      hintText: "Input description",
                      expand: true,
                    ),
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
            onPressed: () {},
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
