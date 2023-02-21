import 'package:flutter/material.dart';
import 'package:kommad_me/tools/Media.dart';
import 'package:lottie/lottie.dart';

class CommandConatainer extends StatelessWidget {
  final String image;
  final String text;
  final bool isAnimate;
  Color fondColor;
  void Function()? onPressed;
  CommandConatainer({
    super.key,
    required this.image,
    required this.text,
    this.isAnimate = false,
    this.fondColor = Colors.blue,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    double h = Media.height(context);
    double w = Media.height(context);
    return isAnimate
        ? InkWell(
            onTap: onPressed,
            child: Container(
              height: Media.height(context) / 3.1,
              width: Media.width(context) / 3.2,
              margin: EdgeInsets.only(left: w * 0.013, right: w * 0.013),
              child: Center(
                child: Stack(
                  children: [
                    Center(child: Lottie.asset(image)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 11,
                            left: 20,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    text,
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: w * 0.03,
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
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: fondColor,
              ),
            ),
          )
        : InkWell(
            onTap: onPressed,
            child: Container(
              height: Media.height(context) / 3.1,
              width: Media.width(context) / 3.2,
              margin: EdgeInsets.only(left: w * 0.013, right: w * 0.013),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 11,
                      left: 20,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: w * 0.03,
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
