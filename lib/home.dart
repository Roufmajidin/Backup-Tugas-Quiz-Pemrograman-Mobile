import 'package:bismillah_quiz_pemrograman/page/dashboard.dart';
import 'package:flutter/material.dart';
import 'page/dashboard.dart';
import 'page/saya.dart';
import 'page/buku.dart';
import 'page/setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 2;
  final List<Widget> screens = [
    Saya(),
    Setting(),
    Dashboard(),
    Buku(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActi  onButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Dashboard();
                          currentTab = 0;
                          });
                          
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Buku();
                          currentTab = 1;
                          });
                          
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book_sharp,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'E-Book',
                              style: TextStyle(
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Setting();
                          currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                         setState(() {
                            currentScreen = Saya();
                          currentTab = 3;
                         });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
