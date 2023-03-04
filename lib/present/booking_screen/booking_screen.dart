import 'package:event_app/present/booking_screen/upcoming_screen.dart';
import 'package:flutter/Material.dart';

import 'completed_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 46),
        color: const Color(0xFFF48820).withOpacity(0.3),
        child: Column(children: [
          Text(
            'Tickets',
            style: TextStyle(
              fontSize: size.height*0.04,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.white),
            )),
            child: TabBar(
              controller: tabController,
              labelColor: const Color(0xFFF48820),
              unselectedLabelColor: const Color(0xFFFFFFFF),
              labelStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              indicatorWeight: 4,
              indicatorColor: const Color(0xFFF48820),
              indicatorPadding: const EdgeInsets.only(right: 65, left: 65),
              tabs: const [
                Tab(
                  text: 'Upcoming',
                ),
                Tab(
                  text: 'Completed',
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: const [
              UpcomingScreen(),
              CompletedScreen(),
            ]),
          )
        ]),
      ),
    );
  }
}
