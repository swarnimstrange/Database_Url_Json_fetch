import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:wwe_cards/data.dart';
import 'package:wwe_cards/data_api.dart';

class UserNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<User>>(
          future: UsersApi.getUsers(),
          builder: (context, snapshot) {
            final users = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  return buildUsers(users);
                }
            }
          },
        ),
      );

  Widget buildUsers(List<User> users) => Center(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

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
                              child: Image.network(user.img, fit: BoxFit.cover),
                              radius: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            user.name,
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
                          "Height: ${user.height}",
                          style:
                              TextStyle(fontSize: 20, color: Colors.green[900]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Height: ${user.weight}",
                            style: TextStyle(
                                fontSize: 20, color: Colors.green[900])),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Agility: ${user.agility}",
                            style: TextStyle(
                                fontSize: 20, color: Colors.green[900])),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Career Long: ${user.career}",
                            style: TextStyle(
                                fontSize: 20, color: Colors.green[900])),
                      ],
                    ),
                  )
                ]);
          },
        ),
      );
}
