import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Adventure extends StatefulWidget
{
  @override
  State<Adventure> createState() => Adventure_booksState();
}

class Adventure_booksState extends State<Adventure> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Adventure"),
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
                    obj1.book_design(context,"Adventure","Huckleberry Finn","https://www.planetebook.com/ebooks/The-Adventures-of-Huckleberry-Finn.pdf"),
                    obj1.book_design(context,"Adventure","Sherlock Holmes","https://www.pdfdrive.com/download.pdf?id=18476292&h=d5bee4e60a6a4cfed6d3cc56c259c270&u=cache&ext=pdf"),
                    obj1.book_design(context,"Adventure","Feynman!Curious Character","https://www.pdfdrive.com/download.pdf?id=193595165&h=03121efd0b72488fd07ddfdfe5533ab8&u=cache&ext=pdf"),
                    obj1.book_design(context,"Adventure","The Adventures of Feluda Vol 1","https://www.pdfdrive.com/download.pdf?id=157992801&h=c3e8f07cdfb4cdb9cf7a45791ed8ba80&u=cache&ext=pdf"),
                    obj1.book_design(context,"Adventure","The Adventures of Feluda Vol 2","https://www.pdfdrive.com/download.pdf?id=157992815&h=b5380748a800830e9837b213f4eab2f4&u=cache&ext=pdf"),
                    obj1.book_design(context,"Adventure","Adventures of Mad Monk Ji Gong","https://www.pdfdrive.com/download.pdf?id=165764299&h=ec74598469700f9026d569d83414d311&u=cache&ext=pdf")],
                ))
        ));
  }
}