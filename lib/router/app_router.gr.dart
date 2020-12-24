// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import '../pages/bookListPage.dart' as _i2;
import '../pages/book_details_page.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import '../books_db.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter({String initialDeepLink, List<_i1.PageRouteInfo> initialRoutes})
      : super(initialDeepLink: initialDeepLink, initialRoutes: initialRoutes);

  @override
  final Map<Type, _i1.PageFactory> pagesMap = {
    _i2.BookListPage: (args) {
      var data = args.as<BookListRoute>();
      return _i1.MaterialPageX(
          data: args, child: _i2.BookListPage(key: data.key));
    },
    _i3.BookDetailsPage: (args) {
      var data = args.as<BookDetailsRoute>();
      return _i1.MaterialPageX(
          data: args,
          child: _i3.BookDetailsPage(
              key: data.key, book: data.book, onRateBook: data.onRateBook));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<BookListRoute>(BookListRoute.name,
            path: '/',
            page: _i2.BookListPage,
            routeBuilder: (match) => BookListRoute.fromMatch(match)),
        _i1.RouteConfig<BookDetailsRoute>(BookDetailsRoute.name,
            path: '/book-details-page',
            page: _i3.BookDetailsPage,
            routeBuilder: (match) => BookDetailsRoute.fromMatch(match))
      ];
}

class BookListRoute extends _i1.PageRouteInfo {
  BookListRoute({this.key}) : super(name, path: '/', argProps: [key]);

  BookListRoute.fromMatch(_i1.RouteMatch match)
      : key = null,
        super.fromMatch(match);

  final _i4.Key key;

  static const String name = 'BookListRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo {
  BookDetailsRoute({this.key, this.book, this.onRateBook})
      : super(name,
            path: '/book-details-page', argProps: [key, book, onRateBook]);

  BookDetailsRoute.fromMatch(_i1.RouteMatch match)
      : key = null,
        book = null,
        onRateBook = null,
        super.fromMatch(match);

  final _i4.Key key;

  final _i5.Book book;

  final dynamic Function(int) onRateBook;

  static const String name = 'BookDetailsRoute';
}
