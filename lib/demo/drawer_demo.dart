import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Kaindy.Liu',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text('kaindy7633@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/11819674?v=4'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: const NetworkImage(
                        'https://t7.baidu.com/it/u=2529476510,3041785782&fm=193&f=GIF'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400]!.withOpacity(0.8),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: const Text('Messages', textAlign: TextAlign.right),
            trailing:
                const Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Favorite', textAlign: TextAlign.right),
            trailing:
                const Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('Settings', textAlign: TextAlign.right),
            trailing:
                const Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
