import 'package:flutter/material.dart';

//atalho stless
class MyCustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;
  final String? text;
  MyCustomButton({super.key, this.onPressed, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
             icon,
              size: 30,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                text ??'',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ));
  }
}
