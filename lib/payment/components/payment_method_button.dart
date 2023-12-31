import "package:service_masters/common/barrels.dart";

class PaymentMethodButton extends StatelessWidget {
  const PaymentMethodButton({
    required this.method,
    required this.icon,
    required this.selectedPaymentMethod,
    required this.onChanged,
  });
  final String method;
  final Widget icon;
  final String selectedPaymentMethod;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(
        value: method,
        groupValue: selectedPaymentMethod,
        onChanged: onChanged,
      ),
      title: Text(method),
      trailing: icon,
      horizontalTitleGap: 0,
      onTap: () {
        onChanged(method);
      },
    );
  }
}
