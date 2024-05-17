import "package:service_masters/common/barrels.dart";

class InputServiceAddress extends StatelessWidget {
  const InputServiceAddress({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
      builder: (context, state) {
        return CustomTextField(
          fillColor: backgroundColor1,
          hintText: "Your Location Address",
          onChanged: (value) {
            context.read<BookServiceProviderBloc>().add(
                  BookServiceProviderEvent.customerAddress(
                    value,
                  ),
                );
          },
          controller: controller,
          errorText:
              state.address.displayError != null ? state.errorMessage : null,
          suffixIcon: IconButton(
            icon: const Icon(
              CustomIcons.location,
              color: tPrimaryColor,
            ),
            onPressed: () {
              Utils.showCustomBottomsheet(
                context: context,
                widget: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text(
                        "Select your location",
                        style: TextStyle(
                          color: tPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(10),
                      GestureDetector(
                        onTap: () {
                          // final currentPosition = await _determinePosition();
                          // logger.i(currentPosition);
                        },
                        child: const Text(
                          "Select your location from the map",
                          style: TextStyle(
                            color: tPrimaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Position currentPosition = Position(
    latitude: 0.0,
    longitude: 0.0,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    heading: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0,
    altitudeAccuracy: 0.0,
    headingAccuracy: 0.0,
  );
  String currentAddress = "My Address";

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location services are disabled.");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions are denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        "Location permissions are permanently denied, we cannot request permissions.",
      );
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final placeMark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      final place = placeMark.first;
      setState(() {
        currentAddress =
            "Current Address: ${place.locality},${place.postalCode}, ${place.country}";
        currentPosition = position;
      });
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Location Address:"),
          Text("Current Address: $currentAddress"),
          const Gap(10),
          Text("Latitude: ${currentPosition.latitude}"),
          const Gap(10),
          Text("Longitude: ${currentPosition.longitude}"),
          const Gap(10),
          ElevatedButton(
            onPressed: () async {
              await _determinePosition();
            },
            child: const Text("Get Current Location"),
          ),
        ],
      ),
    );
  }
}
