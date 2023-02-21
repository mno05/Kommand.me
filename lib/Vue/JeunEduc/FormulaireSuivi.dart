import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kommad_me/Widgets/TextFieldC.dart';

class FormulaireSuivi extends StatefulWidget {
  const FormulaireSuivi({super.key});

  @override
  State<FormulaireSuivi> createState() => _FormulaireSuiviState();
}

class _FormulaireSuiviState extends State<FormulaireSuivi> {
  TextEditingController prenom = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController postnom = TextEditingController();
  TextEditingController tel = TextEditingController();
  TextEditingController nbrEleve = TextEditingController();
  TextEditingController adresse = TextEditingController();
  List<String> EnfantsPrenoms = [];
  List<String> EnfantsNoms = [];
  List<String> EnfantsClasse = [];
  List<String> EnfantsEcole = [];
  List<String> EnfantsDifficulte = [];
  List<String> EnfantsNombreSeance = [];

  List<TextFieldC> EnfantsTf = [];

  var _key = GlobalKey<FormState>();
  bool timeAndDateSelectionned = false;

  Enfants(nbr, w) {
    return Wrap(
      spacing: w * 0.03,
      children: [
        TextFieldC(
          hintText: "Prenom de l'eleve ${nbr}",
          errM: "Renseignez le prenom de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsPrenoms.add(p0),
        ),
        TextFieldC(
          hintText: "Nom de l'eleve ${nbr}",
          errM: "Renseignez le Nom de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsNoms.add(p0),
        ),
        TextFieldC(
          hintText: "Ecole de l'eleve ${nbr}",
          errM: "Renseignez le Ecole de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsEcole.add(p0),
        ),
        TextFieldC(
          hintText: "Classe de l'eleve ${nbr}",
          errM: "Renseignez le Classe de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsClasse.add(p0),
        ),
        TextFieldC(
          hintText: "Difficulté de l'eleve ${nbr}",
          errM: "Renseignez le Difficulté de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsDifficulte.add(p0),
        ),
        TextFieldC(
          hintText: "Nombre de séance de l'eleve ${nbr}",
          isNumber: true,
          errM: "Renseignez le Nombre de l'eleve ${nbr}",
          onChanged: (p0) => EnfantsNombreSeance.add(p0),
        ),
      ],
    );
  }

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
                child: Image.asset("img/logo.png"),
              ),
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
                  "Formulaire pour le suivis des éleves",
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
                        onChanged: (p0) {
                          var v = int.parse(
                            p0,
                            onError: (source) {
                              print(source);
                              return 0;
                            },
                          );
                          if (v == 0) {
                            print("Vous devez avoir plus d'un enfant");
                          } else {
                            if (v > 5) {
                              print(
                                  "Nous prenons en charge que 5 éleves à la fois");
                            } else {
                              //Generer les formulaires pour les enfants
                            }
                          }
                        },
                      ),
                    
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        if (timeAndDateSelectionned) {
                          print("Validate");
                        } else {}
                      }
                    },
                    child: Text("Valider")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
