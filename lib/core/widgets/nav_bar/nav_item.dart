import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/custom_colors.dart';
import 'package:todo_app/core/constants/custom_sizes.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final bool selected;
  final Function()? onTap;
  const NavItem({
    super.key,
    required this.icon,
    required this.selectedIcon,
    required this.label,
    required this.selected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = DeviceUtility.isLightMode(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: CustomSizes.sm),
          child: Column(
            spacing: CustomSizes.xs,
            children: [
              Icon(
                selected ? selectedIcon : icon,
                color: isLightMode
                    ? CustomColors.darkerGrey
                    : CustomColors.light,
              ),
              Text(
                label,
                style: TextStyle(
                  color: isLightMode
                      ? CustomColors.darkerGrey
                      : CustomColors.light,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
