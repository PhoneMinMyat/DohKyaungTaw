import 'package:doh_kyaung_taw/widgets/subject_card.dart';
import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/constants.dart';

class KnowledgeGridViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      children: List.generate(
        knowledgeList.length,
        (index) {
          final listData = knowledgeList[index];
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
