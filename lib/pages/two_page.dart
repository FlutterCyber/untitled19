import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  static const String id = "two_page";

  const TwoPage({Key? key}) : super(key: key);

  @override
  State<TwoPage> createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: buildList[50],
          ),
        ],
      ),
    );
  }

  List buildList(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(itemList(i));
    }
    return items;
  }

  Widget itemList(int i) {
    return Container(
      height: 50,
      child: Text("Item ${i.toString()}"),
    );
  }
}
