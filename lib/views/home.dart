import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:laser_slides/constants/app_constants.dart';
import 'package:laser_slides/controllers/osc_controller.dart';
import 'package:laser_slides/views/about.dart';
import 'package:laser_slides/views/home_page.dart';
import 'package:laser_slides/widgets/custom_card.dart';
import 'package:laser_slides/widgets/custom_textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? selectedIndex = 0;

  List screens = [
    HomePage(),
    const About()
  ];
  OSCController oscController = Get.put(OSCController());
  bool isChecked = false;
  late ConfettiController confettiController;

  @override
  void initState() {
    super.initState();
    confettiController = ConfettiController(duration: Duration(seconds: 2));
  }


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
        Container(
          height: h * 0.15,
          width: w,
            padding: EdgeInsets.only(left: 30,top:60),
            child: Text("Welcome to Laser Slides !",style: TextStyle(fontFamily: 'sen',fontSize: 60),),
        ),
        Positioned(
          top: h * 0.16,
          child: Container(
            height: h * 0.08,
            width: w,
              padding: EdgeInsets.only(left: 30,top:0),
              child: const Text("Your ultimate presentation companion",style: TextStyle(fontFamily: 'sen',fontSize: 30,color: Colors.grey),),
          ),
        ),
          Center(
            child: Container(
              width: w,
              height: h * 0.7,
              padding: const EdgeInsets.only(top:100,left: 40,right: 40),
              child: AnimationLimiter(
                child: GridView.count(
                  crossAxisSpacing: 30,
                  crossAxisCount:  MediaQuery.of(context).size.width > 1000 ? 3 : 2,
                    children: List.generate(3,
                      (int index){
                        return AnimationConfiguration.staggeredGrid(
                          position: index, 
                          duration: const Duration(milliseconds: 375),
                          columnCount:  MediaQuery.of(context).size.width > 1000 ? 3 : 2,
                          child: ScaleAnimation(
                            child: FadeInAnimation(
                              child: CustomCard(index: index,oscController: oscController,),
                            ),
                          )
                        );
                      }
                    ),
                  ),
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: -20,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(218, 33, 149, 243)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 150,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(218, 244, 67, 54)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 300,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(215, 255, 235, 59)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 450,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(213, 76, 175, 79)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 600,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(227, 244, 67, 54)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 750,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(218, 255, 235, 59)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 900,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromARGB(222, 33, 149, 243)
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            left: 1050,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Color.fromARGB(222, 244, 67, 54)
              ),
            ),
          ),Positioned(
            bottom: -120,
            left: 1200,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Color.fromARGB(225, 76, 175, 79)
              ),
            ),
          ),
        ],
      ),
    );
  }
}




/*

SafeArea(
        child: screens[selectedIndex!],
      ),
*/ 