import "package:service_masters/common/barrels.dart";

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({
    required this.widget,
    super.key,
  });

  final ServiceProviderDetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                context.pushRoute(const AllChatsRoute());
              },
              backgroundColor: tPrimaryColor,
              elevation: 0,
              child: const Icon(CustomIcons.chat, color: Colors.white),
            ),
          ),
          const Gap(10),
          Expanded(
            flex: 4,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: tPrimaryColor,
              onPressed: () {
                context.router.push(
                  BookServiceProviderRoute(
                    serviceProvider: widget.serviceProvider,
                  ),
                );
              },
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
        ],
      ),
    );
  }
}
