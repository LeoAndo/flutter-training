import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    required this.isHiding,
    Key? key,
  }) : super(key: key);

  final bool isHiding;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: isHiding ? 32 : 60,
      color: const Color(0xFFFEEAE6),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _IconTextItem(
              deviceWidth: width,
              isHiding: isHiding,
              icon: Icons.home,
              title: 'Home',
            ),
            _IconTextItem(
              deviceWidth: width,
              isHiding: isHiding,
              icon: Icons.star,
              title: 'Favorite',
            ),
            _IconTextItem(
              deviceWidth: width,
              isHiding: isHiding,
              icon: Icons.favorite,
              title: 'Like',
            ),
            _IconTextItem(
              deviceWidth: width,
              isHiding: isHiding,
              icon: Icons.settings,
              title: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}

class _IconTextItem extends StatelessWidget {
  const _IconTextItem({
    Key? key,
    required this.deviceWidth,
    required this.isHiding,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final double deviceWidth;
  final bool isHiding;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.25 * (deviceWidth - 32),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(
              icon,
              color: const Color(0xFF442C2E),
              size: 24,
            ),
          ),
          AnimatedOpacity(
            opacity: isHiding ? 0 : 1,
            duration: const Duration(milliseconds: 120),
            curve: Curves.easeInQuart,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
