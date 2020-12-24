import 'dart:math';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../books_db.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;
  final Function(int rating) onRateBook;
  BookDetailsPage({
    Key key,
    this.book,
    this.onRateBook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.name),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Rate Book'),
          onPressed: () {
            context.router.pop();
            onRateBook?.call(Random().nextInt(5));
          },
        ),
      ),
    );
  }
}
