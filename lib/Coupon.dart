import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({Key? key}) : super(key: key);

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _textFieldController = TextEditingController();


   List<String> _items = [
     'Kupon için ürünleri seçiniz'
    'Kol saati',
    'Nike Run Swift 2',
    'T-shirt',
    'Adidas Ayakkabı',
    'Puma Ceket'
  ];

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

  Widget _buildTextField(String hintText) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
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
    );
  }

  @override
  Widget build(BuildContext context) {

    List<String> _items = [
      'Kupon için ürünler seçiniz',
      'Kol saati',
      'Nike Run Swift 2',
      'T-shirt',
      'Adidas Ayakkabı',
      'Puma Ceket'
    ];
    String _selectedItem = _items[0];

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Kupon",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[850],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.transparent,
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
          SizedBox(height: 20),
          _buildTextField('Kupon Adı '),
          SizedBox(height: 20),
          _buildTextField('Kupon Kodu'),
          SizedBox(height: 20),
          _buildTextField('Kupon için gerekli sepet ücreti'),
          SizedBox(height: 20),
          _buildTextField('Kupon indirim fiyatı'),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          if (_dateRange != null)
            Text('Selected date range: ${_dateRange!.start} - ${_dateRange!.end}'),

          Column(
            children: [
              DropdownButtonFormField<String>(
                value: _selectedItem,
                items: _items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedItem = value ?? '';
                  });
                },
              ),
              SizedBox(height: 20), // Add some space between dropdown and text field

            ],
          ),

        ],
      ),
    );
  }
}
