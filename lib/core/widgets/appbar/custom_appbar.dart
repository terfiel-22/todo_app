import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/theme/theme_provider.dart';
import 'package:todo_app/core/utils/device/device_utility.dart';
import 'package:todo_app/core/utils/navigation/navigation_utility.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final String? backPageName;
  final bool showThemeModeButton;
  const CustomAppbar({
    super.key,
    this.showBackButton = true,
    this.showThemeModeButton = false,
    this.backPageName,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton
          ? IconButton(
              onPressed: () => backPageName != null
                  ? NavigationUtility.navigateTo(
                      context: context,
                      routeName: backPageName!,
                    )
                  : NavigationUtility.navigationPop(context: context),
              icon: const Icon(Icons.chevron_left),
            )
          : const SizedBox(),
      actions: [
        showThemeModeButton
            ? IconButton(
                onPressed: context.read<ThemeProvider>().toggleTheme,
                icon: Icon(
                  DeviceUtility.isLightMode(context)
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
