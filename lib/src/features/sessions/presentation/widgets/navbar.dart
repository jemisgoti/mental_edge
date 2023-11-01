import 'package:flutter/material.dart';
import 'package:mental_edge/src/core/theme/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    required this.iconPath,
    required this.onTap,
    this.index = 0,
    super.key,
  });
  final void Function(int index) onTap;
  final int index;
  final List<String> iconPath;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  @override
  void initState() {
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 88,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.iconPath
              .map(
                (String e) => InkWell(
                  splashColor: Colors.red,
                  onTap: () {
                    index = widget.iconPath.indexOf(e);
                    widget.onTap(index);
                    setState(() {});
                  },
                  child: ImageIcon(
                    AssetImage(
                      e,
                    ),
                    color: index == widget.iconPath.indexOf(e)
                        ? Colors.white
                        : grey,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
