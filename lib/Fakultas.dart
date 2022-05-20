import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  Fakultas({Key? key}) : super(key: key);

  Map facultyData = {
    'fpmipa': {
      'name': 'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam',
      'abbr': 'FPMIPA',
      'desc': 'FPMIPA UPI ...'
    },
    'fpips': {
      'name': 'Fakultas Pendidikan Ilmu Pengetahuan Sosial',
      'abbr': 'FPIPS',
      'desc': 'FPIPS UPI ...'
    }
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView(
          padding: EdgeInsets.all(20),
          shrinkWrap: true, 
          children: [
          InkWell(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Text(
                          facultyData['fpmipa']['abbr'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          facultyData['fpmipa']['name'],
                          textAlign: TextAlign.left,
                        )
                        ]
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                      height: 80,
                    ),
                  )
                ]
              )
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => RincianFakultas(data: facultyData['fpmipa']))));
            },
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget>[
                  Expanded(
                    flex: 7,
                    child: Column(
                      children:[
                        Text(
                          facultyData['fpips']['abbr'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          facultyData['fpips']['name'],
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                      height: 80,
                    ),
                  )
                ]
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => RincianFakultas(data: facultyData['fpips']))));
            },
          )
        ]),
      ]
    );
  }
}
