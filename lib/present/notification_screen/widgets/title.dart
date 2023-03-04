import 'package:flutter/Material.dart';

class NotificationTitle extends StatelessWidget {
  const NotificationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 128,
      child: const Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          "Notification",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
