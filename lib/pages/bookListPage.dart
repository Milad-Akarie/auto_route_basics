import 'package:auto_route_basics/books_db.dart';
import 'package:auto_route_basics/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class BookListPage extends StatelessWidget {
  BookListPage({Key key}) : super(key: key);

  // dummy local db
  final booksDB = BooksDB();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Books'),
        ),
        body: ListView.builder(
          itemCount: booksDB.books.length,
          itemBuilder: (context, index) {
            final book = booksDB.books[index];
            return Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              child: ListTile(
                title: Text(book.name),
                subtitle: Text(book.genre),
                onTap: () => _handleBookTap(context, book),
              ),
            );
          },
        ));
  }

  void _handleBookTap(BuildContext context, Book book) {
    context.router.push(
      BookDetailsRoute(
          book: book,
          onRateBook: (rating) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('${book.name} was rated $rating'),
                duration: const Duration(seconds: 1),
              ),
            );
          }),
    );
  }
}
