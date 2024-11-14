import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_managements/Controllers/exampleThree.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
 // bool notification = false;
  final ExampleThreeController controller = Get. put(ExampleThreeController());

 
  @override
  Widget build(BuildContext context) {
  //  print(notification);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Three "),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications"
                ),
                Obx(() {
                  return Switch(value: controller.notification.value, onChanged: controller.changeNotification);
                },)
              ],
            )
          ],
        ),
      ),
    );
  }
}