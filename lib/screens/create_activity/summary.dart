import 'package:flutter/material.dart';

class ActivitySummary extends StatelessWidget {
  const ActivitySummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Informacion general",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),

              GestureDetector(
                child: const Text(
                  "Editar",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onTap: (){},
              ),
            ],
          ),
          SizedBox(height: 20),

          SizedBox(
            width: size.width ,
            child: Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(255, 199, 199, 199),
                ),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nombre del proyecto',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Proyecto GLP'),
                    SizedBox(height: 20),
            
                    Text(
                      'Empresa solicitante',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('xxxxxxxxxxxxxxx'),
                    SizedBox(height: 20),
            
            
                    Text(
                      'Nombre del solicitante',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('xxxxxxxxxxx'),
                    SizedBox(height: 20),
            
            
                    Text(
                      'Cargo del solicitante',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Proyecto GLP'),
                    SizedBox(height: 20),
                    
            
                    Text(
                      'Fecha',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('xxxxxxxxxxxx'),
                    SizedBox(height: 20),
            
            
                    Text(
                      'Lider de cuadrilla',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('xxxxxxxxxxxxxxx'),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}