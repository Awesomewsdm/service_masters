import "package:service_masters/common/barrels.dart";

class InputFieldWidget extends StatefulWidget {
  const InputFieldWidget(
      {required this.textEditingController, super.key, this.onTap});
  final TextEditingController textEditingController;
  final void Function()? onTap;

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: const Icon(
              CustomIcons.smile,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              maxLines: null,
              onChanged: (text) {
                setState(() {
                  isTyping = text.isNotEmpty;
                });
              },
              controller: widget.textEditingController,
              decoration: InputDecoration(
                hintText: "Type a message...",
                hintStyle:
                    context.textTheme.bodyLarge!.copyWith(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.attach_file,
            ),
            onPressed: () {},
          ),
          if (widget.textEditingController.text.isEmpty)
            IconButton(
              icon: const Icon(
                CustomIcons.voice,
              ),
              onPressed: () {
                // Switch to voice input mode
              },
            )
          else
            GestureDetector(
              onTap: widget.onTap,
              child: const IconWithRoundBg(
                icon: Icons.send,
                iconSize: 20,
                iconColor: tWhiteColor,
                backgroundHeight: 36,
                backgroundWidth: 36,
                backgroundColor: tLightBlue,
              ),
            ),
        ],
      ),
    );
  }
}
