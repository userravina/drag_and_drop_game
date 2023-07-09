import 'package:drag_and_drop_game/Drag%20and%20drop/view/2screen.dart';
import 'package:drag_and_drop_game/Drag%20and%20drop/view/3screen.dart';
import 'package:drag_and_drop_game/Drag%20and%20drop/view/4screen.dart';
import 'package:drag_and_drop_game/Drag%20and%20drop/view/Drag%20and%20drop%20Screen.dart';
import 'package:drag_and_drop_game/Drag%20and%20drop/view/splash.dart';
import 'package:drag_and_drop_game/Drag%20and%20drop/view/winer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) =>  GetMaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
        '/':(p0) => Drag_and_drop(),
        'splash':(p0) => Splash(),
        'two':(p0) => twoScreen(),
        'tree':(p0) => treScreen(),
        'for':(p0) => forScreen(),
        'winer':(p0) => winer(),
    },
    ),

  ),);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
}
