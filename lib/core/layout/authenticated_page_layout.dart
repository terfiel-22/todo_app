import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/widgets/appbar/custom_appbar.dart';
import 'package:todo_app/core/widgets/nav_bar/custom_bottom_nav_bar.dart';

class AuthenticatedPageLayout extends StatelessWidget {
  final Widget body;
  const AuthenticatedPageLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showBackButton: false,
        showThemeModeButton: true,
      ),
      body: body,
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
