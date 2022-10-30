import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/done_page.dart';
import '../pages/todolist_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: FaIcon(FontAwesomeIcons.ellipsisVertical,
                  color: Colors.white),
            )
          ],
          title: Text("To_Do_List", style: TextStyle(color: Colors.white)),
          bottom: const TabBar(tabs: [
            Tab(icon: FaIcon(FontAwesomeIcons.list, color: Colors.white)),
            Tab(icon: FaIcon(FontAwesomeIcons.listCheck, color: Colors.white))
          ]),
        ),
        body: TabBarView(children: [todoPage(), DonePage()]),
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/add");
          },
          icon: const FaIcon(
            FontAwesomeIcons.circlePlus,
          ),
          color: Colors.cyan,
          iconSize: 80,
        ),
      ),
    );
  }
}
