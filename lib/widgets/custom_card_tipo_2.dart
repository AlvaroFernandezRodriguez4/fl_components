import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://muckychris.com/cdn/shop/products/beet-bust-02_grande.jpg?v=1635823558.jpg'),
            placeholder: AssetImage('assets/Loading_icon.gif'),
            //width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 3000),
          ),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: 
            const Text('Bettlejuice')
            )
        ],
      ),
    );
  }
}
