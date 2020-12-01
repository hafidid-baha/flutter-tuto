import 'package:flutter/material.dart';

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
  List<String> quotes = [
    "It Doesn’t Matter Where You Came From. All That Matters Is Where You Are Going.",
    "Think Big And Don’t Listen To People Who Tell You It Can’t Be Done. Life’s Too Short To Think Small",
    "You Can Develop Any Habit Or Thought Or Behavior That You Consider Desirable Or Necessary."
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
        children: quotes.map((q) => Text(q)).toList(),
      ),
    );
  }
}


