import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  CustomTab({
    required this.tabTitle,
    Key? key,
  }) : super(key: key);

  String tabTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.purple),
      child: Center(
        child: Text(
          tabTitle,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
