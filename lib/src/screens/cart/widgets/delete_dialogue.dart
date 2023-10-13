import 'package:flutter/material.dart';

Future<void> showDeleteConfirmationDialog(BuildContext context, String itemName, Function onDelete) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to delete $itemName from your cart?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                
                onDelete();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
}
