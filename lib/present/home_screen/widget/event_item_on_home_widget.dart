import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';

Widget eventItemOnHomeWidget(BuildContext context){
  var size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(
      top: size.height * 0.02,
      left: size.width * 0.05,
      right: size.width * 0.05,
    ),
    padding: EdgeInsets.fromLTRB(size.width * 0.05,
        size.height * 0.02, size.width * 0.05, size.height * 0.02),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(size.height * 0.02),
      color: ColorConstant.primaryColor.withOpacity(0.3),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(ImageConstant.imgHomeEvent),
        Container(
          width: size.width,
          margin: EdgeInsets.only(
            top: size.height * 0.02,
          ),
          padding: EdgeInsets.all(size.width * 0.05),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(size.height * 0.03),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ECONOMIC",
                style: TextStyle(
                  color: ColorConstant.primaryColor,
                  fontSize: size.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "FPT University in Ho Chi Minh City",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: size.height * 0.026,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  top: size.height * 0.02,
                ),
                padding: EdgeInsets.all(size.width * 0.04),
                decoration: BoxDecoration(
                  color:
                  ColorConstant.primaryColor.withOpacity(0.3),
                  borderRadius:
                  BorderRadius.circular(size.height * 0.02),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "4 ",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: size.height * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Event",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.024,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Text(
                              "2 ",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: size.height * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Survey",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: size.height * 0.024,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                          "Talk show, game show",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: size.height * 0.024,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConstant.primaryColor,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/eventScreen');
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          size: size.height * 0.04,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}