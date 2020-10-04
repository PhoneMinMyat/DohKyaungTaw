import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  ClassCard({this.title, this.onTap});
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Center(
          child: Text(
            title,
          ),
        ),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
