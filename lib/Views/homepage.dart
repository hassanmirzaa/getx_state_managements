import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_managements/Controllers/counter_controller.dart';
import 'package:getx_state_managements/Views/exampleThree.dart';
import 'package:getx_state_managements/Views/exampleTwo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 final  CounterController controller = Get.put(CounterController());
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx State Management"),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
        controller.incrementCounter();
      }),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Obx(() {
                return Text(controller.count.toString(),
              style: const TextStyle(
                fontSize: 40
              ),
              );
              },),

              MaterialButton(color: Colors.deepPurple,
                child: Text('Move to seconnd screen'),
                onPressed: (){
                Get.to(ExampleTwoScreen());
              }),

              MaterialButton(color: Colors.deepPurple,
                child: Text('Move to Third screen'),
                onPressed: (){
                Get.to(ExampleThree());
              }),
            ],
          )
        ),
      ),
    );
  }
}