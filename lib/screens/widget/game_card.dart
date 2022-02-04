
import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  final String label;
  final String img;
  const GameCard({Key? key, required this.label, required this.img})
      : super(key: key);

  @override
  State<GameCard> createState() => _GameCardState();
}

bool isSelect = false;

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      height: 214,
      padding: const EdgeInsets.all(11),
      child: Column(
        children: [
          Image(image: AssetImage(widget.img)),
          Container(
            padding: const EdgeInsets.all(14),

    decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10) ), // radius of 10
      color: Color(0xff2B2D47),
    ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
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
          )
        ],
      ),
    );
  }
}
