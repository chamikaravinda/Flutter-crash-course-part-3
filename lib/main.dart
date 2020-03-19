import 'package:flutter/material.dart';
import './quoet.dart';
import './quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quoests=[
    Quote(text: 'Change your thoughts and you change your world',author: 'Unknown'),
  Quote(text:'Those who realize their folly are not true fools',author: 'Unknown'),
  Quote(text:'Life is too important to be taken seriously',author: 'Unknown'),
  Quote(text:'It always seems impossible until it’s done',author: 'Unknown')
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
        children: quoests.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quoests.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}

