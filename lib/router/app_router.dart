import 'package:auto_route/annotations.dart';
import 'package:auto_route_basics/pages/bookListPage.dart';
import 'package:auto_route_basics/pages/book_details_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: BookListPage, initial: true),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
