import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Menu',
    home: MenuPrincipal(),
  ));
}

class MenuPrincipal extends StatefulWidget {

  
  @override
  _MenuPrincipal createState() => new _MenuPrincipal();
}



class _MenuPrincipal extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
            title: Text("Menu Principal"),
            backgroundColor: Colors.red, 
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.deepOrange,
                      Colors.orangeAccent
                    ])
                  ),
                  child: Text('UWU')),
                CustomListTitle(Icons.person,'Perfil',()=>{}),
                CustomListTitle(Icons.person,'Tarifas',()=>{}),
                CustomListTitle(Icons.person,'Ventas',()=>{}),
                CustomListTitle(Icons.settings,'Configuracion',()=>{}),
                CustomListTitle(Icons.lock,'Cerrar',()=>{}),
              ],
            ),
          ),
          body: new Stack(
            children: <Widget>[
              Positioned(
                top: 20,
                left: 40,
                height: 150,
                width: 300,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text('Ventas'),
                ),
              ),
              Positioned(
                top: 300,
                left: 40,
                height: 150,
                width: 300,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text('Factura'),
                ),
              )
            ],
          ),
        );
      }
    }


class CustomListTitle extends StatefulWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTitle(this.icon,this.text,this.onTap);

  @override
  _CustomListTitleState createState() => _CustomListTitleState();
}

class _CustomListTitleState extends State<CustomListTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: widget.onTap,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(widget.icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.text,style: TextStyle(
                      fontSize: 16.0
                    ),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
        
      ),
    );
  }
}



