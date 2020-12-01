import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text:"It Doesn’t Matter Where You Came From. All That Matters Is Where You Are Going.",author: "ahmed ali" ),
    Quote(text:"Think Big And Don’t Listen To People Who Tell You It Can’t Be Done. Life’s Too Short To Think Small",author: "hafid id-baha" ),
    Quote(text:"You Can Develop Any Habit Or Thought Or Behavior That You Consider Desirable Or Necessary.",author: "samad jalil" )
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome Quotes"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: quotes.map((q) => quoteTemplate(q)).toList(),
      ),
    );
  }
}


