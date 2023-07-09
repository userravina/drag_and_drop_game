import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../controller/Drag_drop_controller.dart';

class forScreen extends StatefulWidget {
  const forScreen({super.key});

  @override
  State<forScreen> createState() => _forScreenState();
}

class _forScreenState extends State<forScreen> {
  Drag_drop_controller controller = Get.put(Drag_drop_controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 25.3.h,
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
                            width: 250,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 22, left: 15),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) =>
                                          controller.is1.value
                                              ? Image.asset(
                                                  "assets/images/11.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                            color: Colors.yellow,
                                                )
                                              : Image.asset(
                                                  "assets/images/11.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                                  color: Colors.yellow.shade50,
                                                ),
                                  onWillAccept: (data) {
                                    return data == '11';
                                  },
                                  onAccept: (data) {
                                    controller.is1.value = true;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 70, top: 9),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) =>
                                          controller.is2.value
                                              ? Image.asset(
                                                  "assets/images/44.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                            color: Colors.blue,
                                                )
                                              : Image.asset(
                                                  "assets/images/44.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                                  color: Colors.blue.shade50,
                                                ),
                                  onWillAccept: (data) {
                                    return data == '22';
                                  },
                                  onAccept: (data) {
                                    controller.is2.value = true;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 70, right: 60),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) =>
                                          controller.is3.value
                                              ? Image.asset(
                                                  "assets/images/33.png",
                                                  height: 10.h,
                                                  width: 24.w,
                                            color: Colors.green,
                                                )
                                              : Image.asset(
                                                  "assets/images/33.png",
                                                  height: 10.h,
                                                  width: 24.w,
                                                  color: Colors.green.shade50,
                                                ),
                                  onWillAccept: (data) {
                                    return data == '33';
                                  },
                                  onAccept: (data) {
                                    controller.is3.value = true;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 69, top: 65),
                                child: DragTarget(
                                  builder:
                                      (context, candidateData, rejectedData) =>
                                          controller.is4.value
                                              ? Image.asset(
                                                  "assets/images/44.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                            color: Colors.red,
                                                )
                                              : Image.asset(
                                                  "assets/images/44.png",
                                                  height: 10.h,
                                                  width: 20.w,
                                                  color: Colors.red.shade50,
                                                ),
                                  onWillAccept: (data) {
                                    return data == '44';
                                  },
                                  onAccept: (data) {
                                    controller.is4.value = true;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20.5.h,
                width: double.infinity,
                color: Color(0xff666666),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Obx(
                            () => Draggable(
                              data: '22',
                              feedback: Image.asset("assets/images/44.png",
                                  height: 20.h,
                                  width: 20.w,
                                  color: Colors.blue),
                              child: controller.is2.value
                                  ? Image.asset(
                                      "assets/images/44.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset("assets/images/44.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.blue),
                              childWhenDragging: Image.asset(
                                  "assets/images/44.png",
                                  height: 20.h,
                                  width: 20.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: '11',
                              feedback: Image.asset(
                                "assets/images/11.png",
                                height: 20.h,
                                width: 20.w,
                                color: Colors.yellow,
                              ),
                              child: controller.is1.value
                                  ? Image.asset(
                                      "assets/images/11.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset(
                                      "assets/images/11.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.yellow,
                                    ),
                              childWhenDragging: Image.asset(
                                  "assets/images/11.png",
                                  height: 20.h,
                                  width: 20.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: '44',
                              feedback: Image.asset("assets/images/44.png",
                                  height: 20.h, width: 20.w, color: Colors.red),
                              child: controller.is4.value
                                  ? Image.asset(
                                      "assets/images/44.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset("assets/images/44.png",
                                      height: 15.h,
                                      width: 20.w,
                                      color: Colors.red),
                              childWhenDragging: Image.asset(
                                  "assets/images/44.png",
                                  height: 20.h,
                                  width: 20.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: '33',
                              feedback: Image.asset("assets/images/33.png",
                                  height: 20.h,
                                  width: 25.w,
                                  color: Colors.green),
                              child: controller.is3.value
                                  ? Image.asset(
                                      "assets/images/33.png",
                                      height: 15.h,
                                      width: 25.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset("assets/images/33.png",
                                      height: 15.h,
                                      width: 25.w,
                                      color: Colors.green),
                              childWhenDragging: Image.asset(
                                  "assets/images/33.png",
                                  height: 20.h,
                                  width: 25.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 70,
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
                                      Navigator.pushNamed(context, 'winer');
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
