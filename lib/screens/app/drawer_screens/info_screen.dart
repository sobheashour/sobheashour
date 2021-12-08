import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'INFO',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20,
              end: 20,
              bottom: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('FACEBOOK'),
                    style: TextButton.styleFrom(
                        minimumSize: Size(0, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ))),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Twitter'),
                    style: TextButton.styleFrom(
                      minimumSize: Size(0, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 35,
            thickness: 5,
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.grey.shade500,
            indicatorColor: Colors.teal,
            onTap: (int selectedTabIndex){
             setState(() {
               _selectedTabIndex = selectedTabIndex;
             });
            },
            tabs: [
              Tab(text: 'SIGN IN'),
              Tab(text: 'SIGN UP'),
            ],
          ),
          IndexedStack(
            index: _selectedTabIndex,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
          // TabBarView(
          //   physics: NeverScrollableScrollPhysics(),
          //   controller: _tabController,
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       alignment: AlignmentDirectional.center,
          //       child: Text('SIGN IN'),
          //     ),
          //     Container(
          //       alignment: AlignmentDirectional.center,
          //       child: Text('SIGN UP'),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
