import 'package:flutter/Material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';

class EventItemWidget extends StatefulWidget {
  EventItemWidget({required this.name});
  String name;
  @override
  // ignore: no_logic_in_create_state
  State<EventItemWidget> createState() => _EventItemWidgetState(name: name);
}

class _EventItemWidgetState extends State<EventItemWidget> {
  _EventItemWidgetState({required this.name});
  String name;
  var isFav = false;

  void tickFav() async {
    setState(() {
      if (isFav) {
        isFav = false;
      } else {
        isFav = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          width: size.width,
          margin: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.03,
            right: size.width * 0.03,
          ),
          padding: EdgeInsets.all(size.width * 0.02),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: ColorConstant.primaryColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(size.height * 0.02),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.18,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.height * 0.02),
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.imgEvent),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              SizedBox(
                width: size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: size.height * 0.025,
                          height: 1),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Text(
                      "Talkshow Career Talk",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.03,
                          height: 1),
                    ),
                    Text(
                      "Chuyến Đi 2 Ngày Một Đêm - Vĩnh Long",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.025,
                          height: 1),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: size.width * 0.05,
                          color: ColorConstant.primaryColor,
                        ),
                        SizedBox(
                          width: size.width * 0.45,
                          child: Text(
                            "Út Trinh Homestay tại Cù Lao An Bình, Tỉnh Vĩnh Long",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.height * 0.025,
                                height: 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        (!isFav)
            ? Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.04,
                  right: size.width * 0.04,
                ),
                padding: EdgeInsets.all(size.width * 0.02),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: tickFav,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: size.height * 0.03,
                    color: ColorConstant.favColor,
                  ),
                ),
              )
            : Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.04,
                  right: size.width * 0.04,
                ),
                padding: EdgeInsets.all(size.width * 0.02),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: tickFav,
                  child: Icon(
                    Icons.favorite,
                    size: size.height * 0.03,
                    color: ColorConstant.favColor,
                  ),
                ),
              ),
      ],
    );
  }
}
