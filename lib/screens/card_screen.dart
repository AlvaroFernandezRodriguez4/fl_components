import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lester Green'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(
            imageUrl: 'https://render.fineartamerica.com/images/rendered/default/greeting-card/images/artworkimages/medium/3/funny-beetlejuice-picture-lester-green-daniel-theo.jpg?&targetx=0&targety=-100&imagewidth=700&imageheight=700&modelwidth=700&modelheight=500&backgroundcolor=1E1917&orientation=0.jpg', nombre: 'Entrevista'
          ),
          SizedBox(height: 10),
          CustomCardTipo2(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWm8y-L3OB39IxRaBlfGEQVy3B9ZW3UzhumQ&s.jpg', nombre: 'Desconfiado'
          ),
          SizedBox(height: 10),
          CustomCardTipo2(
            imageUrl: 'https://muckychris.com/cdn/shop/products/beet-bust-02_grande.jpg?v=1635823558.jpg', nombre: 'Trophy'
          ),
          SizedBox(height: 10),
          CustomCardTipo2(
            imageUrl: 'https://m.media-amazon.com/images/M/MV5BMTQ5NzU2NDQ3NV5BMl5BanBnXkFtZTcwMjc2MTcxOA@@._V1_FMjpg_UX1000_.jpg', nombre: 'Chill'
          ),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://i1.sndcdn.com/artworks-000338100936-kt6c6s-t500x500.jpg', nombre: 'Mega chill'
          ),
                    SizedBox(height: 10)
        ],
      ),
    );
  }
}
