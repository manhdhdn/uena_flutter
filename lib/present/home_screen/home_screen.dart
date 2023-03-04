import 'package:event_app/core/utils/color_constant.dart';
import 'package:event_app/core/utils/image_constant.dart';
import 'package:event_app/present/home_screen/widget/event_item_on_home_widget.dart';
import 'package:event_app/present/home_screen/widget/slide_widget.dart';
import 'package:flutter/Material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(size.height * 0.02),
                ),
                child: const CaroselImage(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    top: size.height * 0.03,
                  ),
                  child: Text(
                    "Event for specialization",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.03,
                    ),
                  ),
                ),
              ),
              eventItemOnHomeWidget(context),
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
