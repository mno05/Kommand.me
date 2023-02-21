import 'package:flutter/material.dart';
import 'package:kommad_me/tools/Media.dart';

class ServiceContainer extends StatelessWidget {
  void Function()? onTap;
  String image;
  Color color;
  String firstName;
  String secondName;
  ServiceContainer({
    super.key,
    required this.image,
    required this.color,
    required this.firstName,
    required this.onTap,
    this.secondName = "",

  });
  @override
  Widget build(BuildContext context) {
    double h = Media.height(context);
    double w = Media.height(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: w * 0.013, right: w * 0.013),
        height: Media.height(context) * 0.65,
        width: Media.width(context) * 0.29,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  color,
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
                left: 20,
                child: Container(
                  // transform: Matrix4.rotationZ(-0.11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstName,
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontSize: 23,
                          fontFamily: "Tommy",
                        ),
                      ),
                      Text(
                        secondName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: "Tommy",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
