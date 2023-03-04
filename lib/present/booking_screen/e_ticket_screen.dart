import 'package:event_app/core/utils/color_constant.dart';
import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/Material.dart';

class ETicketScreen extends StatefulWidget {
  const ETicketScreen({Key? key}) : super(key: key);

  @override
  State<ETicketScreen> createState() => _ETicketScreenState();
}

class _ETicketScreenState extends State<ETicketScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        color: ColorConstant.primaryColor.withOpacity(0.3),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                width: size.width,
                height: size.height * 0.06,
                color: Colors.black.withOpacity(0.12),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                        size: size.height * 0.04,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "MY TICKET",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.height * 0.04,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: size.height * 0.04,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.6,
                    margin: EdgeInsets.only(
                      left: size.width * 0.03,
                      right: size.width * 0.03,
                    ),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.bgTicket),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          'Chuyến Đi 2 Ngày 1 Đêm-\nVĩnh Longg',
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.height * 0.04,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: size.width * 0.1,
                                right: size.width * 0.05,
                              ),
                              width: size.width * 0.35,
                              height: size.height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(size.height * 0.02),
                                image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgTicket),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date',
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: size.height * 0.04,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: size.width*0.38,
                                  child: Text(
                                    '5-6 November, 2022',
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.028,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  ),
                                ),
                                Text(
                                  'Time',
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: size.height * 0.04,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: size.width*0.38,
                                  child: Text(
                                    '9:00 AM',
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.028,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  ),
                                ),
                                Text(
                                  'Location',
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: size.height * 0.04,
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: size.width*0.38,
                                  child: Text(
                                    'Út Trinh Homestay',
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.028,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*0.38,
                                  child: Text(
                                    'Cù Lao An Bình, Tỉnh Vĩnh Long',
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.5),
                                        fontSize: size.height * 0.028,
                                        fontWeight: FontWeight.w400,
                                        height: 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: size.height*0.085,
                    ),
                    child: Text(
                      'SCAN BARCODE',
                      maxLines: null,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: size.height * 0.035,
                          fontWeight: FontWeight.w400,
                          height: 1),
                    ),
                  ),
                  Container(
                    height: size.height*0.07,
                    width: size.width*0.7,
                    margin: EdgeInsets.only(
                      bottom: size.height*0.01,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgBarCode
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
