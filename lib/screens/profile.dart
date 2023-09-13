import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/edit.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.blueAccent,
        title: 'My Profile',
        home: Scaffold(
            appBar: AppBar(
              title: Text('My Profile'),
              centerTitle: true,
            ),
            body: Center(
                child: Column(children: [
              CircleAvatar(
                radius: 50,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => secondpage()));
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text('Products'),
                            TextButton(
                              onPressed: () {},
                              child: Icon(Icons.shopping_cart),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text('Orders'),
                            TextButton(
                                onPressed: () {}, child: Icon(Icons.star))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text('Withdraw able Balance'),
                            TextButton(
                                onPressed: () {},
                                child: Icon(Icons.monetization_on))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.fire_truck),
                    SizedBox(
                      width: 10,
                    ),
                    Text('shipping method'),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Text('settings'),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.balance_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Bank info'),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.logout),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Logout'),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ]))));
  }
}
