import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);
  static const String routeName = '/groupPage';

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Nhóm'),
      ),
      body: Text('body3'),
    );
  }
}
