import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// kondisi
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
//init
    Widget navItem(String tittle, int index) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          children: [
            Text(
              tittle,
              style: GoogleFonts.getFont("Poppins",
                  textStyle: TextStyle(
                      fontWeight: index == selectedIndex
                          ? FontWeight.w500
                          : FontWeight.w300,
                      fontSize: 18,
                      color: Color(0xff1D1E3C))),
            ),
            Container(
              height: 2,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
// navigasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 72,
                  height: 40,
                ),
                Row(
                  children: [
                    navItem("Guide", 0),
                    SizedBox(
                      width: 20,
                    ),
                    navItem("Pricing", 1),
                    SizedBox(
                      width: 20,
                    ),
                    navItem("Team", 2),
                    SizedBox(
                      width: 20,
                    ),
                    navItem("Stories", 3),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff1D1E3C),
                        minimumSize: Size(160, 50),
                        shadowColor: Color(0xffFE998D),
                        elevation: 2),
                    onPressed: () {},
                    child: Text(
                      "My Account",
                      style: GoogleFonts.getFont("Poppins",
                          textStyle: TextStyle(
                            fontSize: 18,
                          )),
                    )),
              ],
            ),
// header
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/1.png",
              width: 550,
            ),
// navigasi bawah
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/icon_down.png", width: 24),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Scroll to Learn More",
                  style: GoogleFonts.getFont("Poppins",
                      textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
