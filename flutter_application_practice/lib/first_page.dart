import 'package:flutter/material.dart';



class MyFirstPage extends StatelessWidget {
  MyFirstPage({Key? key}) : super(key: key);
  final List<String> entries = <String>['nootbar', 'kondoh', 'shohei'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '盆栽プログラマー',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.laptop_chromebook),
          SizedBox(width: 16),
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.menu),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                        'https://cdn-news.asoview.com/production/note/4ab1c715-4237-42da-92d2-5ae7ca98905b.jpg'),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
