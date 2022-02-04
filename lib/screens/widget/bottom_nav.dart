import 'package:armino/screens/home/model/calender.dart';
import 'package:armino/screens/home/model/fav.dart';
import 'package:armino/screens/home/model/home_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  List<Widget> myTabs = [
    const HomePage(title: 'Flutter Demo Home Page'),
    const Calender(),
    const Fav()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: myTabs,
      ),
      bottomNavigationBar: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomAppBar(
          color: const Color(0xff050B18),
          child: TabBar(
            indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                borderSide: BorderSide(
                  color: Color(0xff7560E3),
                  width: 5,
                )),
            labelColor: const Color(0xff7560E3),
            unselectedLabelColor: const Color(0xff696C75),
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.list),
              ),
              Tab(
                icon: Icon(Icons.calendar_today_outlined),
              ),
              Tab(
                icon: Icon(Icons.favorite_outline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
