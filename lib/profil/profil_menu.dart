// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilMenu extends StatelessWidget {
  const ProfilMenu({
    Key? key,
    required this.titleMenu,
    required this.iconMenu,
    this.endIcon = true,
    required this.onPress,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  final String titleMenu;
  final IconData iconMenu;
  final bool endIcon;
  final VoidCallback onPress;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: iconColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          iconMenu,
          color: Colors.white,
        ),
      ),
      title: Text(titleMenu),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).hoverColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(Icons.arrow_forward_ios, size: 18.0))
          : null,
    );
  }
}
