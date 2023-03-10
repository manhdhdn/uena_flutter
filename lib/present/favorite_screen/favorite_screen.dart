import 'package:flutter/Material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../event_screen/widgets/event_detail.dart';
import '../event_screen/widgets/event_item_widget.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * 0.08,
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Image.asset(
                            ImageConstant.icHome,
                          ),
                          onTap: () {},
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Võ Văn Ngọc Hải",
                              style: TextStyle(
                                fontSize: size.height * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Graphic Design",
                              style: TextStyle(
                                fontSize: size.height * 0.026,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Container(
                          height: size.height * 0.08,
                          width: size.height * 0.08,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(size.height * 0.01),
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.imgAva),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: size.width * 0.1,
                      top: size.width * 0.1,
                    ),
                    child: Image.asset(ImageConstant.icDiamond),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                        style: TextStyle(
                            fontSize: size.height * 0.025, color: Colors.black),
                        controller: null,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search...",
                          hintStyle: TextStyle(fontSize: size.height * 0.025),
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(size.height * 0.02),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(size.height * 0.02),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    ImageIcon(
                      AssetImage(ImageConstant.icScan),
                      size: size.height * 0.06,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      child: Text(
                        "Talk Show",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height*0.025,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      child:  Text(
                        "Music",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height*0.025,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      child:  Text(
                        "Love",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height*0.025,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      child:  Text(
                        "Game Show",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height*0.025,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    top: size.height * 0.03,
                  ),
                  child: Text(
                    "Wishlist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.04,
                    ),
                  ),
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EventDetailScreen(),));
                  },
                  child: EventItemWidget(name: "XYZ"),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: size.height * 0.01,
                ),
                itemCount: 2,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
