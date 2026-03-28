import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/widgets/appbar/custom_appbar.dart';
import 'package:todo_app/core/widgets/nav_bar/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showBackButton: false,
        showThemeModeButton: true,
      ),
      body: const Center(child: Text("Home")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: CustomSizes.fABDiameter,
        width: CustomSizes.fABDiameter,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: CustomColors.primary,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
          child: const Icon(Icons.add, color: CustomColors.light),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
