import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quote.dart';
import 'qoute_card.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome Quotes"),
        backgroundColor: Colors.black26,
      ),
      body: Column(
        children: quotes.map((q) => QuoteCard(quote: q,delete: (){
          setState(() {
            quotes.remove(q);
          });
        },)).toList(),
      ),
    );
  }
}





