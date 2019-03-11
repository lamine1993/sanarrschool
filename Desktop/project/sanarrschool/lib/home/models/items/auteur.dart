import 'package:sanarrschool/home/models/items/articles.dart';
class Auteurs {
  final int id;
  final String nom;
  final String prenom;
  final String email;
  final String password;
  final String adresse;
  final String sexe;
  final String naissance;
  final List<Articles> _myArticles = [];


  Auteurs(this.id, this.nom, this.prenom, this.email, this.password, this.adresse, this.sexe, this.naissance);
  void addArticle(Articles article){

    this._myArticles.add(article);
  }

  

}