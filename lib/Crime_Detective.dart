import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Crime_Detective extends StatefulWidget
{
  @override
  State<Crime_Detective> createState() => Crime_booksState();
}

class Crime_booksState extends State<Crime_Detective> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Crime and Detective"),
          backgroundColor: Colors.red,
          centerTitle: true,
          actions: [PopupMenuButton<int>(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              itemBuilder: (context){
                return [PopupMenuItem(child: Row(children: [Text("Black"),IconButton(onPressed: ()async{
                  setState((){
                    c=Colors.black;
                  });},
                    icon: Icon(Icons.check_box_outline_blank, color: Colors.black,))],)),
                  PopupMenuItem(child: Row(children: [Text("White"),IconButton(onPressed: ()async{
                    setState((){
                      c=Colors.white;
                    });},
                      icon: Icon(Icons.check_box_outline_blank, color: Colors.grey,))],))];
              })],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15.0))),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: c,
            child: Container(
                child:GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  padding: EdgeInsets.all(0),
                  children: [
                    obj1.book_design(context,"Crime and Detective","The Black Hand The Epic War","https://www.pdfdrive.com/download.pdf?id=195096070&h=14a7c589ca9cda6ae0780b25c221bdcf&u=cache&ext=pdf"),
                    obj1.book_design(context,"Crime and Detective","The dark web breakthroughs in research","https://www.pdfdrive.com/download.pdf?id=176395472&h=694c0c6fb41a46f1e72eac990acfc252&u=cache&ext=pdf"),
                    obj1.book_design(context,"Crime and Detective","Deadly Secrets A True Crime Anthology","https://www.pdfdrive.com/download.pdf?id=196845895&h=d3af084241e157b7e7524e551f17c466&u=cache&ext=pdf"),
                    obj1.book_design(context,"Crime and Detective","Creatures of Darkness","https://www.pdfdrive.com/download.pdf?id=188115523&h=645c845bc81b1d5d83c47bf07d61cbcb&u=cache&ext=pdf"),
                    obj1.book_design(context,"Crime and Detective","A Counter-History of Crime Fiction","https://www.pdfdrive.com/download.pdf?id=161424236&h=768e3fae9c44e3cae746f260214d14f9&u=cache&ext=pdf"),
                    obj1.book_design(context,"Crime and Detective","The Bat A Harry Hole Novel","https://www.pdfdrive.com/download.pdf?id=166209639&h=3316cc52ba197f29f35339e92037b660&u=cache&ext=pdf")],
                ))
        ));
  }
}