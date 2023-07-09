import 'package:craft_my_plate/lists.dart';
import 'package:flutter/material.dart';
import 'package:craft_my_plate/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: space_4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 33,
              width: 76,
              margin: const EdgeInsets.only(top: 5),
              // padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
              decoration: const BoxDecoration(
                color: primary10,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: TextButton(
                child: Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: size_5,
                      color: primary),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            // color: Colors.orange,

            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        contents[i].image,
                        width: 300,
                        // height: 300,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: size_16,
                            color: black1),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(fontFamily,
                            fontWeight: FontWeight.w300,
                            fontSize: size_7,
                            color: gray_2,
                            height: 1.5),
                      ),
                    ],
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildDot(index, context)),
            ),
          ),
          currentIndex == contents.length - 1
              ? getStartedButton(context)
              : nextButton(context)
        ],
      ),
    ));
  }

  Container nextButton(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(2),

        border: Border.all(color: primary20, width: 9.0),
      ),
      child: Container(
          height: 42,
          width: 42,
          // margin: const EdgeInsets.all(40),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: primary),
          child: IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {
              if (currentIndex == contents.length - 1) {
                print("home");
                Navigator.pushNamed(context, '/login');
              }
              _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
          )),
    );
  }

  Container getStartedButton(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      padding: const EdgeInsets.only(left: 15, right: 10),
      decoration: const BoxDecoration(
        color: primary20,
        borderRadius: BorderRadius.all(Radius.circular(50)),

        // border: Border.all(color: primary20, width: 9.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: size_7,
                color: primary,
                height: 1.25),
          ),
          Container(
              height: 42,
              width: 42,
              // margin: const EdgeInsets.all(40),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: primary),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward),
                color: Colors.white,
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushNamed(context, '/login');
                  }
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
              )),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      // width: currentIndex == index ? 20 : 10,
      width: 24,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentIndex == index ? primary : primary.withOpacity(0.1)),
    );
  }
}
