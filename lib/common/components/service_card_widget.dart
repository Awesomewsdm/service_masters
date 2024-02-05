import "dart:ui";

import "package:service_masters/common/barrels.dart";

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.image,
    required this.serviceName,
    super.key,
  });

  final String image;
  final String serviceName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => context.router.push(const ServiceProvidersRoute()),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 200,
            width: 150,
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CustomIcons.heart,
                      color: Colors.red,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: const BoxDecoration(),
                        child: Center(
                          child: Text(
                            serviceName,
                            style: context.textTheme.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceTypeCard extends StatelessWidget {
  const ServiceTypeCard({
    required this.image,
    super.key,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => context.router.push(const ServiceProvidersRoute()),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 200,
            width: 150,
            child: Stack(
              children: [
                Image.asset(
                  image,
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CustomIcons.heart,
                      color: Colors.red,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: const BoxDecoration(),
                        child: const Center(
                          child: Text(
                            "Home Cleaning",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
