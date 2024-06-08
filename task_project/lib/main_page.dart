

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  


  Color selectedColor=Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration:  BoxDecoration(
                color: selectedColor,
                borderRadius: const BorderRadius.all(Radius.circular(16))),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: SizedBox(
              height: 68,
              child: Row( 
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        selectedColor=Colors.blue;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                             child: selectedColor==Colors.blue? const Icon(Icons.check):null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        selectedColor=Colors.red;
                        setState(() {
                          
                        });
                      }, 
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                            child:  selectedColor== Colors.red ? const Icon(Icons.check) :null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        selectedColor=Colors.green;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: selectedColor==Colors.green? const Icon(Icons.check):null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        selectedColor=Colors.orange;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: selectedColor==Colors.orange? const Icon(Icons.check):null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        selectedColor=Colors.purple;
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: selectedColor==Colors.purple? const Icon(Icons.check):null,
                      ),
                    ),
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
