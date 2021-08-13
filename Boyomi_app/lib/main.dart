import 'package:boyomi/SplashScreen.dart';
import 'package:boyomi/boy.dart';
import 'package:boyomi/girl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes:{
        '/home':(_)=>Bmi(),
    },
    );
  }

}

  String selectedCategories = 'Common';

  class Bmi extends StatefulWidget{

  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  List isSelected=[true,false];
  TextEditingController txt;
  double heeight=0;
  double weight=0;
  var _selectedOption=0;
  @override
  Widget build(BuildContext context) {
    List options=[Boy(),Girl()];
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){_bottomsheet(context, heeight , weight);},
      child: Icon(Icons.check),
      backgroundColor: Colors.orangeAccent,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: height*0.1,
            right:width*0.1,left: width*0.1,
            child: topnavigation(),),
            Positioned(
              top:height*0.25,
              right: width*0.1,left: width*0.1,
              child: Container(
                height:height*0.6,
                width:width -((width/5)+40.0),
                child: options[_selectedOption]
                )),
                Positioned(
                   bottom:40,left: 30,
                   child: Row(
                     children: [
                       Container(
                         height:45,width: 150,
                         padding:EdgeInsets.all(10),
                         decoration:BoxDecoration(
                           border: Border(bottom: BorderSide(color: Colors.grey[200]))
                         ),
                         child:TextFormField(
                            controller: txt,
                            keyboardType: TextInputType.numberWithOptions(),
                            onChanged: (value){
                              heeight= double.parse(value);
                            },
                            decoration: InputDecoration(
                              labelText: "Height",
                              suffixText: "Ft",
                              suffixIcon: Icon(Icons.height),
                            ),
                           )
                       ),
                       Container(
                         height:45,width: 150,
                         padding:EdgeInsets.all(10),
                         decoration:BoxDecoration(
                           border: Border(bottom: BorderSide(color: Colors.grey[200]))
                         ),
                         child:TextFormField(
                            controller: txt,
                            keyboardType: TextInputType.numberWithOptions(),
                            onChanged: (value){
                              weight= double.parse(value);
                            },
                            decoration: InputDecoration(
                              labelText: "Weight",
                              suffixText: "Kg",
                              suffixIcon: Icon(Icons.height),
                            ),
                           )
                       )
                     ],
                     ))
        ]
        ),
    );
  }
  topnavigation(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      buildoption("Women",0,"assets/g1.png"),
      buildoption("Men",1,"assets/b1.png")
    ],);
  }
  buildoption(String name,int index,String image){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          isSelected[index]?Container(
            height:80.0,
            width:80.0,
            decoration:BoxDecoration(
              border:Border.all(color:Colors.orangeAccent),
              shape:BoxShape.circle,
              image:DecorationImage(image:AssetImage("${image}"),fit:BoxFit.fill)
            ),
            ):Container(height: 70.0,width: 70.0,
            decoration:BoxDecoration(
              image:DecorationImage(image:AssetImage("${image}"),fit: BoxFit.fill),
              shape: BoxShape.circle,color: Colors.transparent
              ),
              ),
              SizedBox(height:5.0),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedOption=index;
                    isOptionSelected(index);
                  });
                },
                child: Text(name,
                style:  isSelected[index]?GoogleFonts.firaSans(color: Colors.black87):GoogleFonts.firaSans(color: Colors.grey),
                ),
                )
    ],);
  }
  isOptionSelected(index){
    var previousIndex=isSelected.indexOf(true);
    isSelected[index]=true;
    isSelected[previousIndex]=false;
  }
  void _bottomsheet(BuildContext context,double heeight, double weight){
    showModalBottomSheet(context:context, builder: (contxt){
      double hm=heeight/3.281;
      double bmi=weight/(hm*hm);
      img(){
        if(_selectedOption==0){
          if(bmi>25.0){
            return "assets/overweightgirl.png";
          }
          if(bmi>18.5 && bmi<24.9){
            return "assets/fit girl.png";
          }
          else{
            return "assets/underwight girl.png";
          }
        }
        else{
           if(bmi>25.0){
            return "assets/overweight.png";
          }
          if(bmi>18.5 && bmi<24.9){
            return "assets/fit boy.png";
          }
          else{
            return "assets/underwight boy.png";
          }
        }
      }
  txt(){
        if(bmi>25.0){
            return Text("Sorry you are overwight ${bmi.toStringAsFixed(2)}",style: GoogleFonts.lexendPeta(),);
          }
          if(bmi>18.5 && bmi<24.9){
            return Text("You are healthy ${bmi.toStringAsFixed(2)}",style: GoogleFonts.lexendPeta(),);
          }
          else{
            return Text("Sorry you are underwight ${bmi.toStringAsFixed(2)}",style: GoogleFonts.lexendPeta(),);
          }
      }
      return Container(
          color: Color(0xFF737373),
              child: Container(
                decoration: BoxDecoration(
                  color:Theme.of(context).canvasColor,
                  borderRadius:BorderRadius.only(
                    topLeft:Radius.circular(30),
                    topRight:Radius.circular(30)
                  )
                ),
          height: 600,
          child: Column(children: [
           Container(height:300,width:100,child:Image.asset("${img()}",fit: BoxFit.fill,)),
           SizedBox(height:20),
           txt(),
          ],),
        ),
      );
    });
  }
}