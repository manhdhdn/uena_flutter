import 'package:flutter/Material.dart';

import '../bottom_bar_navigation/bottom_bar_navigation.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: size.height*0.03,),
          Container(
            padding: EdgeInsets.all(size.width*0.03),
            decoration: BoxDecoration(
              color: const Color(0xFFF48820).withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/image_show_1.png',
                      width: size.width*0.25,
                      height: size.height*0.15,
                    ),
                    const SizedBox(width: 6),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5-6th NOV - SAT & SUN - 9:00 AM',
                          style: TextStyle(
                            fontSize: size.height*0.022,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: size.width*0.58
                          ,
                          child: Text(
                            'Chuyến Đi 2 Ngày 1 Đêm- Vĩnh Long',
                            style: TextStyle(
                              fontSize: size.height*0.024,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: size.height*0.03,
                              color: const Color(0xFFF27229),
                            ),
                            SizedBox(width: size.width*0.02),
                            SizedBox(
                              width: size.width*0.48,
                              child: Text(
                                'Út Trinh Homestay tại Cù Lao An Bình, Tỉnh Vĩnh Long',
                                style: TextStyle(
                                  fontSize: size.height*0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: size.height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: size.height*0.04,
                      width: size.width*0.35,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF27229), borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(
                            'Feedback',
                            style: TextStyle(
                              fontSize: size.height*0.024,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
