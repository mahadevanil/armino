import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final String label;
  const CustomChip({Key? key, required this.label}) : super(key: key);

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child:  Chip(
          avatar: const CircleAvatar(
            backgroundImage: AssetImage("assets/Vector (6).png"),
          ),
          label: Text(widget.label,style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
      backgroundColor:const Color(0xff1F2137)),
    );
  }
}
