import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Technology extends StatefulWidget
{
  @override
  State<Technology> createState() => Technology_booksState();
}

class Technology_booksState extends State<Technology> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Technology"),
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
                    obj1.book_design(context,"Technology","Android Programming","http://commonsware.com/AndTutorials/AndTutorials-3_1-CC.pdf"),
                    obj1.book_design(context,"Technology","Arduino Projects for the IOT","https://www.pdfdrive.com/download.pdf?id=31544549&h=c16d80201af1e2e0e79be44d545cc096&u=cache&ext=pdf"),
                    obj1.book_design(context,"Technology","Hacking Wireless Networks","https://www.pdfdrive.com/download.pdf?id=18757441&h=d15821dc5a0420dd30d78c112d47815e&u=cache&ext=pdf"),
                    obj1.book_design(context,"Technology","PHP,MySQL,JavaScript & HTML5","https://khmerbamboo.files.wordpress.com/2014/09/php-mysql-javascript-html5-all-in-one-for-dummies.pdf"),
                    obj1.book_design(context,"Technology","MATLAB Programming Fundamentals","http://www.mathworks.com/help/pdf_doc/matlab/matlab_prog.pdf"),
                    obj1.book_design(context,"Technology","Java Problem Solving","https://tushkhush.files.wordpress.com/2012/09/programming-and-problem-solving-with-java.pdf")],
                ))
        ));
  }
}