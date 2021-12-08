import 'package:flutter/material.dart';
import 'package:ui_app_vp8/screens/app/drawer_screens/tabs/about_screen.dart';
import 'package:ui_app_vp8/screens/app/drawer_screens/tabs/questions_screen.dart';

class FAQsScreen extends StatefulWidget {
  const FAQsScreen({Key? key}) : super(key: key);

  @override
  _FAQsScreenState createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _tabController = TabController(length: 10, vsync: this);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: false,
          onTap: (value) {
            print('Tab Index: $value');
          },
          labelColor: Colors.blue.shade900,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue.shade900,
          indicatorWeight: 3,
          // labelPadding: EdgeInsets.only(bottom: 10),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
          // indicatorSize: TabBarIndicatorSize.tab,
          // indicator: BoxDecoration(
          //   color: Colors.transparent,
          //   border: Border.all(
          //     color: Colors.blue.shade900,
          //     width: 3,
          //   ),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Questions',
              icon: Icon(Icons.question_answer),
            ),
            Tab(
              text: 'About',
              icon: Icon(Icons.info),
            ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'FAQs',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          QuestionsScreen(),
          AboutScreen(),
        ],
      ),
    );
  }
}
