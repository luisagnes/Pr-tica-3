import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  ListView criarListView(){
    return ListView(

      children: <Widget> [
        ListTile(
          title: Text("Sírios"),
          subtitle: Text("O melhor para quem quer fumaça."),
          trailing: Image(
              image: NetworkImage('https://i.pinimg.com/170x/1f/f8/82/1ff8823a5f3953c4ae54f674ae93f96c.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Turcos"),
          subtitle: Text("O melhor em aparencia."),
          trailing: Image(
              image: NetworkImage('https://http2.mlstatic.com/D_NQ_NP_768537-MLB42778462632_072020-O.jpg')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
        ListTile(
          title: Text("Sultan"),
          subtitle: Text("O melhor em qualidade."),
          trailing: Image(
              image: NetworkImage('https://cdn.shopify.com/s/files/1/0023/4094/5955/products/PicsArt_10-17-01.35.32_1200x1200.jpg?v=1602909710')
          ),
          isThreeLine: true,
          onLongPress: () {},
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My recipes"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('My recipes'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Add new'),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black87,
                padding: EdgeInsets.only(left: 16),
              ),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: const Text('Logout'),),
            ),
          ],
        ),
      ),

      body:
      criarListView() , floatingActionButton: FloatingActionButton(
      onPressed: () => Navigator.pushReplacementNamed(context, '/cadastro'),
      backgroundColor: Colors.blue,
      child: Icon(Icons.add),
    ),
    );
  }
}



