import 'package:event_app/core/utils/color_constant.dart';
import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/Material.dart';

import '../booking_screen/booking_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
            children: [
              Container(
                height: size.height * 0.03,
                width: size.width,
                color: ColorConstant.purplePayment,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                height: size.height * 0.03,
                width: size.width,
                color: ColorConstant.purplePayment,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.2), width: 1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(size.height * 0.02),
                    bottomLeft: Radius.circular(size.height * 0.02),
                  ),
                ),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      "Hình thức thanh toán online",
                      style: TextStyle(
                        fontSize: size.height * 0.035,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "1. Qua STK: ",
                          style: TextStyle(
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "30938732033",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "TP Bank - Phan Nguyễn Phương Uyên",
                      style: TextStyle(
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Image.asset(
                      ImageConstant.icTPBank,
                      width: size.width * 0.25,
                      height: size.width * 0.25,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "2. Qua Momo: ",
                          style: TextStyle(
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Text(
                          "30938732033",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Phan Nguyễn Phương Uyên",
                      style: TextStyle(
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Image.asset(
                      ImageConstant.icMomo,
                      width: size.width * 0.25,
                      height: size.width * 0.25,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Cú pháp: Họ và tên-Tên sự kiện",
                      style: TextStyle(
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    Text(
                      "Vd: Huỳnh Nhật Khánh - Chuyến Đi 2 Ngày 1 Đêm - Vĩnh Long",
                      style: TextStyle(
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                ),
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black.withOpacity(0.2), width: 1),
                  borderRadius: BorderRadius.circular(size.height * 0.02),
                ),
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Cậu hãy gửi cho Uyên hình ảnh xác nhận thanh toán nhé",
                      style: TextStyle(
                        fontSize: size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      padding: EdgeInsets.all(size.width * 0.03),
                      width: size.width * 0.36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black.withOpacity(0.2), width: 1),
                        borderRadius: BorderRadius.circular(size.height * 0.01),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.upload,
                            size: size.height * 0.03,
                            color: ColorConstant.blueUp,
                          ),
                          Text(
                            "Thêm tệp",
                            style: TextStyle(
                              color: ColorConstant.blueUp,
                              fontSize: size.height * 0.03,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                    bottom: size.width * 0.1),
                child: SizedBox(
                  width: double.infinity,
                  height: size.height * 0.055,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: ColorConstant.purplePayment,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(size.height * 0.01),
                        )),
                    child: Text(
                      "THANH TOÁN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: size.height * 0.035,
                          height: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
