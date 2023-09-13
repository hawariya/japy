import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/delivery_man_detail.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_application_5/screens/second_page.dart';

class Delivery_Man_List extends StatefulWidget {
  const Delivery_Man_List({Key? key}) : super(key: key);

  @override
  State<Delivery_Man_List> createState() => _Delivery_Man_ListState();
}

class _Delivery_Man_ListState extends State<Delivery_Man_List> {
  String searchText = '';
  List<String> deliveryMen = [
    "Delivery Man 1",
    "Delivery Man 2",
    "Delivery Man 3",
    "Delivery Man 4",
    "Delivery Man 5",
    "Delivery Man 6",
    "Delivery Man 7",
    "Delivery Man 8",
    "Delivery Man 9",
    "Delivery Man 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              searchText = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: searchText.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        searchText = '';
                      });
                    },
                  )
                : null,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: deliveryMen.length,
              itemBuilder: (context, index) {
                final deliveryMan = deliveryMen[index];

                return _buildSlidableCard(deliveryMan);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlidableCard(String deliveryMan) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(),
            ),
          );
        },
        child: Container(
          height: 120,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('online'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
      ),
      secondaryActions: [
        IconSlideAction(
          caption: 'Edit',
          color: Colors.blue,
          icon: Icons.edit,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(),
              ),
            );
          },
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {
            _handleDelete(deliveryMan);
          },
        ),
      ],
    );
  }

  void _handleDelete(String deliveryMan) {
    setState(() {
      deliveryMen.remove(deliveryMan);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$deliveryMan deleted."),
      ),
    );
  }
}
