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
                      titre: "R??mise ?? niveau",
                      message:
                          "Il s???agit ici des enfants ayant des comp??tences sensiblement r??duites par rapport ?? la classe actuelle.\n L??? objectif ici est de faire marche arri??re et combler les vides Test de d??part selon la fiche technique puis programme des le??ons manquantes par ordre de n??cessit??",
                    ),
                    Services(
                      h,
                      w,
                      titre: "R??p??titorat",
                      message:
                          "Il s???agit ici d???un programme de r??vision et d??? ??valuation. L???apprenant poss??de les comp??tences ??quivalentes ?? sa classe actuelle ou ?? peu pr??s. \nTout d???abord un test de d??part et l??? observation pour confirmer que l???apprenant est ?? peu pr??s ou l??g??rement au dessus du niveau demand??. \nAu programme :\n??? v??rification du journal de classe,\n??? v??rification des notes de classe,\n??? v??rification des cahiers d?????valuation de l?????cole.\n??? r??vision des mati??res du jour.",
                    ),
                    Services(
                      h,
                      w,
                      titre: "Pr??ceptorat",
                      message:
                          "Ici, les mati??res abord??es les sont selon le besoin. Ces mati??res non ma??tris??es semblent nouvelles pour l???apprenant. Nous abordons les mati??res encore non vues ?? l??? ??cole. \nC'est destin?? aux ??l??ves brillants et ?? jour quant ?? leur formation. En cas de besoin, nous comblons les quelques vides constat??s. Il s???agit entre autres des ??l??ves ayant quitt?? un pays, un syst??me ??ducatif ou ??cole pour un autre milieu.",
                    ),
                    Services(h, w,
                        titre: "Alphab??tisation",
                        message:
                            "Ici, nous sommes face ?? un apprenant analphab??te. Nous allons l???apprendre la lecture et l?????criture en commen??ant par le programme du degr?? ??l??mentaire."),
                    Services(h, w,
                        titre: "Pr??paration aux examens",
                        message:
                            "enfant au top. Nous proposons ici aux parents un accompagnement ax?? r??sultat. Nous mettrons en place un programme bas?? sur :\n??? Le programme des examens\n??? Les notes et exercices de l?????cole."),
                    Services(h, w,
                        titre: "Pr??paration ENAFEP",
                        message:
                            "Nous pr??parons votre enfant ?? un meilleur r??sultat ?? l??? ENAFEP. Ax?? sur :\n??? Les items des ann??es ant??rieures\n??? Le contenu des mati??res cibl??es\n??? L??? attitude ?? avoir\n??? Les astuces des a??n??s"),
                    Services(h, w,
                        titre: "Pr??paration EXETAT",
                        message:
                            "Nous pr??parons votre enfant ?? un meilleur r??sultat ?? l??? EXETAT. Ax?? sur :\n??? Les items des ann??es ant??rieures\n??? Le contenu des mati??res cibl??es\n??? L??? attitude ?? avoir\n??? Les astuces des a??n??s"),
                    Services(h, w,
                        titre:
                            "Remise ?? niveau avant inscription universitaire",
                        message:
                            "Il se peut que le bachelier se rende compte de certaines insuffisances notoires quant ?? son parcours scolaire et veuille combler ses vides avant son inscription ?? l??? universit??. Le contenu sera donc :\n??? Les bases manquantes\n??? Les mati??res pass??es qui seront abord??es ?? l??? universit??"),
                    Services(h, w,
                        titre: "Apprentissage fran??ais",
                        message:
                            "Ici, nous visons le fran??ais parl?? et ??cris. Principalement pour des professionnels qui veulent ma??triser la langue de Moli??re, impressionner les collaborateurs et avoir une meilleure compr??hension de leurs affaires."),
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
                            "294, Avenue Luiza, Kinshasa, R??publique d??mocratique du Congo\nRef: Sur 24, en face de l'acad??mie de Beaux Arts",
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
