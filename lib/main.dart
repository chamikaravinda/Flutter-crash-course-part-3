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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style:TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[800]
                )
            ),
            SizedBox(height: 6.0,),
            Text(
                quote.author,
                style:TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600]
                )
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quoests.map((quoest) => quoteTemplate(quoest)).toList(),
      ),
    );
  }
}
