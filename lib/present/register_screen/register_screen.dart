import 'package:event_app/present/widgets/dialog/success_dialog.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPass = false;

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.06,
              ),
              Image.asset(ImageConstant.appIcon),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.05,
                  bottom: size.height * 0.03,
                  left: size.width * 0.07,
                  right: size.width * 0.07,
                ),
                child: TextField(
                  style: TextStyle(
                      fontSize: size.width * 0.04, color: Colors.black),
                  controller: null,
                  decoration: InputDecoration(
                    hintText: "Số điện thoại/Email",
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
              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.07, 0,
                    size.width * 0.07, size.height * 0.03),
                child:
                    Stack(alignment: AlignmentDirectional.centerEnd, children: [
                  TextField(
                    style: TextStyle(
                        fontSize: size.width * 0.04, color: Colors.black),
                    controller: null,
                    obscureText: !_showPass,
                    decoration: InputDecoration(
                      hintText: "Mật khẩu",
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
                  Padding(
                    padding: EdgeInsets.only(right: size.height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          onToggleShowPass();
                        });
                      },
                      child: Icon(
                        _showPass
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_outlined,
                        color: _showPass ? Colors.blue : Colors.grey,
                        size: size.height * 0.028,
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(size.width * 0.07, 0,
                    size.width * 0.07, size.height * 0.03),
                child:
                    Stack(alignment: AlignmentDirectional.centerEnd, children: [
                  TextField(
                    style: TextStyle(
                        fontSize: size.width * 0.04, color: Colors.black),
                    controller: null,
                    obscureText: !_showPass,
                    decoration: InputDecoration(
                      hintText: "Mật khẩu",
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
                  Padding(
                    padding: EdgeInsets.only(right: size.height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          onToggleShowPass();
                        });
                      },
                      child: Icon(
                        _showPass
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye_outlined,
                        color: _showPass ? Colors.blue : Colors.grey,
                        size: size.height * 0.028,
                      ),
                    ),
                  ),
                ]),
              ),
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
                      "Đăng ký",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.045,
                      ),
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
