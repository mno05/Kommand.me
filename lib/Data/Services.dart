import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:kommad_me/Data/Commandes.dart';
import 'package:kommad_me/Vue/ServiceDetails.dart';
import 'package:kommad_me/Widgets/SpecialContainer.dart';

class Service {
  static List<ServiceContainer> Services(BuildContext context) {
    return [
      ServiceContainer(
        image: "img/JeunEduc.PNG",
        color: Colors.blue,
        firstName: "Jeune",
        secondName: "EDUC",
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ServiceDetails(
                    NomService: "Jeune Educ",
                    Commands: Commandes.JeunEducCommands(context)),
              ));
        }),
      ),
      ServiceContainer(
        image: "img/optimus.jpeg",
        color: Colors.blue,
        firstName: "OPTIMUS",
        secondName: "CORP",
        onTap: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ServiceDetails(
                    NomService: "Optimus Corp",
                    Commands: Commandes.OptimusCommands()),
              ));
        }),
      ),
      ServiceContainer(
        image: "img/TNK.jpeg",
        color: Colors.yellow,
        firstName: "TNK",
        secondName: "",
        onTap: (() {
          print("TNK");
        }),
      ),
      ServiceContainer(
        image: "img/Ecobank.jpeg",
        color: Colors.pink,
        firstName: "EcoBank",
        secondName: "Chanllenge",
        onTap: (() {
          print("ECOBANK");
        }),
      ),
      ServiceContainer(
        image: "img/test.jpeg",
        color: Colors.blue,
        firstName: "MEMORIOM",
        secondName: "CORP",
        onTap: (() {
          print("MEMO");
        }),
      ),

      ServiceContainer(
        image: "img/TNK.jpeg",
        color: Colors.yellow,
        firstName: "TNK",
        secondName: "",
        onTap: (() {
          print("TNK");
        }),
      ),
      ServiceContainer(
        image: "img/Ecobank.jpeg",
        color: Colors.pink,
        firstName: "EcoBank",
        secondName: "Chanllenge",
        onTap: (() {
          print("ECOBANK");
        }),
      ),
      ServiceContainer(
        image: "img/test.jpeg",
        color: Colors.blue,
        firstName: "MEMORIOM",
        secondName: "CORP",
        onTap: (() {
          print("MEMO");
        }),
      ),
    ];
  }
}
