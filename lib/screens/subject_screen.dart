import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/screens/my_drawer.dart';
import 'package:doh_kyaung_taw/constants.dart';
import 'package:doh_kyaung_taw/models/subject.dart';
import 'package:doh_kyaung_taw/widgets/subject_gridview_builder.dart';

class SubjectScreen extends StatelessWidget {
  SubjectScreen({this.classIndex});
  final int classIndex;
  bool isPrimary = false;
  List<Subject> subjectList;

  void checkClass() {
    if (classIndex < 6) {
      isPrimary = true;
    }

    if (classIndex == 0) {
      subjectList = [
        Subject(
            title: 'အသုံးမပြုနိုင်သေးပါ', imagePath: '/sorry.png', key: 'sry'),
      ];
    } else if (classIndex > 0 && classIndex < 5) {
      subjectList = [
        Subject(title: 'မြန်မာစာ', imagePath: '/myanmarsar.png', key: 'mya'),
        Subject(title: 'အင်္ဂလိပ်စာ', imagePath: '/english.png', key: 'eng'),
        Subject(title: 'သင်္ချာ', imagePath: '/primarymath.png', key: 'math'),
        Subject(title: 'သိပ္ပံ', imagePath: '/science.png', key: 'sci'),
        Subject(title: 'လူမှုရေး', imagePath: '/thought.png', key: 'lumu'),
      ];
    } else if (classIndex >= 6 && classIndex < 8) {
      subjectList = [
        Subject(title: 'မြန်မာစာ', imagePath: '/myanmarsar.png', key: 'mya'),
        Subject(title: 'အင်္ဂလိပ်စာ', imagePath: '/english.png', key: 'eng'),
        Subject(title: 'သင်္ချာ-၁', imagePath: '/math.png', key: 'math1'),
        Subject(title: 'သင်္ချာ-၂', imagePath: '/ruler.png', key: 'math2'),
        Subject(title: 'သိပ္ပံ', imagePath: '/science.png', key: 'sci'),
        Subject(title: 'ပထဝီ', imagePath: '/geology.png', key: 'geo'),
        Subject(title: 'သမိုင်း', imagePath: '/history.png', key: 'his'),
      ];
    } else {
      subjectList = [
        Subject(
            title: 'အသုံးမပြုနိုင်သေးပါ', imagePath: '/sorry.png', key: 'sry'),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    checkClass();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Text(
                      classNames[classIndex],
                      style: TextStyle(fontSize: 15),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      isPrimary ? 'မူလတန်း' : 'အလယ်တန်း',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SubjectGridViewBuilder(
                  subjectList: subjectList,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
