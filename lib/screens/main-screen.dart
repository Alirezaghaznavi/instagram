import 'package:flutter/material.dart';
import 'package:instagram/screens/activity-screen.dart';
import 'package:instagram/screens/explore-screen.dart';
import 'package:instagram/screens/home-screen.dart';
import 'package:instagram/screens/profile-screen.dart';
import 'add-post-screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedItemNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(
              () {
                selectedItemNumber = value;
                
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff1C1F2E),
          currentIndex: selectedItemNumber,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_home.png'),
              activeIcon: Image.asset('images/icon_active_home.png'),
              label: 'item1',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_search.png'),
              activeIcon:
                  Image.asset('images/icon_search_navigation_active.png'),
              label: 'item2',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_add_navigation.png'),
              activeIcon: Image.asset('images/icon_add_navigation_active.png'),
              label: 'item3',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_activity_navigation.png'),
              activeIcon:
                  Image.asset('images/icon_activity_navigation_active.png'),
              label: 'item4',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffC5C5C5),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/profile.png'),
                    ),
                  ),
                ),
              ),
              label: 'itme5,',
              activeIcon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffF35383),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/profile.png'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedItemNumber,
        children: getBody(),
      ),
    );
  }

  Future<dynamic> getnavigation(Widget screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  Widget getAppbar() {
    return Container(
      width: 428,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xff272B40),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/icon_home_n.png'),
            Image.asset('images/icon_search_n.png'),
            GestureDetector(
              onTap: () => getnavigation(AddPost()),
              child: Image.asset('images/icon_plus_n.png'),
            ),
            Image.asset('images/icon_hart_n.png'),
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  width: 24,
                  height: 24,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getBody() {
    return <Widget>[
      HomeScreen(),
      ExploreScreen(),
      AddPost(),
      ActivityScreen(),
      ProfileScreen(),
    ];
  }
}
