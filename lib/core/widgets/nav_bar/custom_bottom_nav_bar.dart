import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';
import 'package:todo_app/core/widgets/nav_bar/nav_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = DeviceUtility.isLightMode(context);

    return Container(
      height: DeviceUtility.getBottomNavigationBarHeight(),
      color: isLightMode ? CustomColors.light : CustomColors.darkerGrey,
      child: const Row(
        children: [
          NavItem(
            icon: Icons.home,
            selectedIcon: Icons.home,
            selected: true,
            label: "Home",
          ),
          NavItem(
            icon: Icons.calendar_month_outlined,
            selectedIcon: Icons.calendar_month,
            selected: false,
            label: "Calendar",
          ),
          SizedBox(width: CustomSizes.spaceBtwSections),
          NavItem(
            icon: Icons.lock_clock_outlined,
            selectedIcon: Icons.lock_clock,
            selected: false,
            label: "Focus",
          ),
          NavItem(
            icon: Icons.person_outlined,
            selectedIcon: Icons.person,
            selected: false,
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
