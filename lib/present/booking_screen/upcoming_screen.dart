import 'package:event_app/present/booking_screen/e_ticket_screen.dart';
import 'package:flutter/Material.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: size.width*0.03, right: size.width*0.03),
      child: Column(
        children: [
          const SizedBox(height: 30),
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
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
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
                              width: size.width*0.5,
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
                        const SizedBox(height: 24),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height*0.04,
                      width: size.width*0.35,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(15)),
                      child:  Center(
                          child: Text(
                            'Cancel Booking',
                            style: TextStyle(
                              fontSize: size.height*0.024,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFF27229),
                            ),
                          )),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ETicketScreen(),));
                      },
                      child: Container(
                        height: size.height*0.04,
                        width: size.width*0.35,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF27229), borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                              'View E-Ticket',
                              style: TextStyle(
                                fontSize: size.height*0.024,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )),
                      ),
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
