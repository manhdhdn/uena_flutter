import 'package:flutter/Material.dart';

import '../../../core/utils/color_constant.dart';

class PostTitle extends StatelessWidget {
  const PostTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 128,
      width: size.width,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: ColorConstant.primaryColor
              )
          )
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text("New Event", style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.08, fontWeight: FontWeight.bold, color: ColorConstant.primaryColor),),
        ),
      ),
    );
  }
}
