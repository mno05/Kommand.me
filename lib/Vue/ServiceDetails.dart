import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kommad_me/Data/Commandes.dart';
import 'package:kommad_me/Data/Services.dart';
import 'package:kommad_me/Widgets/CommandContainer.dart';
import 'package:kommad_me/tools/Media.dart';

class ServiceDetails extends StatefulWidget {
  final String NomService;
  final List<CommandConatainer> Commands;
  const ServiceDetails({
    super.key,
    required this.NomService,
    required this.Commands,
  });

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
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
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 3,
                width: Media.width(context),
                color: Color(0xffff8a00),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 8.0, top: 2),
                child: Text(
                  widget.NomService,
                  style: GoogleFonts.niramit(
                    fontSize: Media.width(context) * 0.05,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // SizedBox(
              //   height: Media.height(context) * 0.06,                  // child: Row(
              // ),
              // ListView.builder(itemBuilder: )
              Wrap(
                spacing: 0.0,
                runSpacing: 5.0,
                children: widget.Commands,
              ),
              // SizedBox(height: 2),
              // CommandConatainer(),
            ],
          ),
        ),
      ),
    );
  }
}
