import 'package:flutter/material.dart';
import 'class_card.dart';
import 'package:doh_kyaung_taw/constants.dart';
import 'package:doh_kyaung_taw/screens/subject_screen.dart';

class ClassGridViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      childAspectRatio: (4 / 2),
      children: List.generate(
        classNames.length,
        (index) {
          return ClassCard(
            title: classNames[index],
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SubjectScreen(
                            classIndex: index,
                          )));
              print(index);
            },
          );
        },
      ),
    );
  }
}
