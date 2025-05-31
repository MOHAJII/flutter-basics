import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Theme.of(context).primaryColor],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 30,
                  ),
                  Center(
                    child: Text(
                      "Menu",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
                  color: Theme.of(context).primaryColor,
                  fontWeight:
                      Theme.of(context).textTheme.displayLarge?.fontWeight,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/");
              },
            ),
            Divider(height: 2),
            ListTile(
              leading: Icon(Icons.countertops),
              title: Text(
                "Counter",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
                  color: Theme.of(context).primaryColor,
                  fontWeight:
                      Theme.of(context).textTheme.displayLarge?.fontWeight,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(height: 2),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text(
                "Chat",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
                  color: Theme.of(context).primaryColor,
                  fontWeight:
                      Theme.of(context).textTheme.displayLarge?.fontWeight,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/chat");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
            color: Theme.of(context).indicatorColor,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          "Hello world!!",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
