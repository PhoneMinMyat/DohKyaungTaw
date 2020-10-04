import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/widgets/knowledge_gridview_builder.dart';

final int id = 1;

class KnowledgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: KnowledgeGridViewBuilder(),
    );
  }
}
