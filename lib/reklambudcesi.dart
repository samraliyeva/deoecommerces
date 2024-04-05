import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ReklamScreen extends StatefulWidget {
  const ReklamScreen({Key? key}) : super(key: key);

  @override
  State<ReklamScreen> createState() => _ReklamScreenState();
}

class _ReklamScreenState extends State<ReklamScreen> {
  ///slider1 value
  double _currentValue = 0;
  ///slider2 value
  double _currentValue2 = 0;
  ///textstyle parent
TextStyle textStyle1=TextStyle(
  fontWeight: FontWeight.w900,
  color: Colors.white,
  fontSize: 20,
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Reklam Bütçesini Ayarla",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Günlük Bütçe',
              style:textStyle1,
            ),
            SizedBox(
              height: 30,
            ),
            slider1Custom(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Süre Ayarlama',
              style:textStyle1 ,
            ),
            SizedBox(
              height: 30,
            ),
            slider2Custom(),
            Spacer(),
            //row1
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Reklam Bilgisi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //row2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harcama (Toplam)',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                    "\$131.91",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //row3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tahmini erişim',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '60.000-80.000',
                  style: TextStyle(color: Colors.white),
                ),

              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:AdvertiseButton(),
    );
  }
  ///reklam ver button
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
  ///slider1custom
  Widget slider1Custom(){
  return  Padding(
    padding:  EdgeInsets.symmetric(horizontal: 8.0),
    child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.orange,
          inactiveTrackColor: Colors.grey,
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: Colors.orange,
          overlayColor: Colors.black,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: Colors.orange,
          inactiveTickMarkColor: Colors.grey,
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: Colors.black,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        child: Slider(
          value: _currentValue,
          min: 0,
          max: 10,
          divisions: 10,
          label: '\$${_currentValue.toInt()}',
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
      ),
  );


  }
  ///slider2custom
  Widget slider2Custom(){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.orange,
          inactiveTrackColor: Colors.grey,
          trackShape: RoundedRectSliderTrackShape(),
          trackHeight: 4.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          thumbColor: Colors.black,
          overlayColor: Colors.black,
          overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
          tickMarkShape: RoundSliderTickMarkShape(),
          activeTickMarkColor: Colors.orange,
          inactiveTickMarkColor: Colors.grey,
          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
          valueIndicatorColor: Colors.black,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        child: Slider(
          value: _currentValue2,
          min: 0,
          max: 31,
          divisions: 10,
          label: '${_currentValue2.toInt()} gün',
          activeColor: Colors.orange,
          onChanged: (value) {
            setState(() {
              _currentValue2 = value;
            });
          },
        ),
      ),
    );

  }
}
