import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ExitConfirmationDialog extends StatelessWidget {
  const ExitConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Exit App'),
      content: const Text('Are you sure you want to exit the app?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false); // Dismiss the dialog and continue with the app
          },
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
         if(Platform.isAndroid){
          SystemNavigator.pop();
         }
         else {
          exit(0);
         }
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
