import 'dart:io';
import 'package:book_store/style.dart';
import 'package:flutter/material.dart';

class Literature extends StatefulWidget
{
  @override
  State<Literature> createState() => Literature_booksState();
}

class Literature_booksState extends State<Literature> {
  style obj=new style();
  booker obj1=new booker();
  Color c=Colors.black;
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Literature"),
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
                    obj1.book_design(context,"Literature","Kingdom of Ash","https://www.pdfdrive.com/download.pdf?id=136109604&h=1bdfa647da01a8f0586f3156adc1c7f8&u=cache&ext=pdf"),
                    obj1.book_design(context,"Literature","One Indian Girl","http://www.redicals.com/wp-content/uploads/2016/09/One_Indian_Girl_-_Chetan_Bhagat-Redicals.pdf"),
                    obj1.book_design(context,"Literature","1984 - Novels and Literature","http://www.planetebook.com/ebooks/1984.pdf"),
                    obj1.book_design(context,"Literature","Gulliver’s Travels","http://www.planetebook.com/ebooks/Gullivers-Travels.pdf"),
                    obj1.book_design(context,"Literature","The Secret Life of Nature","https://www.pdfdrive.com/download.pdf?id=3201570&h=f003ce6f0f3dc1c6dc68f28420c52629&u=cache&ext=pdf"),
                    obj1.book_design(context,"Literature","Victorian Poetry","https://www.pdfdrive.com/download.pdf?id=26508124&h=0b8f0885c1edd71004975265bcdb4d4e&u=cache&ext=pdf")],
                ))
        ));
  }
}