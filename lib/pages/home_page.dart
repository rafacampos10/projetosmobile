import 'package:flutter/material.dart';
import 'package:projeto_lista/pages/PageView/one_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Navegação"),
          centerTitle: true //deixar o texto do appBar centralizado
      ),
      drawer: Drawer( //Menu hamburger
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rafael"),
              accountEmail: Text("rcmartins.1894@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("R"),
              ),
            ),
            ListTile(
              //OPÇÃO SAIR DO MENU HAMBURGER
              title: Text("Sair"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context); //fechar o menu
                setState(() {
                  //alterar o botão no Stateful que sofre mudança
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              //OPÇÃO VOLTAR DENTRO DO MENU HAMBURGER
              title: Text("Home"),
              trailing: Icon(Icons.home_sharp),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context); //fechar o menu
                setState(() {
                  //alterar o botão no Stateful que sofre mudança
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              //OPÇÃO NOTIFICAÇÃO DENTRO DO MENU HAMBURGER
              title: Text("Perfil"),
              trailing: Icon(Icons.account_circle_sharp),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context); //fechar o menu
                setState(() {
                  //alterar o botão no Stateful que sofre mudança
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              //OPÇÃO 4 DENTRO DO MENU HAMBURGER
              title: Text("Vídeos"),
              trailing: Icon(Icons.featured_video),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context); //fecha o menu
                setState(() {
                  //alterar o botão no Stateful que sofre mudança
                  indexBottomNavigationBar = 2;
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(color: Colors.cyan),
          Container(color: Colors.lime),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          //clica no botão
          setState(() {
            //alterar o botão no Stateful que sofre mudança
            indexBottomNavigationBar = page;
          });
          _pageController.animateToPage(
            page,
            duration: Duration(milliseconds: 600), //duraçao da animação
            curve: Curves.ease,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_video),
            label: "Videos",
          ),
        ],
      ),
    );
  }
}
