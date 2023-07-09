import 'package:drag_and_drop_game/Drag%20and%20drop/controller/Drag_drop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class Drag_and_drop extends StatefulWidget {
  const Drag_and_drop({super.key});

  @override
  State<Drag_and_drop> createState() => _Drag_and_dropState();
}

class _Drag_and_dropState extends State<Drag_and_drop> {
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
                            width: 250,
                          ),
                          DragTarget(
                            builder: (context, candidateData, rejectedData) =>
                                controller.isDropped.value
                                    ? Image.asset(
                                        "assets/images/apple.png",
                                        height: 15.h,
                                        width: 30.w,
                                      )
                                    : Image.asset(
                                        "assets/images/apple.png",
                                        height: 15.h,
                                        width: 30.w,
                                        color: Colors.grey.shade300,
                                      ),
                            onWillAccept: (data) {
                              return data == 'apple';
                            },
                            onAccept: (data) {
                              controller.isDropped.value = true;
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: DragTarget(
                              builder: (context, candidateData, rejectedData) =>
                                  controller.isb.value
                                      ? Image.asset(
                                          "assets/images/strawberry.png",
                                          height: 15.h,
                                          width: 30.w,
                                        )
                                      : Image.asset(
                                          "assets/images/strawberry.png",
                                          height: 15.h,
                                          width: 30.w,
                                          color: Colors.grey.shade300,
                                        ),
                              onWillAccept: (data) {
                                return data == 'strawberry';
                              },
                              onAccept: (data) {
                                controller.isb.value = true;
                              },
                            ),
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
                            width: 250,
                          ),
                          Obx(
                            () => Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Draggable(
                                data: 'strawberry',
                                feedback: Image.asset(
                                    "assets/images/strawberry.png",
                                    height: 20.h,
                                    width: 35.w),
                                child: controller.isb.value
                                    ? Image.asset(
                                        "assets/images/strawberry.png",
                                        height: 15.h,
                                        width: 30.w,
                                        color: Colors.grey,
                                      )
                                    : Image.asset(
                                        "assets/images/strawberry.png",
                                        height: 15.h,
                                        width: 30.w),
                                childWhenDragging: Image.asset(
                                    "assets/images/strawberry.png",
                                    height: 20.h,
                                    width: 35.w,
                                    color: Colors.grey.shade300),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Obx(
                            () => Draggable(
                              data: 'apple',
                              feedback: Image.asset("assets/images/apple.png",
                                  height: 20.h, width: 35.w),
                              child: controller.isDropped.value
                                  ? Image.asset(
                                      "assets/images/apple.png",
                                      height: 15.h,
                                      width: 30.w,
                                      color: Colors.grey,
                                    )
                                  : Image.asset(
                                      "assets/images/apple.png",
                                      height: 15.h,
                                      width: 30.w,
                                    ),
                              childWhenDragging: Image.asset(
                                  "assets/images/apple.png",
                                  height: 20.h,
                                  width: 35.w,
                                  color: Colors.grey.shade300),
                            ),
                          ),
                          SizedBox(
                            width: 140,
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
                                      Navigator.pushNamed(context, 'two');
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
