import "package:service_masters/common/barrels.dart";

class PickCurrentAddressBottomsheet extends StatelessWidget {
  const PickCurrentAddressBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: context.screenWidth / 6,
              child: const Divider(
                thickness: 5,
              ),
            ),
            const Gap(15),
            const Text(
              "Select your location",
              style: TextStyle(
                color: tPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            state.maybeWhen(
              initial: () => GestureDetector(
                onTap: () {
                  context.read<LocationBloc>().add(
                        LocationEvent.getLocation(
                          onSuccess: (locationRecord) {
                            logger
                              ..e(locationRecord.address)
                              ..i(locationRecord.latitude)
                              ..d(locationRecord.longitude);
                          },
                          onError: logger.d,
                        ),
                      );
                },
                // logger.i(currentPosition);

                child: const Text(
                  "Select your location from the map",
                  style: TextStyle(
                    color: tPrimaryColor,
                    fontSize: 14,
                  ),
                ),
              ),
              orElse: () {
                return const SizedBox();
              },
              loadInProgress: () {
                return const CircularProgressIndicator();
              },
              loadFailure: (error) {
                return Text("Error: $error");
              },
              loadSuccess: (locationRecord) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(10),
                    Text(
                      "Your current location is:",
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Icon(CustomIcons.location),
                          const Gap(10),
                          Text(
                            locationRecord.address,
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    PrimaryButton(
                      onPressed: () {
                        context.read<BookServiceProviderBloc>().add(
                              BookServiceProviderEvent.customerAddress(
                                locationRecord.address,
                              ),
                            );
                        Navigator.pop(context);
                      },
                      label: "Select Location",
                    ),
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}
