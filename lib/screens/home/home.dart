import 'package:flutter/material.dart';
import 'package:teesco/screens/leaderboard/leaderboard.dart';
import 'package:teesco/screens/org_info/org_info.dart';
import 'package:teesco/screens/organisation_list/organisation_list.dart';
import 'package:teesco/screens/query_section/query_section.dart';
import 'package:teesco/screens/tasks/tasks.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    OrganisationInfoScreen(),
    QuerySectionScreen(),
    null,
    LeaderBoardScreen(),
    TasksScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black26,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  color: Colors.grey,
                ),
                title: Text("Groups")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.grey,
                ),
                title: Text("Query")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event_available,
                  color: Colors.grey,
                ),
                title: Text("Tasks")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.flag,
                  color: Colors.grey,
                ),
                title: Text("LeaderBoard"))
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 2)
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OrganisationListScreen()));
      _selectedIndex = index;
    });
  }
}
