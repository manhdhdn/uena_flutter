import 'package:flutter/Material.dart';

Future<void> showSuccessDialog(BuildContext context, String successMsg, String navigatorRoute) async {
  var size = MediaQuery.of(context).size;
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Container(
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Text(
              successMsg,

            ),
          )
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Xác nhận'),
            onPressed: () {
              Navigator.pushNamed(context, navigatorRoute);
            },
          ),
        ],
      );
    },
  );
}