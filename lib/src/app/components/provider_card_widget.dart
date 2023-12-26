import 'package:home_service_app/common/barrels.dart';

class ProviderCardWidget extends StatelessWidget {
  const ProviderCardWidget({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: tPrimaryColor.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ServiceProviders(),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      image,
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
                      icon: Icons.bookmark_outline, iconSize: 20),
                ),
              ]),
              const Gap(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anthony Jose",
                        style: textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Plumber",
                        style: textTheme.bodyMedium!.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
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
                    "3.6",
                    style: textTheme.bodyMedium!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Gap(6),
              Text(
                "Kumasi",
                style: textTheme.bodyMedium!.copyWith(
                    color: tPrimaryColor.withOpacity(0.9),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
