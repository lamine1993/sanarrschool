import 'package:flutter/material.dart';
import './articles.dart';
import './profil.dart';
import './create_article.dart';

class MyTabs extends StatefulWidget{
   MyTabs({Key key, this.title}) : super(key: key);
   final String title;
   static const String routeName = "/tabbar";

  @override
  MyTabsState createState()=>new MyTabsState();
}
 class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
   String user_name='Nom utilisateur'+'- Mes Articles';
   @override
    Widget build(BuildContext context) {
    
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.add_comment)),
              ],
            ),
            title: Text(user_name),
          ),
          body: TabBarView(
            children: [
              Profil(),
              Articles(),
              CreateArticle()
            ],
          ),
        ),
    );
    
  }
 }