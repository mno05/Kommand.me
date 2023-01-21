import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
            ),
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
                padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                child: Text(
                  "Services",
                  style: TextStyle(
                    fontSize: Media.width(context) * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: Media.width(context)*0.005),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  SpecialContainer(context),
                  SpecialContainer(context),
                  SpecialContainer(context),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget SpecialContainer(BuildContext context) {
    double h = Media.height(context);
    double w = Media.height(context);

    return Container(
      margin: EdgeInsets.only(left: w * 0.013, right: w * 0.013),
      height: Media.height(context) * 0.65,
      width: Media.width(context) * 0.29,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: AssetImage("img/test.jpeg"), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xffff8a00),
                Colors.transparent,
              ],
            )),
        child: Stack(
          children: [
            Positioned(
                bottom: 11,
                left: 10,
                child: Container(
                  height: 60,
                  width: 8,
                  color: Colors.blue,
                )),
            Positioned(
              bottom: 11,
              left: 10 + 10,
              child: Container(
                transform: Matrix4.rotationZ(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OPTIMUS",
                      style: GoogleFonts.niconne(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      "CORP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
