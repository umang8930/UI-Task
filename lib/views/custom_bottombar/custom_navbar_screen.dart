import 'package:designtask/const/app_color.dart';
import 'package:designtask/views/dashborad/profile_screen.dart';
import 'package:designtask/views/dashborad/transaction_detail_screen.dart';
import 'package:flutter/material.dart';

import '../dashborad/add_payment_screen.dart';
import '../dashborad/card_details_screen.dart';
import '../dashborad/home page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    const HomeScreen(),
    const CardDetailsScreen(),
    AddPaymentScreen(),
    const TransactionDetailScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        backgroundColor: AppColors().primaryColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppColors().whiteColor),
        unselectedIconTheme: IconThemeData(color: AppColors().blackColor),
        selectedItemColor: AppColors().whiteColor,
        unselectedItemColor: AppColors().blackColor,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.home,
                      size: 20,
                    ),
                  )
                : Icon(
                    Icons.home_outlined,
                  ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.credit_card,
                      size: 20,
                    ),
                  )
                : Icon(
                    Icons.credit_card,
                  ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  )
                : Icon(
                    Icons.add,
                  ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.monetization_on_outlined,
                      size: 20,
                    ),
                  )
                : Icon(
                    Icons.monetization_on_outlined,
                  ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? Container(
                    padding: EdgeInsets.all(width * 0.015),
                    decoration: BoxDecoration(
                      color: AppColors().secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 20,
                    ),
                  )
                : Icon(
                    Icons.person,
                  ),
            label: "",
          ),
        ],
      ),
    );
  }
}
