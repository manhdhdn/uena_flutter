import 'package:event_app/present/payment_screen/payment_screen.dart';
import 'package:flutter/Material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool isAds = false;
  bool isRegis = false;
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
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: size.height * 0.04,
                          ),
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "V?? V??n Ng???c H???i",
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
                          fontSize: size.height * 0.025,
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
                      child: Text(
                        "Music",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.025,
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
                      child: Text(
                        "Love",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.025,
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
                      child: Text(
                        "Game Show",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.height * 0.025,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.05,
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                padding: EdgeInsets.all(size.width * 0.03),
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorConstant.primaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(size.height * 0.02),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.height * 0.02),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Container(
                            width: size.width,
                            height: size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage(ImageConstant.imgEvent2),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft:
                                        Radius.circular(size.height * 0.02),
                                    bottomRight:
                                        Radius.circular(size.height * 0.02),
                                  )),
                              child: Text(
                                "Chuy???n ??i 2 Ng??y 1 ????m-V??nh Long",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: size.height * 0.04,
                                    color: ColorConstant.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02),
                          ),
                          padding: EdgeInsets.all(size.width * 0.03),
                          child: ImageIcon(
                            AssetImage(ImageConstant.icCalendar),
                            color: ColorConstant.primaryColor,
                            size: size.height * 0.04,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5 November, 2022",
                              style: TextStyle(
                                fontSize: size.height * 0.028,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Tuesday,5:00 PM TO 7:00 PM",
                              style: TextStyle(
                                fontSize: size.height * 0.024,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(size.height * 0.02),
                          ),
                          padding: EdgeInsets.all(size.width * 0.03),
                          child: Icon(
                            Icons.location_on,
                            color: ColorConstant.primaryColor,
                            size: size.height * 0.04,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "C?? Lao An B??nh, T???nh V??nh Long",
                              style: TextStyle(
                                fontSize: size.height * 0.028,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "??t Trinh Homestay",
                              style: TextStyle(
                                fontSize: size.height * 0.028,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "About Event",
                      style: TextStyle(
                        fontSize: size.height * 0.038,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                          "[M??? FORM ????NG K?? CHUY???N ??I 2 NG??Y 1 ????M- V??NH LONG]\nXin ch??o c??c b???n, \nChuy???n ??i 2 NG??Y 1 ????M t???i V??NH LONG s??? ch??nh th???c di???n ra v??o: \nNg??y 05 - 06/11/2022\nGi?? v??: 1.300.000 VN??/ ng?????i ????\n???? ????y l?? chuy???n ??i do b??? m??n Qu???n Tr??? Nh?? h??ng-Kh??ch S???n t??? ch???c, v???i m???c ????ch ??em ?????n cho c??c b???n sinh vi??n tr???i nghi???m Tham quan kh??m ph?? m?? h??nh farmstay m???i ??t Trinh Homestay t???i C?? Lao An B??nh. ????????\n???????? B???n ???????c tham gia nh???ng ho???t ?????ng mi???t v?????n c?????i b?? nh?? t??t m????ng b???t c??, xe ?????p quanh ???????ng l??ng, th?? n???u ??n m??n mi???n qu??. B???n ch??a bao gi??? v?? mu???n th?????ng th???c 1 ch????ng tr??nh ?????n ca t??i t??? ????ng ch???t trong ??nh ????n d???u leo l??t. ????\n????Hi???n t???i, ch??ng m??nh ???? b???t ?????u m??? form nh???n ????ng k??! N???u b???n l?? ng?????i:\n??am m?? du l???ch ???? ????y ????????\nY??u th??ch s??ng n?????c V??nh Long ???????\nHam th??ch tr???i nghi???m nh???ng m??n ??n d??n d?? ????\nMong mu???n t??m hi???u v??? m?? h??nh Farmstay(T???i sao Farmstay l???i v?? c??ng HOT hi???n nay?) ??????\nHay ????n gi???n l?? c???n nh???ng gi??y ph??t th?? th??i, r???i xa ch???n x?? b??? c???a S??i Th??nh????\n???? Th?? h??y nhanh tay ????ng k?? chi???c Form d?????i ????y ????? ?????ng h??nh tr???i nghi???m ?????n V??nh Long c??ng ch??ng m??nh nh??!! ?????m b???o s??? v?? c??ng th?? v??? v?? ?????y b??? ??ch nha!!\n???\nB??? M??n Qu???n Tr??? Du L???ch - Kh??ch S???n - Nh?? H??ng - Tr?????ng ?????i H???c FPT Ph??n Hi???u TP. H??? Ch?? Minh\n?????a ch???: L?? E2a-7, ???????ng D1, ??. D1, Long Th???nh M???, Th??nh Ph??? Th??? ?????c, Th??nh ph??? H??? Ch?? Minh\nEmail: thmfpt@gmail.com\nFanpage: \nhttps://Www.facebook.com/thmFPTUHCM\nHotline: 0784827010 (B???n Ph????ng)\n",
                          style: GoogleFonts.dongle(
                            fontSize: size.height * 0.026,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        (isAds)
                            ? Container(
                                width: size.width,
                                height: size.height * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(size.height * 0.02),
                                  image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgAds),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                alignment: Alignment.topRight,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.03,
                                    right: size.width * 0.03,
                                    top: size.width * 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        size.height * 0.2),
                                    color: ColorConstant.primaryColor,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isAds = false;
                                      });
                                    },
                                    child: Text(
                                      "X",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                        color: Colors.black,
                                        fontSize: size.height * 0.03,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    (!isRegis)
                        ? Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.1,
                              top: size.height * 0.03,
                              right: size.width * 0.1,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: size.height * 0.055,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isRegis = true;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: ColorConstant.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          size.height * 0.05),
                                    )),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.height * 0.035,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.1,
                              top: size.height * 0.03,
                              right: size.width * 0.1,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: size.height * 0.055,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                    size: size.height * 0.04,
                                  ),
                                  Text(
                                    " Registered",
                                    style: TextStyle(
                                      color: ColorConstant.primaryColor,
                                      fontSize: size.height * 0.04,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.1,
                        top: size.height * 0.08,
                        right: size.width * 0.1,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: size.height * 0.055,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PaymentScreen(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: ColorConstant.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(size.height * 0.05),
                              )),
                          child: Text(
                            "Buy Ticket",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.height * 0.035,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                  ],
                ),
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
