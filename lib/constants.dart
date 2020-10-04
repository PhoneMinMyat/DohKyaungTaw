import 'package:doh_kyaung_taw/screens/class_screen.dart';
import 'package:doh_kyaung_taw/screens/knowledge_screen.dart';
import 'package:flutter/material.dart';
import 'package:doh_kyaung_taw/models/subject.dart';

final List<Widget> home_widgetOption = [
  ClassScreen(),
  KnowledgeScreen(),
  AboutUs()
];

const String imagePath = 'assets/images';

ThemeData darkThemeData = ThemeData.dark().copyWith(
    primaryColor: Color(0xff222831), backgroundColor: Color(0xff393e46));

ThemeData lightThemeData = ThemeData.light().copyWith(
    primaryColor: Color(0xff477998), backgroundColor: Color(0xfffce38a));

const List<String> classNames = [
  'သူငယ်တန်း (KG)',
  'ပထမတန်း (G-1)',
  'ဒုတိယတန်း (G-2)',
  'တတိယတန်း (G-3)',
  'စတုတ္ထတန်း (G-4)',
  'ပဥ္စမတန်း (G-5)',
  'ဆဌမတန်း (G-6)',
  'သတ္တမတန်း (G-7)',
  'အဌမတန်း (G-8)',
  'နဝမတန်း (G-9)'
];

List<Subject> knowledgeList = [
  Subject(title: 'စာစီစာကုံးရေးသားနည်း', imagePath: '/essay.png', key: 'sar'),
  Subject(
      title: 'Essay&Letter ရေးသားနည်း',
      imagePath: '/essay_letter.png',
      key: 'essay'),
  Subject(title: 'ကာယ', imagePath: '/sport.png', key: 'spo'),
  Subject(title: 'လက်မှုပညာ', imagePath: '/handicraft.png', key: 'han'),
  Subject(title: 'အခြေခံပန်းချီပညာ', imagePath: '/paint.png', key: 'art'),
  Subject(title: 'ဂီတပညာ', imagePath: '/music.png', key: 'music'),
];

//To show "About us"
const String aboutUs =
    "In 2020 March, all the school university and college were closed because of the first wave of covid-19. Now in the 2nd wave pandemic all the schools were stopped for 1 year. Only for the private students can learn from online learning system. But for the primry and middle students in goverment school were stopped learning. Therefore, a lot of children spend their time playing the games. Thinking for the children's future and their education, the students from YU, YUOE and Education college and also teacher in the job field made 'Our school', Non-Profit Organization. We made this app with the newest teaching methods. We also aimed to give useful help for the better education  for the children in the pandemic.";

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          aboutUs,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

Future<void> showDeveloperDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text('Developed by Phone Min Myat'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
