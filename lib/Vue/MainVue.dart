import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kommad_me/Data/Services.dart';
import 'package:kommad_me/Widgets/SpecialContainer.dart';
import 'package:kommad_me/tools/Media.dart';

class MainVue extends StatefulWidget {
  const MainVue({super.key});

  @override
  State<MainVue> createState() => _MainVueState();
}

class _MainVueState extends State<MainVue> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    super.initState();
  }

  Widget buildConatiner(Cont) => Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
        child: Cont,
      );

  Widget search() {
    return Container(
      height: Media.height(context) * 0.06,
      width: Media.width(context) * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 3, top: 0),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: "Effectuez une recherche",
            hintStyle: TextStyle(
                fontSize: 12,
                // fontFamily: "Milky",
                fontWeight: FontWeight.bold),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background.jpg"), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Media.height(context) * 0.1),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: Media.height(context) * 0.5,
                      width: Media.width(context) * 0.3,
                      child: Image.asset("img/logo.png")),
                  search(),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 3,
                  width: Media.width(context),
                  color: Color(0xffff8a00),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, bottom: 8.0, top: 2),
                  child: Text(
                    "Services",
                    style: TextStyle(
                      fontSize: Media.width(context) * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Milky",
                    ),
                  ),
                ),
                SizedBox(
                  height: Media.height(context) * 0.6,

                  child: CarouselSlider.builder(
                      itemCount: Service.Services(context).length,
                      itemBuilder: (context, index, realIndex) {
                        // return Service.Services()[index];
                        return buildConatiner(Service.Services(context)[index]);
                      },
                      options: CarouselOptions(
                          height: Media.height(context),
                          enlargeCenterPage: true,
                          autoPlay: true,
                          disableCenter: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: Media.width(context)*0.00045,
                          scrollDirection: Axis.horizontal)),

                  // child: Row(
                  //   children: [
                  //     // Container(
                  //     //   margin:
                  //     //       EdgeInsets.only(left: Media.width(context) * 0.005),
                  //     //   height: 100,
                  //     //   decoration: BoxDecoration(
                  //     //       color: Colors.black38,
                  //     //       borderRadius: BorderRadius.circular(20)),
                  //     //   child: Icon(
                  //     //     Icons.chevron_right,
                  //     //     color: Colors.white,
                  //     //     size: 25,
                  //     //   ),
                  //     // ),
                  //     Container(
                  //       height: 100,
                  //       decoration: BoxDecoration(
                  //         color: Colors.black38,
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       child: Icon(
                  //         Icons.chevron_left,
                  //         color: Colors.white,
                  //         size: 25,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
