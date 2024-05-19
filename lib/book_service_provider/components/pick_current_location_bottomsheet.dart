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
            Text(
              "Choose the delivery address",
              style: context.textTheme.bodyLarge!.copyWith(
                color: tPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            state.maybeWhen(
              initial: () => Flexible(
                child: SizedBox(
                  width: context.screenWidth,
                  height: context.screenHeight,
                  child: Column(
                    children: [
                      const Gap(10),
                      SecondaryButtonWithIcon(
                        labelColor: tPrimaryColor,
                        onPressed: () {
                          context.read<LocationBloc>().add(
                                LocationEvent.getLocation(
                                  onSuccess: (locationRecord) {},
                                  onError: logger.d,
                                ),
                              );
                        },
                        label: "My current location",
                        icon: const Icon(CustomIcons.location),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),
                      const Spacer(),
                      SecondaryButtonWithIcon(
                        labelColor: tPrimaryColor,
                        onPressed: () {},
                        label: "Select on map",
                        icon: const Icon(CustomIcons.map),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),
                      const Spacer(),
                    ],
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
                return Flexible(
                  child: SizedBox(
                    width: context.screenWidth,
                    height: context.screenHeight,
                    child: Column(
                      children: [
                        const Spacer(),
                        Text(
                          error,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        PrimaryButton(
                          onPressed: () {
                            context.read<LocationBloc>().add(
                                  LocationEvent.getLocation(
                                    onSuccess: (locationRecord) {},
                                    onError: logger.d,
                                  ),
                                );
                          },
                          label: "Retry",
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                );
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
