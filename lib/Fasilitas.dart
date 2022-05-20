import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:info_upi/RincianFasilitas.dart';


class Fasilitas extends StatelessWidget {
  Fasilitas({Key? key}) : super(key: key);

  Map facilityData = {
    'gym': {
      'name': 'Gymnasium',
      'desc': 'Gymnasium UPI ...'
    },
    'kolam': {
      'name': 'Kolam Renang',
      'desc': 'Kolam Renang UPI ...'
    }
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView(
          padding: const EdgeInsets.all(20),
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
                          facilityData['gym']['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          facilityData['gym']['desc'],
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
                MaterialPageRoute(builder: ((context) => RincianFasilitas(data: facilityData['gym']))));
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
                          facilityData['kolam']['name'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                          ),
                        ),
                        Text(
                          facilityData['kolam']['desc'],
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
                MaterialPageRoute(builder: ((context) => RincianFasilitas(data: facilityData['kolam']))));
            },
          )
        ]),
      ]
    );
  }
}
