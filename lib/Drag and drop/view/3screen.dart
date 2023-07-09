import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../controller/Drag_drop_controller.dart';

class treScreen extends StatefulWidget {
  const treScreen({super.key});

  @override
  State<treScreen> createState() => _treScreenState();
}

class _treScreenState extends State<treScreen> {

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
                            width: 50,
                          ),
                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                            controller.ish.value
                                ? Image.asset(
                              "assets/images/3.png",
                              height: 15.h,
                              width: 30.w,
                            )
                                : Image.asset(
                              "assets/images/3.png",
                              height: 15.h,
                              width: 30.w,
                              color: Colors.grey.shade300,
                            ),
                            onWillAccept: (data) {
                              return data == '3';
                            },
                            onAccept: (data) {
                              controller.ish.value = true;
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                            controller.isi.value
                                ? Image.asset(
                              "assets/images/4.png",
                              height: 15.h,
                              width: 30.w,
                            )
                                : Image.asset(
                              "assets/images/4.png",
                              height: 15.h,
                              width: 30.w,
                              color: Colors.grey.shade300,
                            ),
                            onWillAccept: (data) {
                              return data == '4';
                            },
                            onAccept: (data) {
                              controller.isi.value = true;
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                            controller.isf.value
                                ? Image.asset(
                              "assets/images/1.png",
                              height: 15.h,
                              width: 30.w,
                            )
                                : Image.asset(
                              "assets/images/1.png",
                              height: 15.h,
                              width: 30.w,
                              color: Colors.grey.shade300,
                            ),
                            onWillAccept: (data) {
                              return data == '1';
                            },
                            onAccept: (data) {
                              controller.isf.value = true;
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                            controller.isg.value
                                ? Image.asset(
                              "assets/images/2.png",
                              height: 15.h,
                              width: 30.w,
                            )
                                : Image.asset(
                              "assets/images/2.png",
                              height: 15.h,
                              width: 30.w,
                              color: Colors.grey.shade300,
                            ),
                            onWillAccept: (data) {
                              return data == '2';
                            },
                            onAccept: (data) {
                              controller.isg.value = true;
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
                            width: 50,
                          ),
                          Obx(
                                () => Draggable(
                              data: '1',
                              feedback: Image.asset(
                                "assets/images/1.png",
                                height: 20.h,
                                width: 35.w,
                              ),
                              child: controller.isf.value
                                  ? Image.asset(
                                "assets/images/1.png",
                                height: 15.h,
                                width: 30.w,
                                color: Colors.grey,
                              )
                                  : Image.asset(
                                "assets/images/1.png",
                                height: 15.h,
                                width: 30.w,
                              ),
                              childWhenDragging: Image.asset(
                                  "assets/images/1.png",
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
                              data: '2',
                              feedback: Image.asset("assets/images/2.png",
                                  height: 20.h, width: 35.w),
                              child: controller.isg.value
                                  ? Image.asset(
                                "assets/images/2.png",
                                height: 15.h,
                                width: 30.w,
                                color: Colors.grey,
                              )
                                  : Image.asset("assets/images/2.png",
                                  height: 15.h, width: 30.w),
                              childWhenDragging: Image.asset(
                                  "assets/images/2.png",
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
                              data: '3',
                              feedback: Image.asset("assets/images/3.png",
                                  height: 20.h, width: 35.w),
                              child: controller.ish.value
                                  ? Image.asset(
                                "assets/images/3.png",
                                height: 15.h,
                                width: 30.w,
                                color: Colors.grey,
                              )
                                  : Image.asset("assets/images/3.png",
                                  height: 15.h, width: 30.w),
                              childWhenDragging: Image.asset(
                                  "assets/images/3.png",
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
                              data: '4',
                              feedback: Image.asset("assets/images/4.png",
                                  height: 20.h, width: 35.w),
                              child: controller.isi.value
                                  ? Image.asset(
                                "assets/images/4.png",
                                height: 15.h,
                                width: 30.w,
                                color: Colors.grey,
                              )
                                  : Image.asset("assets/images/4.png",
                                  height: 15.h, width: 30.w),
                              childWhenDragging: Image.asset(
                                  "assets/images/4.png",
                                  height: 20.h,
                                  width: 35.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 30,
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
                                      Navigator.pushNamed(context, 'for');
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
