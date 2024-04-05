import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReklamListScreen extends StatefulWidget {
  const ReklamListScreen({super.key});

  @override
  State<ReklamListScreen> createState() => _ReklamListScreenState();
}

class _ReklamListScreenState extends State<ReklamListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Reklam",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.white,
          ),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reklam verilme tarihi: 10 Haziran 2023',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Reklam bitme tarihi: 13 Haziran 2023',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'Bütçe: 250 TL',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Icon(
          Icons.delete,
          color: Colors.red,
          size: 30.0,
        ),
      ],
    ),
    ),
            SizedBox(
              height: 20,
            ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.white,
              ),
            ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Reklam verilme tarihi: 10 Haziran 2023',
                       style: TextStyle(
                         color: Colors.white,
                       ),
                     ),Text(
                       'Reklam bitme tarihi: 13 Haziran 2023',
                       style: TextStyle(
                         color: Colors.white,
                       ),
                     ),Text(
                       'Bütçe: 250 TL',
                       style: TextStyle(
                         color: Colors.white,
                       ),
                     ),
                   ],
                 ),
                 Icon(
                   Icons.delete,
                   color: Colors.red,
                   size: 30.0,
                 ),

               ],
             ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reklam verilme tarihi: 10 Haziran 2023',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),Text(
                          'Reklam bitme tarihi: 13 Haziran 2023',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),Text(
                          'Bütçe: 250 TL',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: SizedBox(
            )),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0)
              ),
            )
          ],
      ),
      ),
      bottomNavigationBar:AdvertiseButton(),
    );
}
  Widget AdvertiseButton(){
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          child: Center(child:
          Text('Reklam Ver',style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),),
          ),
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.orange.shade300,
            borderRadius: BorderRadius.all(Radius.circular(20)),

          ),
        ),
      ),
    );
  }
}
