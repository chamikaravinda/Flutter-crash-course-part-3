import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quoests=[
    'Change your thoughts and you change your world',
    'Those who realize their folly are not true fools',
    'Life is too important to be taken seriously',
    'It always seems impossible until it’s done'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quoests.map((quoest) => Text(quoest)).toList(),
      ),
    );
  }
}
