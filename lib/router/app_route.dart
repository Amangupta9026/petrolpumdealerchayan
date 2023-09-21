
import 'package:go_router/go_router.dart';
import 'package:petrolpumdealerchayan/home/apply.dart';
import 'package:petrolpumdealerchayan/home/home.dart';
import 'package:petrolpumdealerchayan/router/routes_names.dart';

bool isUserLogin =
//Prefs.getBool(PrefNames.isLogin) ??
    false;


String getInitialRoute() {
  switch (isUserLogin) {
    case false:
      return RouteNames.home;
    default:
      return RouteNames.home;
  }
}

final appRoute = GoRouter(initialLocation: getInitialRoute(), routes: [
  GoRoute(
      path: RouteNames.home,
      name: RouteNames.home,
      builder: (context, state) {
        return const Home();
      }),
  GoRoute(
      path: RouteNames.apply,
      name: RouteNames.apply,
      builder: (context, state) {
        return const ApplyNow();
      }),
  
]);
