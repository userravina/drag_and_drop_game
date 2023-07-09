import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../controller/Drag_drop_controller.dart';

class twoScreen extends StatefulWidget {
  const twoScreen({super.key});

  @override
  State<twoScreen> createState() => _twoScreenState();
}

class _twoScreenState extends State<twoScreen> {
  Drag_drop_controller controller = Get.put(Drag_drop_controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 22.3.h,
                width: double.infinity,
                color: Color(0xff999999),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back))
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 180,
                          ),
                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                                controller.isc.value
                                    ? Image.asset(
                                        "assets/images/orange.png",
                                        height: 15.h,
                                        width: 30.w,
                                      )
                                    : Image.asset(
                                        "assets/images/orange.png",
                                        height: 15.h,
                                        width: 30.w,
                                        color: Colors.grey.shade300,
                                      ),
                            onWillAccept: (data) {
                              return data == 'orange';
                            },
                            onAccept: (data) {
                              controller.isc.value = true;
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                                controller.ise.value
                                    ? Image.asset(
                                        "assets/images/banana.png",
                                        height: 15.h,
                                        width: 30.w,
                                      )
                                    : Image.asset(
                                        "assets/images/banana.png",
                                        height: 15.h,
                                        width: 30.w,
                                        color: Colors.grey.shade300,
                                      ),
                            onWillAccept: (data) {
                              return data == 'banana';
                            },
                            onAccept: (data) {
                              controller.ise.value = true;
                            },
                          ),

                          SizedBox(
                            width: 50,
                          ),
                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                                controller.isd.value
                                    ? Image.asset(
                                        "assets/images/grapes.png",
                                        height: 15.h,
                                        width: 30.w,
                                      )
                                    : Image.asset(
                                        "assets/images/grapes.png",
                                        height: 15.h,
                                        width: 30.w,
                                        color: Colors.grey.shade300,
                                      ),
                            onWillAccept: (data) {
                              return data == 'grapes';
                            },
                            onAccept: (data) {
                              controller.isd.value = true;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 25.5.h,
                width: double.infinity,
                color: Color(0xff666666),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 180,
                          ),
                          Obx(
                            () => Draggable(
                              data: 'grapes',
                              feedback: Image.asset(
                                "assets/images/grapes.png",
                                height: 20.h,
                                width: 35.w,
                              ),
                              child: controller.isd.value
                                  ? Image.asset(
                                      "assets/images/grapes.png",
                                      height: 15.h,
                                      width: 30.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset(
                                      "assets/images/grapes.png",
                                      height: 15.h,
                                      width: 30.w,
                                    ),
                              childWhenDragging: Image.asset(
                                  "assets/images/grapes.png",
                                  height: 20.h,
                                  width: 35.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: 'orange',
                              feedback: Image.asset("assets/images/orange.png",
                                  height: 20.h, width: 35.w),
                              child: controller.isc.value
                                  ? Image.asset(
                                      "assets/images/orange.png",
                                      height: 15.h,
                                      width: 30.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset("assets/images/orange.png",
                                      height: 15.h, width: 30.w),
                              childWhenDragging: Image.asset(
                                  "assets/images/orange.png",
                                  height: 20.h,
                                  width: 35.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: 'banana',
                              feedback: Image.asset("assets/images/banana.png",
                                  height: 20.h, width: 35.w),
                              child: controller.ise.value
                                  ? Image.asset(
                                      "assets/images/banana.png",
                                      height: 15.h,
                                      width: 30.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset("assets/images/banana.png",
                                      height: 15.h, width: 30.w),
                              childWhenDragging: Image.asset(
                                  "assets/images/banana.png",
                                  height: 20.h,
                                  width: 35.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50.7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'tree');
                                    },
                                    child: Text("Next"),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey.shade800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
