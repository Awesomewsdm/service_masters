import "package:flutter_google_maps_webservices/places.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/map_search/view/api_key.dart";

const initialPosition = LatLng(37.7786, -122.4375);
const _pinkHue = 350.0;
final _placesApiClient = GoogleMapsPlaces(apiKey: googleMapsApiKey);

@RoutePage()
class MapSearchScreen extends StatefulWidget {
  const MapSearchScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MapSearchScreenState();
  }
}

class _MapSearchScreenState extends State<MapSearchScreen> {
  late Stream<QuerySnapshot> _iceCreamStores;
  final Completer<GoogleMapController> _mapController = Completer();

  @override
  void initState() {
    super.initState();
    _iceCreamStores = FirebaseFirestore.instance
        .collection("ice_cream_stores")
        .orderBy("name")
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Search"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _iceCreamStores,
        builder: (context, snapshot) {
          return switch (snapshot) {
            AsyncSnapshot(hasError: true) =>
              Center(child: Text("Error: ${snapshot.error}")),
            AsyncSnapshot(hasData: false) =>
              const Center(child: Text("Loading...")),
            _ => Stack(
                children: [
                  StoreMap(
                    documents: snapshot.data!.docs,
                    initialPosition: initialPosition,
                    mapController: _mapController,
                  ),
                  StoreCarousel(
                    mapController: _mapController,
                    documents: snapshot.data!.docs,
                  ),
                ],
              )
          };
        },
      ),
    );
  }
}

class StoreCarousel extends StatelessWidget {
  const StoreCarousel({
    required this.documents,
    required this.mapController,
    super.key,
  });

  final List<DocumentSnapshot> documents;
  final Completer<GoogleMapController> mapController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 90,
          child: StoreCarouselList(
            documents: documents,
            mapController: mapController,
          ),
        ),
      ),
    );
  }
}

class StoreCarouselList extends StatelessWidget {
  const StoreCarouselList({
    required this.documents,
    required this.mapController,
    super.key,
  });

  final List<DocumentSnapshot> documents;
  final Completer<GoogleMapController> mapController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 340,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Card(
              child: Center(
                child: StoreListTile(
                  document: documents[index],
                  mapController: mapController,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class StoreListTile extends StatefulWidget {
  const StoreListTile({
    required this.document,
    required this.mapController,
    super.key,
  });

  final DocumentSnapshot document;
  final Completer<GoogleMapController> mapController;

  @override
  State<StatefulWidget> createState() {
    return _StoreListTileState();
  }
}

class _StoreListTileState extends State<StoreListTile> {
  String _placePhotoUrl = "";
  bool _disposed = false;

  @override
  void initState() {
    super.initState();
    _retrievePlacesDetails();
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  Future<void> _retrievePlacesDetails() async {
    final details = await _placesApiClient
        .getDetailsByPlaceId(widget.document["placeId"] as String);
    if (!_disposed) {
      setState(() {
        _placePhotoUrl = _placesApiClient.buildPhotoUrl(
          photoReference: details.result.photos[0].photoReference,
          maxHeight: 300,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.document["name"] as String),
      subtitle: Text(widget.document["address"] as String),
      leading: SizedBox(
        width: 100,
        height: 100,
        child: _placePhotoUrl.isNotEmpty
            ? ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                child: Image.network(_placePhotoUrl, fit: BoxFit.cover),
              )
            : Container(),
      ),
      onTap: () async {
        final controller = await widget.mapController.future;
        await controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                widget.document["location"].latitude as double,
                widget.document["location"].longitude as double,
              ),
              zoom: 16,
            ),
          ),
        );
      },
    );
  }
}

class StoreMap extends StatelessWidget {
  const StoreMap({
    required this.documents,
    required this.initialPosition,
    required this.mapController,
    super.key,
  });

  final List<DocumentSnapshot> documents;
  final LatLng initialPosition;
  final Completer<GoogleMapController> mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: initialPosition,
        zoom: 12,
      ),
      markers: documents
          .map(
            (document) => Marker(
              markerId: MarkerId(document["placeId"] as String),
              icon: BitmapDescriptor.defaultMarkerWithHue(_pinkHue),
              position: LatLng(
                document["location"].latitude as double,
                document["location"].longitude as double,
              ),
              infoWindow: InfoWindow(
                title: document["name"] as String?,
                snippet: document["address"] as String?,
              ),
            ),
          )
          .toSet(),
      onMapCreated: (mapController) {
        this.mapController.complete(mapController);
      },
    );
  }
}
