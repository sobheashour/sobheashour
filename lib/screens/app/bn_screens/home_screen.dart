import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'متجر العقارات',
          style: TextStyle(color: Colors.black,fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
          Expanded(
              child: Stack(
            children: [
              SizedBox(height: 10/2),
              Container(
                margin:EdgeInsets.only(top: 70.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight:  Radius.circular(40),
                    )
                ),
              ),
             ListView.builder(
              itemBuilder: (context, index) => Positioned(
                  top:0 ,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height:100.0,
                    width: 500,
                    //   width: double.infinity,
                    child: Image.asset('images/00.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
               itemCount: 5,

             ),

            ],
          ),
          )
          ],
        ),
      ),
     );
  }
}

class productCard extends StatelessWidget {
  const productCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical:10/2 ,horizontal:10
      ),
      height: 190,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
              color: Colors.red,
              boxShadow: [
              BoxShadow(
                offset: Offset(0 ,15),
                blurRadius: 22,
              color: Colors.black38
              )
              ]
            ),
          ),
          Positioned(child: Container(
           padding:EdgeInsets.symmetric(horizontal: 10),
            height: 160,
            width: 200,
           child: Image.asset('images/00.jpg',
          fit: BoxFit.cover,
           ),
          ))
        ],
      ),
    );

  }
}
