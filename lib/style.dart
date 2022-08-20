import 'package:book_store/Crime_Detective.dart';
import 'package:book_store/Mysterios_books.dart';
import 'package:book_store/Sci-fiction.dart';
import 'package:book_store/Technology.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:book_store/pdf.dart';

import 'Adventure.dart';
import 'Literature.dart';

class styler extends StatefulWidget{
  style createState()=>style();
}

class style extends State<styler>{
  double w=0;
  Widget build(BuildContext context)
  {
    return front_design(context, "","","");
  }
  GestureDetector front_design(BuildContext context,var name,var url,var page_name){
    w=MediaQuery.of(context).size.width/8;
    return GestureDetector(
        onTap: (){
          switch(page_name){
          case "Mysterious":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Mysterious_books()));}
                               break;
          case "Sci-fiction":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Sci_fiction()));}
                                break;
          case "Adventure":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Adventure()));}
                                break;
          case "Crime and Detective":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Crime_Detective()));}
                                break;
          case "Literature":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Literature()));}
                                break;
          case "Technology":  {Navigator.push(context, MaterialPageRoute(builder: (context)=>Technology()));}
                                break;
          default: print("None");
        };},
        child: Container(
      margin: EdgeInsets.only(left: 5,right: 5,top: 10),
      height: MediaQuery.of(context).size.height/3,
      width: MediaQuery.of(context).size.width/3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 2.0),BoxShadow(color: Colors.white,)]
    ),
    child: Column(
        children: [Container(
          height: MediaQuery.of(context).size.height/6,
          width: MediaQuery.of(context).size.width/3,
          child: Lottie.network("${url}"),),
          Divider(color: Colors.red,thickness: 1,),
          Container(padding: EdgeInsets.only(top: 3.0,left: 2),
            child: Text("${name}",style: TextStyle(color: Colors.red),)
          ),
        ],
      ),)
    );
  }}

class booker extends StatelessWidget{

  Widget build(BuildContext c){
  return book_design(c,"","","");
}
  GestureDetector book_design(context,genre,title,ur)
  {
    return GestureDetector(
        onTap: (){},
          child: Stack(
            children: [Positioned(
              left: 40,top: 50,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(3.0,3.0),blurRadius: 3.0
                ),BoxShadow(color: Colors.white)],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),),
                   child: Column(
                children: [Container(height:80,
                  width:60,
                  margin: EdgeInsets.only(left: 32),
                  padding: EdgeInsets.only(top: 8),
                  child: Text("$title" ,style: TextStyle(color: Colors.green,fontSize: 15,
                      fontFamily: "Sans",fontStyle: FontStyle.italic),),
                ),

                IconButton(
                  onPressed: ()async {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>pdf(url: ur,name: title)));},
                    icon: Icon(Icons.read_more,color: Colors.red,),
                ),]))
            ),
        Positioned(
              left: 10,top: 30,
              height: 100,
              child: Container(height:100,child: Image.asset("assets/$genre/$title.jpg")),
            )],),
    );}}