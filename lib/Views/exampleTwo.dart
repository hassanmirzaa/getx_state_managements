import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_managements/Controllers/exampleTwoController.dart';

class ExampleTwoScreen extends StatelessWidget {
   ExampleTwoController controller = Get.put(ExampleTwoController());
   ExampleTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Two Screen "),
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
            color: Colors.red.withOpacity(controller.opacity.value),
            height: 200,
            width: 200,
          );
          },),
          Obx(() {
            return Slider(
              activeColor: Colors.deepPurple,
              value: controller.opacity.value, onChanged: (value) {
           controller.setOpacity(value) ;
          },);
          },)
        ],
      ),
    );
  }
}