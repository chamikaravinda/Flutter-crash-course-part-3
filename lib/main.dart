import 'package:flutter/material.dart';
import './quoet.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quoests=[
    Quote(text: 'Change your thoughts and you change your world',author: 'Unkon'),
  Quote(text:'Those who realize their folly are not true fools',author: 'Unkon'),
  Quote(text:'Life is too important to be taken seriously',author: 'Unkon'),
  Quote(text:'It always seems impossible until it’s done',author: 'Unkon')
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
        children: quoests.map((quoest) => Text('${quoest.text} - ${quoest.author}')).toList(),
      ),
    );
  }
}
