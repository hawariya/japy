import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/delivery_man_list.dart';

class delivery extends StatefulWidget {
  const delivery({super.key});

  @override
  State<delivery> createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delivery Man setup',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        leadingWidth: 40,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Delivery_Man_List()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.people_rounded),
                    Text(
                      'Delivery man list',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.person),
                    Text(
                      'Add New Delivery Man',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.monetization_on_rounded),
                    Text(
                      'Delivery Withdraws',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.call),
                    Text(
                      'Emegency contacts',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
