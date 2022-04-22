import 'package:flutter/material.dart';
import 'package:untitled19/pages/two_page.dart';

class OnePage extends StatefulWidget {
  static const String id = "one_page";

  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            backgroundColor: Colors.deepPurple,
            leading: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, TwoPage.id);
                },
                icon: Icon(Icons.arrow_forward),
              ),
            ],
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/images/room1.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text('My hotel room'),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 200,
              color: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 200,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 200,
              color: Colors.blue,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 200,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
