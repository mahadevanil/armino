import 'package:armino/screens/home/model/model.dart';
import 'package:flutter/material.dart';

import 'custom_chip.dart';

class GameCardTwo extends StatefulWidget {
  final String label;
  final String img;
  const GameCardTwo({Key? key, required this.label, required this.img})
      : super(key: key);

  @override
  _GameCardTwoState createState() => _GameCardTwoState();
}
bool isSelect = false;

class _GameCardTwoState extends State<GameCardTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 380,
      padding: const EdgeInsets.all(11),
      child: Column(
        children: [
          Image(image: AssetImage(widget.img)),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10) ), // radius of 10
                color: Color(0xff2B2D47),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.label,style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF)
                        ),),
                        const SizedBox(width: 30,),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSelect = !isSelect;
                              });
                            },
                            icon: isSelect
                                ? const Icon(Icons.favorite_outline,
                                color: Color(0xff6249DE))
                                : const Icon(Icons.favorite,
                                color: Color(0xff6249DE)))
                      ],
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Download",style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff696C75)
                      ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector.png"),
                                fit: BoxFit.cover
                            )
                      ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (1).png"),
                                fit: BoxFit.cover
                            )
                        ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (2).png"),
                                fit: BoxFit.cover
                            )
                        ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (3).png"),
                                fit: BoxFit.cover
                            )
                        ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (4).png"),
                                fit: BoxFit.cover
                            )
                        ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (5).png"),
                                fit: BoxFit.cover
                            )
                        ),),
                      Container(
                        height: 22.75,
                        width: 22.75,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Vector (6).png"),
                                fit: BoxFit.cover
                            )
                        ),),

                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
