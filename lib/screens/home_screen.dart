// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Image.asset('assets/images/img1.png'),
                      SizedBox(
                        height: 15.0,
                      ),
                      Image.asset('assets/images/img2.png'),
                    ],
                  ),
                );
              },
              childCount: 1, // Number of initial items
            ),
          ),
          SliverAppBar(
            //expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/img3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  subtitle: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Image.asset('assets/images/img5.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img6.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img7.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img8.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Services',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img9.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img10.png'),
                        SizedBox(
                          height: 15.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Delicious food with \n' 'professional service !',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff242424),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Image.asset('assets/images/img11.png'),
                      ],
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: _SliverAppBarDelegate(
          //     child: Container(
          //       color: Colors.white,
          //       padding: EdgeInsets.all(16.0),
          //       child: Text('Text Below Search Bar'),
          //     ),
          //     showText: _showText,
          //   ),
          // ),
        ],
      ),
    );
  }
}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate({
//     required this.child,
//     required this.showText,
//   });

//   final Widget child;
//   final bool showText;

//   @override
//   double get minExtent => showText ? 50.0 : 0.0;
//   @override
//   double get maxExtent => 50.0;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return child;
//   }

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
//     return showText != (oldDelegate as _SliverAppBarDelegate).showText;
//   }
// }
