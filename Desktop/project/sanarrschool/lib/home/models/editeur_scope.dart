import 'dart:collection';

import 'package:sanarrschool/home/models/items/auteur.dart';
import 'package:scoped_model/scoped_model.dart';

class Editeur extends Model {
  /// Internal, private state of the cart.
  final List<Auteurs> _items = [];
  Auteurs current_author=null;
  
  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Auteurs> get items => UnmodifiableListView(_items);

  /// The current total price of all items (assuming all items cost $1).

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Auteurs item) {
     current_author=new Auteurs(item.id, item.nom, item.prenom, item.email, item.password, item.adresse, item.sexe, item.naissance);
     
    _items.add(item);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  /// Remove all items in the cart.
  void clear() {
    _items.clear();
  }
}