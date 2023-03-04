import 'package:event_app/core/utils/image_constant.dart';
import 'package:event_app/present/notification_screen/widgets/notification_item.dart';
import 'package:event_app/present/notification_screen/widgets/title.dart';
import 'package:flutter/Material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Image.asset(
              ImageConstant.notifyBg,
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  NotificationTitle(),
                  SizedBox(
                    height: 32,
                  ),

                  for(var i = 0; i < 10; i++)
                    NotificationItem(),
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
