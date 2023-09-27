// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:fitnesspro/routes/accountsetting.dart' as _i1;
import 'package:fitnesspro/screens/activity.dart' as _i4;
import 'package:fitnesspro/screens/homescreen.dart' as _i2;
import 'package:fitnesspro/screens/navigationScreen.dart' as _i3;
import 'package:fitnesspro/screens/profilescreen.dart' as _i5;
import 'package:fitnesspro/screens/searchscreen.dart' as _i6;
import 'package:fitnesspro/screens/settingDetails.dart' as _i7;
import 'package:fitnesspro/screens/settingscreen.dart' as _i8;
import 'package:fitnesspro/screens/splashscreen.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DashBoardFragment.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DashboardStart(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    NavigationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavigationScreenMain(),
      );
    },
    ActivityScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NewActivity(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    SearchScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SearchScreen(),
      );
    },
    SettingDetailsScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingDetailRoute(),
      );
    },
    SettingScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardStart]
class DashBoardFragment extends _i10.PageRouteInfo<void> {
  const DashBoardFragment({List<_i10.PageRouteInfo>? children})
      : super(
          DashBoardFragment.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardFragment';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i10.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NavigationScreenMain]
class NavigationRoute extends _i10.PageRouteInfo<void> {
  const NavigationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewActivity]
class ActivityScreenRoute extends _i10.PageRouteInfo<void> {
  const ActivityScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ActivityScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreenRoute extends _i10.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SearchScreen]
class SearchScreenRoute extends _i10.PageRouteInfo<void> {
  const SearchScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SearchScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingDetailRoute]
class SettingDetailsScreenRoute extends _i10.PageRouteInfo<void> {
  const SettingDetailsScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingDetailsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingDetailsScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingScreen]
class SettingScreenRoute extends _i10.PageRouteInfo<void> {
  const SettingScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashScreen extends _i10.PageRouteInfo<void> {
  const SplashScreen({List<_i10.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
