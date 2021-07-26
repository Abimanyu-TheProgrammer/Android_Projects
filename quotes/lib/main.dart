import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home : QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("If you think i'm superficial or materialistic, go get a job at f*cking McDonald's 'cause that's where you f*cking belong", "Anon"),
    Quote("Humans are the only creature on earth capable of self doubt", "Some guy"),
    Quote("The thing that you'll resent is not whether you make it or not but when you know you can, will you actually try.", "Tom Bilyeu")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body : Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList()
      ),
    );
  }
}
