import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User user;

  getUserData() async {
    User userData = FirebaseAuth.instance.currentUser!;
    setState(() {
      user = userData;
    });
  }

  signOut() async {
    _auth.signOut();
  }

  @override
  void initState() {
    this.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "${user.displayName}",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "${user.email}",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                    image: AssetImage("images/perfil.jpg"),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg-perfil.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.info),
              title: Text("Informações do usuário"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.language),
              title: Text("Idioma"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.security),
              title: Text("Segurança"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.local_activity),
              title: Text("Logs"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.block),
              title: Text("Bloquear Acesso"),
              onTap: () {}),
          ListTile(
              leading: Icon(Icons.rule), title: Text("Regras"), onTap: () {}),
          ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text("Gráficos"),
              onTap: () {}),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: signOut,
          ),
          SizedBox(height: 30),
          Text("versão 1.0.0 – Teste Mobile"),
        ],
      ),
    );
  }
}
