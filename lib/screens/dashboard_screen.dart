import 'package:demoproject/resources/styles.dart';
import 'package:demoproject/resources/used_parts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../resources/strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  color: const Color(0xff50c2c9),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 133.0,
                      ),
                      SvgPicture.asset('assets/icons/ellipse_11.svg'),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const Text(
                        dashboardHeader,
                        style: regularTextStyle,
                      ),
                      const SizedBox(
                        height: 35.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 25.0,
                  ),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      dashboardGreetings,
                      textAlign: TextAlign.right,
                      style: regularTextStyle,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    child: SvgPicture.asset('assets/icons/ellipse_12.svg'),
                    width: 120.0,
                    height: 120.0,
                  ),
                ),
                const SizedBox(
                  height: 21.0,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 27.0,
                    ),
                    child: Text(tasksList, style: regularTextStyle),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 31.0, right: 21.0, bottom: 36),
                  child: Container(
                    width: 323,
                    height: 205,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 21.0,
                        right: 34.0,
                        top: 26.0,
                        bottom: 20.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(tasksList),
                              const Icon(Icons.publish),
                            ],
                          ),
                          const SizedBox(
                            height: 29.0,
                          ),
                          createToDoList(tasks),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              child: buildCircles(),
            ),
          ],
        ),
      ),
    );
  }
}
