/*
life cycle of statefull widget

* 1 ) contructor 
* 2) initstate
* 3) didchangedependency --> external widget'as 
* 4) build -->setState
* 5) didupdatewidget
* 
* // for cleanup
  6) deActivate --> statecleanUp
  * 7) dispose --> 3rd party cleanup / UI cleanup
*/


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';


class StateDemo extends StatefulWidget {
 StateDemo(){
   print("StateDemo Cons call");
 }

  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  late int _count ;
  String val = "";
  String ROI = "";
  late int _value;
  double sum =0;
  late Map<String, double> dataMap;
  
  _plus(){
      _count++;
      print("Count Value is $_count");
      setState(() {
        
      });
  }


  _calcEMI(){
      double PA = int.parse(val)/_value;
      double interest = (int.parse(val) * (int.parse(ROI)/100))/_value;
      sum = PA + interest;
      dataMap = {
        "principle amount": PA,
        "Total interest": interest
      };

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 0;
    _value = 1;
    dataMap = {
      "":0.0
    };
    print("State Init ....");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StateDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("State Clean...");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Http Call Stream Close...");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Call......");
    return Scaffold(
      /*
        floatingActionButton: FloatingActionButton(onPressed: (){
          _plus();
        },
        child: const Text('+',style: TextStyle(fontSize: 20),),
        ),
        body: Column(children: [
          ElevatedButton(onPressed: (){
            val = tc.text;
            setState(() {
              
            });
          }, child: Text('Get Name')),
          Text('Count is $_count and $val', 
        style: GoogleFonts.pacifico(fontSize: 30 , backgroundColor: Colors.amberAccent),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller:  tc,
              // onChanged: (String value){
              //   val = value;
              //   setState(() {
                  
              //   });
              //},
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.camera),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),  
                prefixIcon: Icon(Icons.person, color: Colors.redAccent,),
                helperText: 'Name Must be A-Z',
                hintText: 'Name here',
                label: Text('Type Name HERE'),
          
              ),
            ),
          )
        ],),
        appBar: AppBar(title: const Text('StateFul Demo'),),
    );
    */

      body: Column(children: [
       // Text('ROI is $ROI and amount entered is $val also the years are $_value', style: GoogleFonts.pacifico(fontSize: 30 , color : Colors.pink),),
        const SizedBox(height: 25,),
        Padding(

          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            onChanged: (String value){
              val = value;
              setState(() {

              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.attach_money_outlined, color: Colors.blue,),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
              prefixIcon: Icon(Icons.attach_money_outlined, color: Colors.blue,),
              helperText: 'amount Must be of number from 0-9',
              hintText: 'amount here',
              label: const Text('Enter your amount here !!'),

            ),
          ),
        ) ,
        const SizedBox(height: 25,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            onChanged: (String value){
              ROI = value;
              setState(() {

              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.account_balance_sharp, color: Colors.blue,),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
              prefixIcon: Icon(Icons.account_balance_sharp, color: Colors.blue,),
              helperText: 'amount Must be of number from 0-9',
              hintText: 'rate of interest here',
              label: const Text('Enter your ROI here !!'),

            ),
          ),
        ) ,
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 28,
                    ),
                    Expanded(
                        child: Slider(
                            value: _value.toDouble(),
                            min: 1.0,
                            max: 25.0,
                            divisions: 25,
                            activeColor: Colors.green,
                            inactiveColor: Colors.orange,
                            label: 'Set years value',
                            onChanged: (double newValue) {
                              setState(() {
                                _value = newValue.round();
                                //_calcEMI();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                    ),
                  ]
              )
          ),
        ) ,
         Text('Tenuer is $_value years',
           style: GoogleFonts.b612(fontSize: 18 , color : Colors.brown),),
         //const SizedBox(height: 25,),
        Text('finally EMI is $sum',
          style: GoogleFonts.b612(fontSize: 30 , color : Colors.brown),),

        ElevatedButton(onPressed: (){
          _calcEMI();
          setState(() {

          });
        }, child: const Text('Calculate EMI ...' , style: TextStyle(backgroundColor: Colors.green),)
          ),
          const SizedBox(height: 15,) ,
          PieChart(
              dataMap: dataMap ,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 7.2,
            chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "pie_chart",
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: true,
              decimalPlaces: 1,
            ),


          ) ,

      ],),
      appBar: AppBar(title: const Text('EMI Calc'),),
    );
  }
}