import 'package:craft_my_plate/constants.dart';
import 'package:flutter/material.dart';
import 'package:craft_my_plate/Activities/Pages/home.dart';
import 'package:craft_my_plate/Activities/Pages/wishlist.dart';
import 'package:craft_my_plate/Activities/Pages/orders.dart';
import 'package:craft_my_plate/Activities/Pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;
  final List<Widget> screens = const [
    Home(),
    Wishlist(),
    Orders(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
          child: Container(
            width: 51,
            height: 51,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF6318AF),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(42.50),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 9.35,
                  top: 9.35,
                  child: SizedBox(
                    width: 28.90,
                    height: 32.83,
                    child: Stack(children: [
                      Image.asset("assets/icons/Logo.png"),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, -2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(6),
            topLeft: Radius.circular(6),
          ),
          child: BottomAppBar(
            // shadowColor: Colors.black,
            // elevation: 10,
            // shape: CircularNotchedRectangle(),
            // notchMargin: 10,

            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  //left side tabs

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Home();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 0
                                ? const Icon(
                                    Icons.home_sharp,
                                    color: primary,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.home_outlined,
                                    color: gray_6,
                                    size: 30,
                                  ),
                            Text(
                              'Home',
                              style: GoogleFonts.getFont(fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size_1,
                                  color: currentTab == 0 ? primary : gray_6),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Wishlist();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 1
                                ? const Icon(
                                    Icons.favorite,
                                    color: primary,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                    color: gray_6,
                                    size: 30,
                                  ),
                            Text(
                              'Wishlist',
                              style: GoogleFonts.getFont(fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size_1,
                                  color: currentTab == 1 ? primary : gray_6),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  //right side tabs

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Orders();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 2
                                ? const Icon(
                                    Icons.dining_rounded,
                                    color: primary,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.dining_outlined,
                                    color: gray_6,
                                    size: 30,
                                  ),
                            Text(
                              'Orders',
                              style: GoogleFonts.getFont(fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size_1,
                                  color: currentTab == 2 ? primary : gray_6),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const Profile();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            currentTab == 3
                                ? const Icon(
                                    Icons.account_circle_rounded,
                                    color: primary,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.account_circle_outlined,
                                    color: gray_6,
                                    size: 30,
                                  ),
                            Text(
                              'Profile',
                              style: GoogleFonts.getFont(fontFamily,
                                  fontWeight: FontWeight.w400,
                                  fontSize: size_1,
                                  color: currentTab == 3 ? primary : gray_6),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
