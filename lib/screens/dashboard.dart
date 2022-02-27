import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WOOOO'),
        backgroundColor: const Color(0xFF1F1F1F),
      ),
      body: Center(
        child: Image.asset('images/gnomed.jpg'),
      ),
      drawer: SizedBox(
        width: 275,
        child: Drawer(
          child: Container(
            color: const Color(0xFF1F1F1F),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const SizedBox(
                  height: 100,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF1166),
                    ),
                    child: Center(
                      child: Text("Super Useless App",
                          style:
                              TextStyle(fontSize: 24, fontFamily: 'Candara')),
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFF1F1F1F),
                  child: Material(
                    color: const Color(0xFF1F1F1F),
                    child: InkWell(
                      splashColor: const Color(0xFF363637),
                      child: Column(
                        children: [
                          ListTile(
                              title: const Text("Temperature Converter",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xFFFF1166))),
                              trailing: const Icon(Icons.thermostat,
                                  color: Color(0xFFFF1166)),
                              onTap: () =>
                                  Navigator.pushNamed(context, '/converter')),
                          const Divider(color: Color(0xFFFF1166)),
                          ListTile(
                              title: const Text("Fruitery",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xFFFF1166))),
                              trailing: const Icon(Icons.apple,
                                  color: Color(0xFFFF1166)),
                              onTap: () =>
                                  Navigator.pushNamed(context, '/fruit')),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
