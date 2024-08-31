import 'package:flutter/material.dart';

class MyInputAlertBox extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final void Function()? onPressed;
  final String onPressedText;

  const MyInputAlertBox({
    super.key,
    required this.textController,
    required this.hintText,
    required this.onPressed,
    required this.onPressedText,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,

      // Textfield (user types here)
      content: TextField(
        controller: textController,
        // limit max character
        maxLength: 140,
        maxLines: 3,

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          // Color inside of textfield
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          // counter style
          counterStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      actions: [
        // cancel button
        TextButton(
          onPressed: () {
            // close box
            Navigator.pop(context);
            // clear controller
            textController.clear();
          },
          child: const Text("Cancel"),
        ),

        // Save button
        TextButton(
          onPressed: () {
            // close box
            Navigator.pop(context);
            // execute function
            onPressed!();
            // clear controller
            textController.clear();
          },
          child: Text(onPressedText),
        ),
      ],
    );
  }
}
