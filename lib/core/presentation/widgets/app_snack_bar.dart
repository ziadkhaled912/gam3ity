import 'package:flutter/material.dart';
import 'package:gam3ity/generated/l10n.dart';
import 'package:gam3ity/utilities/theme/light_theme/light_colors.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    Key? key,
    required this.text,
    required this.snackBarState,
  }) : super(key: key);

  final String text;
  final SnackBarState snackBarState;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: ListTile(
        title: Text(text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: snackBarState == SnackBarState.noInternet ||
                          snackBarState == SnackBarState.idle
                      ? Colors.black
                      : Colors.white,
                )),
        leading: snackBarState.icon,
        horizontalTitleGap: 0,
      ),
      backgroundColor: snackBarState.color,
      behavior: SnackBarBehavior.floating,
      padding: EdgeInsets.zero,
    );
  }
}

enum SnackBarState {
  idle(color: LightColors.secondaryColor, icon: Icon(Icons.abc)),
  error(
      color: LightColors.error, icon: Icon(Icons.cancel, color: Colors.white)),
  noInternet(
    color: LightColors.secondaryColor,
    icon: Icon(Icons.wifi_off_rounded, color: Colors.black),
  ),
  success(
    color: LightColors.primaryColor,
    icon: Icon(Icons.check_circle_rounded, color: Colors.white),
  );

  const SnackBarState({required this.color, required this.icon});

  final Color color;
  final Icon icon;
}
