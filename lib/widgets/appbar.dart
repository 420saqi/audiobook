import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const ReusableAppBar({
    super.key,
    required this.title,
  });
  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(40),
        bottomLeft: Radius.circular(40),
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        iconTheme: const IconThemeData(
          color: whiteColor,
        ),
        backgroundColor: pinkColor,
        toolbarHeight: 100,
        title: Text(
          title,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
