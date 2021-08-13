import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:expansion_card/expansion_card.dart';

class ProPage extends StatefulWidget {
  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/trump_card.json"),
          builder: (context, snapshot) {
            var mydata = json.decode(snapshot.data.toString());
            return Center(
              child: ListView.builder(
                  itemCount: mydata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionCard(
                        backgroundColor: Colors.lightBlueAccent,
                        borderRadius: 20,
                        title: Container(
                          child: Center(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.greenAccent[500],
                                    radius: 108,
                                    child: CircleAvatar(
                                      child: Image.network(
                                          mydata[index]["img_url"]),
                                      radius: 100,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    mydata[index]["name"],
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.green[900],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 7),
                            child: Column(
                              children: [
                                Text(
                                  "Height: ${mydata[index]["height"]}",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.green[900]),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Height: ${mydata[index]["weight"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green[900])),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Agility: ${mydata[index]["agility"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green[900])),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Career Long: ${mydata[index]["career"]}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green[900])),
                              ],
                            ),
                          )
                        ]);
                  }),
            );
          }),
    );
  }
}
