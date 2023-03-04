import 'package:dotted_border/dotted_border.dart';
import 'package:event_app/core/utils/color_constant.dart';
import 'package:flutter/Material.dart';

class ImagePickerButton extends StatelessWidget {
  const ImagePickerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: DottedBorder(
        strokeWidth: 3,
        dashPattern: const [5,5],
        color: ColorConstant.primaryColor,
        child: Center(
          child: Text("Image", style: TextStyle(color: ColorConstant.primaryColor, fontSize: MediaQuery.of(context).size.width * 0.08),),
        ),
      ),
    );
  }
}
