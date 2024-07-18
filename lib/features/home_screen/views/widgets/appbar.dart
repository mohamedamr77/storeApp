import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onLeadingPressed;
  final VoidCallback onActionPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onLeadingPressed,
    required this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
      leading: IconButton(
        onPressed: onLeadingPressed,
        color: Colors.black,
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      actions: [
        IconButton(
          onPressed: onActionPressed,
          icon: const FaIcon(FontAwesomeIcons.cartPlus),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
