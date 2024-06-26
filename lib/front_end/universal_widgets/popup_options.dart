import 'package:flutter/material.dart';

class PopupButton {
  Function func;
  String buttonName;

  PopupButton({required this.func, required this.buttonName});
} // klasa koja se koristi kao ono sto se prosledjuje funkciji showPopupButtons

/// funkcija koja stvara po TextButton za svaki element u listi buttons
void showPopupOptions(BuildContext context, List<PopupButton> buttons) {
  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          buttons.length,
          (index) => TextButton(
            onPressed: () => buttons[index].func(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(buttons[index].buttonName),
            )
          )
        ),
      );
    }
  );
}
