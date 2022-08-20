import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Sci_fiction extends StatefulWidget
{
  @override
  State<Sci_fiction> createState() => Sci_booksState();
}

class Sci_booksState extends State<Sci_fiction> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Sci-fiction"),
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
                    obj1.book_design(context,"Sci-fiction","Afrofuturism - Black sci-fi","https://www.pdfdrive.com/download.pdf?id=195017887&h=174a679626774ad6f5234ea92c4cf1db&u=cache&ext=pdf"),
                    obj1.book_design(context,"Sci-fiction","Close Encounters","https://www.pdfdrive.com/download.pdf?id=196925072&h=1829c9a80f7712bd2c6d740245a2ba69&u=cache&ext=pdf"),
                    obj1.book_design(context,"Sci-fiction","Hartwell- Year's Best Sci Fi","https://www.pdfdrive.com/download.pdf?id=194276811&h=775a50784b7f853f30d984cafad1666d&u=cache&ext=pdf"),
                    obj1.book_design(context,"Sci-fiction","The Big Bang and Black Holes","https://www.pdfdrive.com/download.pdf?id=184364377&h=e7a059739e6c8fdfaa678ae188c12b71&u=cache&ext=pdf"),
                    obj1.book_design(context,"Sci-fiction","StarTalk You Need to Know","https://www.pdfdrive.com/download.pdf?id=196936034&h=87436e052244327b9d739ea6c60d66b6&u=cache&ext=pdf"),
                    obj1.book_design(context,"Sci-fiction","Alien and Philosophy","https://www.pdfdrive.com/download.pdf?id=184636943&h=c9bf5cf1cd6805503cff7e0f720ae579&u=cache&ext=pdf")],
                ))
        ));
  }
}