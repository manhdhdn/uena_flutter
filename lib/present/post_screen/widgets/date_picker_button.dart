import 'package:event_app/core/utils/color_constant.dart';
import 'package:flutter/Material.dart';

class DatePickerButton extends StatelessWidget {
  const DatePickerButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: ColorConstant.primaryColor, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.calendar_month,
            color: ColorConstant.primaryColor,
            size: MediaQuery.of(context).size.width * 0.1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: const Color(0XFFD9D9D9),
                    fontSize: MediaQuery.of(context).size.width * 0.035),
              ),
              Text(
                "Nov 12, 2022",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
