import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class InputFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;

  const InputFieldWidget({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  State<InputFieldWidget> createState() => _InputFieldWidgetState();
}

class _InputFieldWidgetState extends State<InputFieldWidget> {
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(LineIcons.smilingFace, size: 30),
            onPressed: () {},
          ),
          Expanded(
            child: TextFormField(
              controller: widget.textEditingController,
              maxLines: null,
              onChanged: (text) {
                setState(() {
                  isTyping = text.isNotEmpty;
                });
              },
              decoration: InputDecoration(
                hintText: 'Message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 229, 227, 227),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.attach_file,
              size: 30,
            ),
            onPressed: () {
              // Send message logic here
            },
          ),
          widget.textEditingController.text.isEmpty
              ? IconButton(
                  icon: const Icon(
                    LineIcons.microphone,
                    size: 30,
                  ),
                  onPressed: () {
                    // Switch to voice input mode
                  },
                )
              : const IconWithRoundBg(
                  icon: Icons.send,
                  iconColor: tWhiteColor,
                  backgroundHeight: 42,
                  backgroundWidth: 42,
                  backgroundColor: tLightBlue,
                ),
        ],
      ),
    );
  }
}
