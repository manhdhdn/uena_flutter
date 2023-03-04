import 'package:event_app/present/event_screen/event_screen.dart';
import 'package:event_app/present/favorite_screen/favorite_screen.dart';
import 'package:event_app/present/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../booking_screen/booking_screen.dart';
import '../home_screen/home_screen.dart';
import '../post_screen/create_post_screen.dart';

// ignore: must_be_immutable
class BottomBarNavigation extends StatefulWidget {
  int selectedIndex = 0;

  bool isBottomNav = true;

  BottomBarNavigation(
      {super.key, required this.selectedIndex, required this.isBottomNav});

  @override
  // ignore: no_logic_in_create_state
  State<BottomBarNavigation> createState() => _BottomBarNavigationState(
      selectedIndex: selectedIndex, isBottomNav: isBottomNav);
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int selectedIndex = 0;
  bool isBottomNav = true;

  _BottomBarNavigationState(
      {required this.selectedIndex, required this.isBottomNav});

  Widget pageCaller(index) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const EventScreen();
      case 2:
        return const CreatePostScreen();
      case 3:
        return const BookingScreen();

      case 4:
        return const Favorite();
      case 5:
        return const NotificationScreen();
      default:
        return const HomeScreen();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: pageCaller(selectedIndex),
      bottomNavigationBar: isBottomNav == true
          ? Container(
              height: size.height * 0.1,
              alignment: Alignment.topCenter,
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[

                  const BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageConstant.icEvent),
                    ),
                    label: 'Events',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageConstant.icPost),
                    ),
                    label: 'Post',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageConstant.icBooking),
                    ),
                    label: 'Booking',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageConstant.icFavorite),
                    ),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(ImageConstant.icNotify),
                    ),
                    label: 'Notify',
                  ),
                ],
                currentIndex: selectedIndex,
                selectedItemColor: ColorConstant.primaryColor,
                selectedLabelStyle: TextStyle(
                  color: ColorConstant.primaryColor,
                  fontSize: size.height*0.028,
                ),
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                unselectedLabelStyle:  TextStyle(
                  color: ColorConstant.primaryColor.withOpacity(0.5),
                  fontSize: size.height*0.028,
                ),
                showUnselectedLabels: true,
                elevation: 0,
                onTap: _onItemTapped,
              ),
            )
          : Container(
              height: 0,
            ),
    );
  }
}
