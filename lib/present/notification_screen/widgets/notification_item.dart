import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/Material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0,3),
                  blurRadius: 5,
                  color: Colors.black54
                )
              ],
              borderRadius: BorderRadius.circular(33)
            ),
            width: 65,
            height: 65,
            child: CircleAvatar(
              backgroundImage: AssetImage(ImageConstant.notifyThumb),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Chuyến Đi 2 Ngày 1 Đêm- Vĩnh Long",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 4,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 12, color: Colors.black87),
                    text: "You have successfully ",
                    children: [
                      TextSpan(
                        text: "registered",
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                      TextSpan(text: " for the event"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text("20m ago.", style: TextStyle(color: Colors.black38),)
            ],
          )
        ],
      ),
    );
  }
}
