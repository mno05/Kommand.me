import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kommad_me/Vue/JeunEduc/Aboutus.dart';
import 'package:kommad_me/Vue/JeunEduc/Appointment.dart';
import 'package:kommad_me/Vue/JeunEduc/FormulaireSuivi.dart';
import 'package:kommad_me/Widgets/CommandContainer.dart';

class Commandes {
  static List<CommandConatainer> OptimusCommands() {
    return [
      CommandConatainer(
          image: "img/mobile.png", text: 'Commander une application mobile'),
      CommandConatainer(
          image: "img/optiweb.png", text: 'Commander un site web'),
    ];
  }

  static List<CommandConatainer> JeunEducCommands(BuildContext context) {
    return [
      CommandConatainer(
        image: "assets/Decouvrir.json",
        text: 'Découvrir Jeune Educ',
        isAnimate: true,
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs(),))
      ),
      CommandConatainer(
        image: "assets/rdv.json",
        text: 'Prendre un rendez vous',
        isAnimate: true,
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Appointment(),))
        
      ),
      CommandConatainer(
        image: "assets/form.json",
        text: 'Formulaire du suivi scolaire',
        isAnimate: true,
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => FormulaireSuivi(),))

      ),
      CommandConatainer(
        image: "assets/paiement.json",
        text: 'Effectuez le paiement',
        isAnimate: true,
      ),
    ];
  }
}
