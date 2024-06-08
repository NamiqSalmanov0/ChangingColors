import 'package:flutter/material.dart';
import 'package:task_project/big_box.dart';
import 'package:task_project/mini_box.dart';

class MainPageShort extends StatefulWidget {
  const MainPageShort({super.key});

  @override
  State<MainPageShort> createState() => _MainPageShortState();
}

class _MainPageShortState extends State<MainPageShort> {
  Color selectedColor = Colors.black;
  final List<Color>myColor=[
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigBox(selectedColor: selectedColor),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: SizedBox(
              height: 68,
              child: Row(
                children: [
                  for(var i=0;i<myColor.length;i++)
                  MiniBox(
                    colores: myColor[i],
                    selectedColor: selectedColor,
                    onSelect: () {
                      selectedColor=myColor[i];
                      setState(() {
                        
                      });
                    },
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
