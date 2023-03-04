import 'package:event_app/core/utils/color_constant.dart';
import 'package:flutter/Material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({Key? key, required this.hintText, this.height, this.maxLine}) : super(key: key);
  final String hintText;
  final double? height;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, color: const Color(0xFFD9D9D9)),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: ColorConstant.primaryColor, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: ColorConstant.primaryColor, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: ColorConstant.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
