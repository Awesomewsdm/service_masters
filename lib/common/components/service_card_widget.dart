import "dart:ui";

import "package:service_masters/common/barrels.dart";

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.image,
    required this.serviceName,
    super.key,
    this.onPressed,
  });

  final String image;
  final String serviceName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 200,
            width: 150,
            child: Stack(
              children: [
                Image.network(
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
                            style: context.textTheme.titleSmall!.copyWith(
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
