import "package:service_masters/common/barrels.dart";

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    required this.orderId,
    required this.serviceTime,
    required this.time,
    required this.date,
    required this.address,
    super.key,
  });
  final String orderId;
  final String serviceTime;
  final String time;
  final String date;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Order ID: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(orderId),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Name:", style: context.textTheme.bodyLarge),
              Text(serviceTime, style: context.textTheme.bodyLarge),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Time:", style: context.textTheme.bodyLarge),
              Text(time, style: context.textTheme.bodyLarge),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Date:", style: context.textTheme.bodyLarge),
              Text(date, style: context.textTheme.bodyLarge),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service Address:", style: context.textTheme.bodyLarge),
              Text(address, style: context.textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
  }
}
