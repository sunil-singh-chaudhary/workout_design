import 'package:auto_route/auto_route.dart';

import 'AppRouter.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(path: '/splash', page: SplashScreen.page, initial: true),

        //for new screen add '/ not intial=true'
        AutoRoute(
            path: '/navigationscreen',
            page: NavigationRoute.page,
            children: [
              AutoRoute(path: 'home', page: HomeScreenRoute.page), //1 st TAB

              AutoRoute(
                  path: 'profile', page: ProfileScreenRoute.page), //2nd tab

              AutoRoute(path: 'search', page: SearchScreenRoute.page), //3rd tab

              //TODO Fragment wrap settingscreen with Fragment DashboradFrament inside it childre[approute(initial true ,settingscreen main then inside other screen ),appRoute()]
              AutoRoute(
                  // 4th tab insde it fragment
                  path: 'DashboardFragment', //create a fake approute or empty
                  page: DashBoardFragment.page,
                  children: [
                    AutoRoute(
                        page: SettingScreenRoute.page, initial: true), //4th tab
                    AutoRoute(
                        path: 'details', page: SettingDetailsScreenRoute.page),
                    //inside 4th other widget
                  ]),
            ]),

        //TODO : show New Activity Above nav Bar not inside it on click button
        AutoRoute(page: ActivityScreenRoute.page, path: '/activity'),
      ];
}

// children: [
//               AutoRoute(path: 'userpage', page: DashBoard.page, children: [
//                 AutoRoute(
//                     path: 'NavigationScreen',
//                     page: NavigationScreen.page,
//                     initial: true),
//               ]),
//             ]
