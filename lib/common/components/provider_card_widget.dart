import "package:service_masters/common/barrels.dart";

class ProviderCardWidget extends StatelessWidget {
  const ProviderCardWidget({
    required this.serviceProviderName,
    required this.serviceProviderProfession,
    required this.serviceProviderLocation,
    required this.serviceProviderRating,
    required this.serviceProviderPicture,
    super.key,
    this.onTap,
  });

  final String serviceProviderName;
  final String serviceProviderProfession;
  final String serviceProviderLocation;
  final String serviceProviderRating;
  final void Function()? onTap;
  final String serviceProviderPicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: tPrimaryColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 150,
                      width: 200,
                      child: Image.network(
                        serviceProviderPicture,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 5,
                    left: 5,
                    height: 30,
                    width: 30,
                    child: IconWithRoundBg(
                      icon: Icons.bookmark_outline,
                      iconSize: 20,
                    ),
                  ),
                ],
              ),
              const Gap(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        serviceProviderName,
                        style: context.textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        serviceProviderProfession,
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const Gap(2),
                  Text(
                    serviceProviderRating,
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Gap(6),
              Text(
                serviceProviderLocation,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: tPrimaryColor.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
