import 'package:expensestracke/AddCourse.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final bool _pinned = false;
  final bool _snap = true;
  final bool _floating = true;

  final List<String> courseTitles = [
    'Introduction to Programming',
    'Web Development Fundamentals',
    'Mobile App Development',
    'Data Structures and Algorithms',
    'Machine Learning Basics',
    'Introduction to Programming',
    'Web Development Fundamentals',
    'Mobile App Development',
    'Data Structures and Algorithms',
    'Machine Learning Basics',
  ];
  final List<String> image = [
    'images/Dash.png',
    'images/lake.jpg',
    'images/Dash.png',
    'images/lake.jpg',
    'images/Dash.png',
    'images/Dash.png',
    'images/lake.jpg',
    'images/Dash.png',
    'images/lake.jpg',
    'images/Dash.png',
  ];
  Future<void> _navigationToAddCourseSelection(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddCourse()));
    print("data from add Screen $result");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(title: Text('Item 1')),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            pinned: _pinned,
            surfaceTintColor: Colors.white10,
            snap: _snap,
            floating: _floating,
            expandedHeight: 50,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Expense tracker',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              centerTitle: false,
              collapseMode: CollapseMode.parallax,
            ),
            actions: [
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    _navigationToAddCourseSelection(context);
                  }),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Center(
                    child: ListTile(
                  leading: CircleAvatar(
                    foregroundImage: AssetImage(image[index]),
                  ),
                  title: Text(courseTitles[index]),
                  subtitle: Text(courseTitles[index]),
                ));
              },
              childCount: courseTitles.length,
            ),
          ),
        ],
      ),
    );
  }
}
