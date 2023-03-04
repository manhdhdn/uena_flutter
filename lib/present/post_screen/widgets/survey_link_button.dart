import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/Material.dart';

import '../../../core/utils/color_constant.dart';

class SurveyLinkButton extends StatelessWidget {
  const SurveyLinkButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: ColorConstant.primaryColor, width: 2),
      ),
      child: Row(
        children: [
          Image.asset(
            ImageConstant.imgLink,
            width: MediaQuery.of(context).size.width * 0.08,
            height: MediaQuery.of(context).size.width * 0.08,
          ),
          Text(
            title,
            style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06),
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.06,
            height: MediaQuery.of(context).size.width * 0.06,
            decoration: BoxDecoration(
                color: ColorConstant.primaryColor,
                borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.06)),
          )
        ],
      ),
    );
  }
}
