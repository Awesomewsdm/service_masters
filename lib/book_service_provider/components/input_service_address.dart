import "package:service_masters/common/barrels.dart";

class InputServiceAddress extends StatelessWidget {
  const InputServiceAddress({
    super.key,
  });

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
          errorText:
              state.address.displayError != null ? state.errorMessage : null,
          suffixIcon: IconButton(
            icon: const Icon(
              CustomIcons.location,
              color: tPrimaryColor,
            ),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
