import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  SubjectCard({this.title, this.imagePath, this.onTap});
  final String title;
  final String imagePath;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Flexible(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Image.asset(imagePath),
            )),
            Divider(
              color: Theme.of(context).backgroundColor,
              thickness: 3,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
