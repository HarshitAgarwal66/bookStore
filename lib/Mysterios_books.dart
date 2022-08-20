import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Mysterious_books extends StatefulWidget
{
  @override
  State<Mysterious_books> createState() => Mysterious_booksState();
}

class Mysterious_booksState extends State<Mysterious_books> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Mystery"),
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
        children: [obj1.book_design(context,"Mysterious","Gone-Girl","https://www.pdfdrive.com/download.pdf?id=60345130&h=323e31cfeabee39f56b8739c18eeebf1&u=cache&ext=pdf"),
            obj1.book_design(context,"Mysterious","Pie- A Biography","https://www.pdfdrive.com/download.pdf?id=162773500&h=16affaa84e1293cabe843c35fe662706&u=cache&ext=pdf"),
          obj1.book_design(context,"Mysterious","Dark-Places","https://www.pdfdrive.com/download.pdf?id=193408041&h=ff673634fd569ae757278b89314ddcf7&u=cache&ext=mobi"),
          obj1.book_design(context,"Mysterious","Ufos-Alien Contact","https://www.pdfdrive.com/download.pdf?id=158157658&h=ff1c057a7bc80d195d88a760796dc980&u=cache&ext=pdf"),
          obj1.book_design(context,"Mysterious","Mystic Places","https://www.pdfdrive.com/download.pdf?id=177242528&h=967d099e35daf201499a07298b43c369&u=cache&ext=pdf"),
          obj1.book_design(context,"Mysterious","Wizards Bestiary","https://www.pdfdrive.com/download.pdf?id=157000481&h=e5d8f9562d21ac60931816d848c8a6ae&u=cache&ext=pdf")],
    ))
      ));
  }
}