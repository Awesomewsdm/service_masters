import "package:service_masters/common/barrels.dart";

class InputServiceDescription extends StatelessWidget {
  const InputServiceDescription({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: CustomTextField(
              fillColor: backgroundColor1,
              hintText: "Input description",
              maxlines: 5,
              maxLength: 250,
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
            ),
          ),
        );
      },
    );
  }
}
