import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
              label: 'Feeds'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'Search'
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: 'Settings'
            )
          ],
        ),
        tabBuilder: (context, index){
          switch (index){
            default:
              return const Center(
                child: Text('Page not found!'),
              );
          }
        }
    );
  }

}