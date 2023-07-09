import 'package:flutter/material.dart';

void main() {
  runApp(const Splash());
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
    );
  }

  @override
  State<Splash> createState() => SplashScreen1();
}

class SplashScreen1 extends State<Splash> {
  bool animate = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        animate = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.pushNamed(context, '/walkthrough');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: 375,
          height: 667,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: animate ? const Color(0xFFF7E5B7) : Colors.white),
          child: Stack(
            children: [
              Image.asset("assets/icons/Vector.png"),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                left: animate ? 114 : 136,
                top: animate ? 184 : 216,
                child: SizedBox(
                  width: animate ? 124.62 : 88,
                  height: animate ? 141.55 : 110,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 1000),
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: animate ? 124.62 : 88,
                          height: animate ? 141.55 : 110,
                          child: Stack(children: [
                            Image.asset("assets/icons/splashLogo.png"),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                left: 73,
                top: animate ? 338 : 426,
                child: Opacity(
                  opacity: animate ? 1.0 : 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: animate ? 230 : 0,
                        child: Text(
                          'Craft My Plate',
                          style: TextStyle(
                            color: animate
                                ? const Color(0xFFF7E5B7)
                                : Colors.white,
                            fontSize: 32,
                            fontFamily: 'Capriola',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: animate ? 3 : 11),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You customize, We cater',
                              style: TextStyle(
                                color: animate
                                    ? const Color(0xFFF7E5B7)
                                    : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Capriola',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                left: 110,
                top: animate ? -50 : 344,
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Color(0xFFF7E5B7),
                    fontSize: 32,
                    fontFamily: 'Capriola',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
