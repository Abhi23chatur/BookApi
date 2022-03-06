
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Book/Application/Binding/Book_binding.dart';
import '../Presentation/home_page.dart';
import '../Presentation/news_details_page.dart';



part 'app_routes.dart';

class AppPages {
  static const initial = Routes.defaultRoute;

  static final routes = [
    GetPage(
        name: Routes.defaultRoute,
        binding: HomePageBinding(),
        page: () => const HomePage()),
    GetPage(name: Routes.newsSummary, page: () => const NewsDetails()),
  ];
}