import 'package:book_store/style.dart';
import 'package:flutter/material.dart';
void main()async {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  Color dropdownValue=Colors.white;
  style obj = style();
  Color c=Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ebooks"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [PopupMenuButton<int>(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            itemBuilder: (context){
              return [PopupMenuItem(
              child: Row(children: [Text("Black"),IconButton(onPressed: ()async{
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
        color: c,
        child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        children: [obj.front_design(context,"Mystery","https://assets7.lottiefiles.com/packages/lf20_q2Vuta.json","Mysterious"),
          obj.front_design(context,"Literature","https://assets5.lottiefiles.com/packages/lf20_ybiszbil.json","Literature"),
          obj.front_design(context,"Crime and Detective","https://assets7.lottiefiles.com/private_files/lf30_gd2unfh8.json","Crime and Detective"),
          obj.front_design(context,"Sci-fiction","https://assets7.lottiefiles.com/packages/lf20_bqmgf5tx.json","Sci-fiction"),
          obj.front_design(context,"Adventure","https://assets7.lottiefiles.com/packages/lf20_sbik06hw.json","Adventure"),
          obj.front_design(context,"Technology","https://assets6.lottiefiles.com/packages/lf20_ba013t74.json","Technology")],
      ),) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/**/
