import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/widgets/class_gridview_builder.dart';

final int id = 0;

class ClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClassGridViewBuilder(),
    );
  }
}

// class ClassTile extends StatelessWidget {
//   ClassTile({this.title, this.onTap});
//   final String title;
//   final Function onTap;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(title),
//     );
//   }
// }
//
//
// ListView.separated(
// padding: EdgeInsets.all(8),
// itemBuilder: (context, index) {
// if (index == 0) {
// return Text('မူလတန်း',
// textAlign: TextAlign.start,
// style: TextStyle(
// fontSize: 20, fontFamily: 'MyanmarSanpya'));
// }
// index -= 1;
// return ClassTile(
// title: classNames[index],
// );
// },
// separatorBuilder: (context, index) {
// if (index == 6) {
// return Text('အလယ်တန်း',
// textAlign: TextAlign.start,
// style: TextStyle(
// fontSize: 20, fontFamily: 'MyanmarSanpya'));
// } else {
// return Divider();
// }
// },
// itemCount: classNames.length + 1),
