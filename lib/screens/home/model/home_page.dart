import 'package:armino/screens/widget/custom_chip.dart';
import 'package:armino/screens/widget/game_card.dart';
import 'package:armino/screens/widget/game_card_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "John",
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        leading: Container(
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Color(0xff7560E3),
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image_2.png"), fit: BoxFit.cover),
              shape: BoxShape.circle,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.search_outlined,
            color: Color(0xff6249DE),
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications_none_outlined,
            color: Color(0xff6249DE),
            size: 30,
          ),
        ],
      ),
      backgroundColor: const Color(0xff050B18),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff2B2D47),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19, right: 204),
              height: 30,
              width: 174,
              child: const Text(
                "Popular",
                style: TextStyle(
                    color: Color(0xff7560E3),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 245,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gameList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return GameCard(
                      img: gameList[i].img ?? "",
                      label: gameList[i].label ?? "",
                    );
                  }),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff2B2D47),
              margin: const EdgeInsets.only(top: 30, bottom: 10),
            ),
            SizedBox(
              height: 35,
              child:Row(
                children: [
                  Expanded (
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: const ShapeDecoration(
                            color: Colors.blue,
                            shape: StadiumBorder (

                            )
                        ),
                        child: const Text("All",style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),)
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: const ShapeDecoration(
                            color: Color(0xff2B2D47),
                            shape: StadiumBorder (

                            )
                        ),
                        child: const Text("PlayStation",style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),)
                    ),
                  ),
          Expanded(
            child:Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                          color: Color(0xff2B2D47),
                          shape: StadiumBorder (

                          )
                      ),
                      child: const Text("Nintendo",style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),)
                  ),),
          Expanded(
            child:Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                          color: Color(0xff2B2D47),
                          shape: StadiumBorder (

                          )
                      ),
                      child: const Text("x-box",style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),)
                  ),),

          Expanded(
            child:Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const ShapeDecoration(
                          color: Color(0xff2B2D47),
                          shape: StadiumBorder (

                          )
                      ),
                      child: const Text("PC",style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),)
                  ),)
                ],
              )
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gameList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return CustomChip(
                      label: gameList[i].label ?? "",
                    );
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(top: 19, right: 204),
              height: 30,
              width: 174,
              child: const Text(
                "Today",
                style: TextStyle(
                    color: Color(0xff7560E3),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const GameCardTwo(
              img: "assets/image_2.png",
              label: "FarCry 6",
            ),
            const GameCardTwo(
              img: "assets/image_2.png",
              label: "FarCry 6",
            ),
            Container(
              margin: const EdgeInsets.only(top: 19, right: 204),
              height: 30,
              width: 174,
              child: const Text(
                "This Week",
                style: TextStyle(
                    color: Color(0xff7560E3),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const GameCardTwo(
              img: "assets/image_2.png",
              label: "FarCry 6",
            ),
            const GameCardTwo(
              img: "assets/image_2.png",
              label: "FarCry 6",
            ),
          ],
        ),
      )),
    );
  }
}
