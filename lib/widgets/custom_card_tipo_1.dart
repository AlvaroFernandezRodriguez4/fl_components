import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Beetlejuice'),
            subtitle: Text(
                'Lester Green, más conocido como Beetlejuice, es una personalidad de la cultura pop estadounidense, actor y comediante. Nacido el 2 de junio de 1968 en Jersey City, Nueva Jersey, es reconocido por su carisma único y su humor excéntrico. Beetlejuice alcanzó la fama como uno de los miembros más queridos del "Wack Pack" del The Howard Stern Show, donde sus intervenciones hilarantes y espontáneas lo convirtieron en un ícono del programa.\n\nA pesar de tener enanismo y microcefalia, condiciones que afectan su apariencia física y desarrollo cognitivo, Beetlejuice ha logrado destacarse en la industria del entretenimiento. Ha aparecido en películas como Bubble Boy (2001) y en videos musicales, ganándose una legión de fans por su personalidad auténtica y desinhibida.\n\nAdemás de su carrera en los medios, Beetlejuice es una figura viral en internet, con memes y videos que celebran su singular sentido del humor. Su legado como una de las figuras más memorables del entretenimiento alternativo continúa vigente, trascendiendo generaciones y plataformas.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child:
                    TextButton(onPressed: () {}, child: const Text('Aceptar')),
              )
            ],
          )
        ],
      ),
    );
  }
}
