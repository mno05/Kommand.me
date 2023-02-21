import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Causes",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga magnam et saepe iste inventore dicta sint voluptatem mollitia dolores recusandae, nulla soluta, architecto quam quasi fugiat facere ipsam voluptatum ab\nModi voluptatum tenetur deserunt beatae porro ad impedit, sunt corporis illo exercitationem expedita quaerat error ipsam culpa laboriosam rem placeat numquam, libero, sed quisquam similique accusamus aut alias amet. Maxime.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Solutions",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga magnam et saepe iste inventore dicta sint voluptatem mollitia dolores recusandae, nulla soluta, architecto quam quasi fugiat facere ipsam voluptatum ab\nModi voluptatum tenetur deserunt beatae porro ad impedit, sunt corporis illo exercitationem expedita quaerat error ipsam culpa laboriosam rem placeat numquam, libero, sed quisquam similique accusamus aut alias amet. Maxime.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Services",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Wrap(
                  children: [
                    Services(
                      h,
                      w,
                      titre: "Rémise à niveau",
                      message:
                          "Il s’agit ici des enfants ayant des compétences sensiblement réduites par rapport à la classe actuelle.\n L’ objectif ici est de faire marche arrière et combler les vides Test de départ selon la fiche technique puis programme des leçons manquantes par ordre de nécessité",
                    ),
                    Services(
                      h,
                      w,
                      titre: "Répétitorat",
                      message:
                          "Il s’agit ici d’un programme de révision et d’ évaluation. L’apprenant possède les compétences équivalentes à sa classe actuelle ou à peu près. \nTout d’abord un test de départ et l’ observation pour confirmer que l’apprenant est à peu près ou légèrement au dessus du niveau demandé. \nAu programme :\n• vérification du journal de classe,\n• vérification des notes de classe,\n• vérification des cahiers d’évaluation de l’école.\n• révision des matières du jour.",
                    ),
                    Services(
                      h,
                      w,
                      titre: "Préceptorat",
                      message:
                          "Ici, les matières abordées les sont selon le besoin. Ces matières non maîtrisées semblent nouvelles pour l’apprenant. Nous abordons les matières encore non vues à l’ école. \nC'est destiné aux élèves brillants et à jour quant à leur formation. En cas de besoin, nous comblons les quelques vides constatés. Il s’agit entre autres des élèves ayant quitté un pays, un système éducatif ou école pour un autre milieu.",
                    ),
                    Services(h, w,
                        titre: "Alphabétisation",
                        message:
                            "Ici, nous sommes face à un apprenant analphabète. Nous allons l’apprendre la lecture et l’écriture en commençant par le programme du degré élémentaire."),
                    Services(h, w,
                        titre: "Préparation aux examens",
                        message:
                            "enfant au top. Nous proposons ici aux parents un accompagnement axé résultat. Nous mettrons en place un programme basé sur :\n• Le programme des examens\n• Les notes et exercices de l’école."),
                    Services(h, w,
                        titre: "Préparation ENAFEP",
                        message:
                            "Nous préparons votre enfant à un meilleur résultat à l’ ENAFEP. Axé sur :\n• Les items des années antérieures\n• Le contenu des matières ciblées\n• L’ attitude à avoir\n• Les astuces des aînés"),
                    Services(h, w,
                        titre: "Préparation EXETAT",
                        message:
                            "Nous préparons votre enfant à un meilleur résultat à l’ EXETAT. Axé sur :\n• Les items des années antérieures\n• Le contenu des matières ciblées\n• L’ attitude à avoir\n• Les astuces des aînés"),
                    Services(h, w,
                        titre:
                            "Remise à niveau avant inscription universitaire",
                        message:
                            "Il se peut que le bachelier se rende compte de certaines insuffisances notoires quant à son parcours scolaire et veuille combler ses vides avant son inscription à l’ université. Le contenu sera donc :\n• Les bases manquantes\n• Les matières passées qui seront abordées à l’ université"),
                    Services(h, w,
                        titre: "Apprentissage français",
                        message:
                            "Ici, nous visons le français parlé et écris. Principalement pour des professionnels qui veulent maîtriser la langue de Molière, impressionner les collaborateurs et avoir une meilleure compréhension de leurs affaires."),
                  ],
                ),
                Text(
                  "Contacts",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Contatct(h, w,
                        text:
                            "294, Avenue Luiza, Kinshasa, République démocratique du Congo\nRef: Sur 24, en face de l'académie de Beaux Arts",
                        icon: Icons.place),
                    Contatct(h, w,
                        icon: Icons.mail,
                        text: "contact@jeune-educ.com\njeuneeduc@gmail.com"),
                    Contatct(
                      h,
                      w,
                      icon: Icons.phone,
                      text: "+243 81 75 57 002",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
    Widget Services(
    double h,
    double w, {
    required String titre,
    required String message,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 12,
        color: Colors.transparent,
        child: Container(
          // height: h * 0.55,
          width: w / 3.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  titre,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                    color: Color(0xffff8a00),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  message,
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Contatct(
    h,
    w, {
    required icon,
    required text,
  }) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(w * 0.02),
        height: h * .3,
        width: w / 3.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xffff8a00),
              size: w * 0.04,
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: GoogleFonts.nunito(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
