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
          onChanged: (customerAddress) {
            context.read<BookServiceProviderBloc>().add(
                  BookServiceProviderEvent.customerAddress(
                    customerAddress,
                  ),
                );
          },
          controller: TextEditingController.fromValue(
            TextEditingValue(
              text: state.address.value,
              selection: TextSelection.collapsed(
                offset: state.address.value.length,
              ),
            ),
          ),
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
                widget: const PickCurrentAddressBottomsheet(),
              );
            },
          ),
        );
      },
    );
  }
}
