import 'package:flutter/material.dart';

class HomeStars extends StatefulWidget {
  @override
  _HomeStarsState createState() => _HomeStarsState();
}

class _HomeStarsState extends State<HomeStars> {
  var _star = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //Colocando ao centro
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildIcon(1),
            buildIcon(2),
            buildIcon(3),
            buildIcon(4),
            buildIcon(5),
            
          ],
        ),
        SizedBox(height: 10,),
        _star > 0 ? 
        Text('Você tem $_star estrelas') : 
        Text('Você não tem nenhuma estrela', style: TextStyle(fontSize: 24),)
      ],),
    );
  }
//Crinado o widget estrelas
  Widget buildIcon(int valor){
    var clicado = _star >= valor;
    return InkWell(
      onTap: (){
              setState(() => _star = valor);
              },
                  child: Icon(
                clicado ? Icons.star : Icons.star_border,
                size: 35,
                color: clicado ? Colors.orange : Colors.grey,
              ),
            );
          }
}
        
     