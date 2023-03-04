import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = false;
  bool isChecked = false;

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageConstant.appIcon),
              // Padding(
              //   padding: EdgeInsets.only(
              //     top: size.height * 0.05,
              //     bottom: size.height * 0.03,
              //     left: size.width * 0.07,
              //     right: size.width * 0.07,
              //   ),
              //   child: TextField(
              //     style: TextStyle(
              //         fontSize: size.height * 0.025, color: Colors.black),
              //     controller: null,
              //     decoration: InputDecoration(
              //       hintText: "Số điện thoại/Email",
              //       hintStyle: TextStyle(
              //         fontSize: size.height * 0.025,
              //       ),
              //       border: OutlineInputBorder(
              //         borderSide:
              //             const BorderSide(color: Colors.black, width: 2),
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(size.height * 0.02),
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: const BorderSide(
              //           width: 2,
              //           color: Colors.black,
              //         ),
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(size.height * 0.02),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(size.width * 0.07, 0,
              //       size.width * 0.07, size.height * 0.03),
              //   child:
              //       Stack(alignment: AlignmentDirectional.centerEnd, children: [
              //     TextField(
              //       style: TextStyle(
              //           fontSize: size.height * 0.025, color: Colors.black),
              //       controller: null,
              //       obscureText: !_showPass,
              //       decoration: InputDecoration(
              //         hintText: "Mật khẩu",
              //         hintStyle: TextStyle(
              //           fontSize: size.height * 0.025,
              //         ),
              //         border: OutlineInputBorder(
              //           borderSide:
              //               const BorderSide(color: Colors.black, width: 2),
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(size.height * 0.02),
              //           ),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide: const BorderSide(
              //             width: 2,
              //             color: Colors.black,
              //           ),
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(size.height * 0.02),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.only(right: size.height * 0.02),
              //       child: GestureDetector(
              //         onTap: () {
              //           setState(() {
              //             onToggleShowPass();
              //           });
              //         },
              //         child: Icon(
              //           _showPass
              //               ? Icons.remove_red_eye_outlined
              //               : Icons.remove_red_eye_outlined,
              //           color: _showPass ? Colors.blue : Colors.grey,
              //           size: size.height * 0.028,
              //         ),
              //       ),
              //     ),
              //   ]),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     left: size.width * 0.07,
              //     right: size.width * 0.07,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Checkbox(
              //         checkColor: Colors.white,
              //         // fillColor: MaterialStateProperty.resolveWith(getColor),
              //         value: isChecked,
              //         onChanged: (bool? value) {
              //           setState(() {
              //             isChecked = value!;
              //           });
              //         },
              //       ),
              //       Text(
              //         "Lưu mật khẩu",
              //         style: TextStyle(
              //           fontSize: size.height * 0.025,
              //         ),
              //       ),
              //       const Spacer(),
              //       Text(
              //         "Quên mật khẩu",
              //         style: TextStyle(
              //           fontSize: size.height * 0.025,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
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
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            ColorConstant.primaryColor.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(size.height * 0.05),
                        )),
                    child: Text(
                      "Đăng nhập",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.height * 0.035,
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //     top: size.height * 0.02,
              //     left: size.width * 0.07,
              //     right: size.width * 0.07,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Nếu chưa có tài khoản ",
              //         style: TextStyle(
              //           fontSize: size.height * 0.025,
              //         ),
              //       ),
              //       GestureDetector(
              //         onTap: () {
              //           Navigator.pushNamed(context, '/registerScreen');
              //         },
              //         child: Text(
              //           "Đăng ký",
              //           style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: size.height*0.025,
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              //  Align(
              //   alignment: Alignment.center,
              //   child: Text("Hoặc đăng nhập với", style: TextStyle(
              //     fontSize: size.height*0.025,
              //   ),),
              // ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(ImageConstant.icFB),
                  // SizedBox(
                  //   width: size.width * 0.03,
                  // ),
                  Image.asset(ImageConstant.icGG),
                  // SizedBox(
                  //   width: size.width * 0.03,
                  // ),
                  // Image.asset(ImageConstant.icZalo),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
