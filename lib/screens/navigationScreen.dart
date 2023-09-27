import 'package:auto_route/auto_route.dart';
import 'package:fitnesspro/routes/AppRouter.gr.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

@RoutePage(name: 'navigationRoute')
class NavigationScreenMain extends StatefulWidget {
  const NavigationScreenMain({super.key});

  @override
  State<NavigationScreenMain> createState() => _MainScreenState();
}

class _MainScreenState extends State<NavigationScreenMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeScreenRoute(),
        SearchScreenRoute(),
        ProfileScreenRoute(),
        SettingScreenRoute()
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (tabsRouter.activeIndex == index) {
              // navigateToTabAndClearStack(index);
            } else {
              tabsRouter.setActiveIndex(index);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon:
                  Icon(size: 20.sp, Icons.home, color: const Color(0xff5767ea)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  size: 20.sp, Icons.search, color: const Color(0xff5767ea)),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  size: 20.sp, Icons.person, color: const Color(0xff5767ea)),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  size: 20.sp, Icons.settings, color: const Color(0xff5767ea)),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }
}
