import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuotesList()
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<String> quotes = [
    "Nothing changes if nothing changes",
    "The best view comes after the hardest climb",
    "It is during our darkest moments we must focus on the light",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),//map devuelve un iterable
      ),
    );
  }
}


