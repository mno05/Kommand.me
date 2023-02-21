import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kommad_me/Widgets/TextFieldC.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  TextEditingController prenom = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController postnom = TextEditingController();
  TextEditingController tel = TextEditingController();
  TextEditingController nbrEleve = TextEditingController();
  TextEditingController adresse = TextEditingController();
  TimeOfDay time = TimeOfDay.now();
  DateTime date = DateTime.now();
  String correctMinute = "";
  var _key = GlobalKey<FormState>();
  bool timeAndDateSelectionned = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h * 0.1),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: h * 0.5,
                  width: w * 0.3,
                  child: Image.asset("img/logo.png")),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              children: [
                Text(
                  "Prendre un  rendez-vous au bureau",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: h * 0.03),
                Center(
                  child: Wrap(
                    spacing: w * 0.03,
                    children: [
                      TextFieldC(
                        controller: prenom,
                        errM: "Renseigner le prenom",
                        hintText: "Prenom",
                      ),
                      TextFieldC(
                        controller: nom,
                        errM: "Renseigner le nom",
                        hintText: "nom",
                      ),
                      TextFieldC(
                        controller: postnom,
                        errM: "Renseigner le postnom",
                        hintText: "postnom",
                      ),
                      TextFieldC(
                        controller: tel,
                        errM: "Renseigner le télephone",
                        hintText: "télephone",
                        isNumber: true,
                      ),
                      TextFieldC(
                        controller: adresse,
                        errM: "Renseigner le adresse",
                        hintText: "adresse",
                      ),
                      TextFieldC(
                        controller: nbrEleve,
                        errM: "Renseigner le nombre d'eleve pour le suivis",
                        hintText: "Nombre d'élves",
                        isNumber: true,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showTimePicker(
                          context: context,
                          hourLabelText: "Heure",
                          useRootNavigator: false,
                          initialTime: TimeOfDay.now(),
                        ).then((value) {
                          setState(() {
                            time = value!;
          
                            correctMinute = time.minute > 10
                                ? time.minute.toString()
                                : "0${time.minute}";
                            timeAndDateSelectionned = true;
                          });
                        });
                        showDatePicker(
                                helpText: "Heure",
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2024))
                            .then((value) {
                          setState(() {
                            date = value!;
                          });
                        });
                      },
                      child: Text(timeAndDateSelectionned
                          ? "Changer"
                          : "Préciser l'heure et la date"),
                    ),
                    timeAndDateSelectionned
                        ? Text(
                            "Rendez-vous le ${date.day}/${date.month}/${date.year} à ${time.hour}h${correctMinute}",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )
                        : Container(),
                  ],
                ),
                ElevatedButton(onPressed: () {
                  if(_key.currentState!.validate()){
                    if(timeAndDateSelectionned){
                    print("Validate");

                    }else{
                      
                    }
                  }
                }, child: Text("Valider")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
