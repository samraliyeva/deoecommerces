import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KuponListScreen extends StatefulWidget {
  const KuponListScreen({super.key});


  @override


  State<KuponListScreen> createState() => _KuponListScreenState();
}

class _KuponListScreenState extends State<KuponListScreen> {
  bool container1Check = true;
  bool container2Check = false;
  bool container3Check = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  DateTimeRange? _dateRange;

  Future<void> _selectDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(days: 7)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
      initialDateRange: initialDateRange,
    );

    if (newDateRange != null) {
      setState(() {
        _dateRange = newDateRange;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Kupon Yarat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1Check = true;
                      container2Check = false;
                      container3Check = false;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color:
                        container1Check ? Colors.orange : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.attach_money,
                            color: Colors.green,
                          size: 25,),
                        ),
                        SizedBox(
                          height: 5,
                        ),Text('Indirim',style: TextStyle(
                          color: Colors.white,
                          fontSize:15,
                        ),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1Check = false;
                      container2Check = true;
                      container3Check = false;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color:
                        container2Check ? Colors.orange : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.percent,
                            color: Colors.white,),
                        ),
                        SizedBox(
                          height: 5,
                        ),Text('Indirim',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:15,),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      container1Check = false;
                      container2Check = false;
                      container3Check = true;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(

                      color: Colors.black,
                      border: Border.all(
                        color:
                        container3Check ? Colors.orange : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/ballon.png'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('X alana',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:15,),
                        ),
                  Text('Y ücretsiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:15,),)

                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            if(container1Check)
              container1EnableedTextFields(),
            if(container2Check)
              container2EnableedTextFields(),
            if(container3Check)
              container3EnableedTextFields(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          decoration:   BoxDecoration(
            color: Colors.orange[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text('Kupon Yarat',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),)),
        ),
      ),
    );
  }

  Widget container1EnableedTextFields() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Adı',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Kodu',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon icin gerekli sepet ücreti',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon indirim fiyatı',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon başlama süresi ve bitme süresi',
              hintStyle: TextStyle(color:Colors.white),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding: EdgeInsets.all(20.0),
            ),
            onTap: () => _selectDateRange(context),
          ),
        ],
      ),
    );
  }

  Widget container2EnableedTextFields() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Adi',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Kodu',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon icin gerekli sepet ücreti',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon indirim yüzdesi',
              hintStyle:TextStyle(
                  color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon başlama süresi ve bitme süresi',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              contentPadding: EdgeInsets.all(20.0),
            ),
            onTap: () => _selectDateRange(context),
          ),
        ],
      ),
    );
  }
  Widget container3EnableedTextFields(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Adı',
              hintStyle:TextStyle(
                color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Kupon Kodu',
              hintStyle:TextStyle(
                color: Colors.white,
                fontSize: 15,
              ) ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
         Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Kupon başlama süresi ve bitme süresi',
                  hintStyle:TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ) ,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                ),
                onTap: () => _selectDateRange(context),
              ),

              SizedBox(height: 20),
              if (_dateRange != null)
                Text('Selected date range: ${_dateRange!.start} - ${_dateRange!.end}'),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  const ImageAsset({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.percent,
      color: Colors.white,);
  }
}

void main() {
  runApp(MaterialApp(
    home:KuponListScreen (),
  ));
}
