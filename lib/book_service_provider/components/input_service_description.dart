import "package:service_masters/common/barrels.dart";

class InputServiceDescription extends StatelessWidget {
  const InputServiceDescription({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
        builder: (context, state) {
          return CustomTextField(
            fillColor: backgroundColor1,
            hintText: "Input description",
            expand: true,
            onChanged: (value) {
              context.read<BookServiceProviderBloc>().add(
                    BookServiceProviderEvent.serviceDescription(
                      value,
                    ),
                  );
            },
            controller: controller,
            errorText: state.description.displayError != null
                ? state.errorMessage
                : null,
          );
        },
      ),
    );
  }
}
