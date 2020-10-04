import 'package:doh_kyaung_taw/models/subject.dart';
import 'package:doh_kyaung_taw/widgets/subject_card.dart';
import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/constants.dart';

class SubjectGridViewBuilder extends StatelessWidget {
  SubjectGridViewBuilder({this.subjectList});
  final List<Subject> subjectList;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      children: List.generate(
        subjectList.length,
        (index) {
          final listData = subjectList[index];
          return SubjectCard(
            title: listData.title,
            imagePath: '$imagePath${listData.imagePath}',
            onTap: () {
              print(listData.key);
            },
          );
        },
      ),
    );
  }
}
