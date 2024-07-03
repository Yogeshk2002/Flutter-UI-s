import 'package:expnse_manager/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class MypieChart extends StatefulWidget {
  const MypieChart({Key? key}) : super(key: key);

  @override
  State createState() => _MypieChartState();
}

class _MypieChartState extends State<MypieChart> {
  Map<String, double> data = {
    "Food": 20,
    "Fuel": 10,
    "Medicine": 40,
    "Entertainment": 30,
    "Shopping": 35
  };

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "lib/assets/images/food.png",
      "lib/assets/images/fuel.png",
      "lib/assets/images/medicine.png",
      "lib/assets/images/entertainment.png",
      "lib/assets/images/shopping.png",
    ];

    List<String> names = [
      "Food",
      "Fuel",
      "Medicine",
      "Entertainment",
      "Shopping",
    ];

    List<String> prices = [
      "₹ 650.00",
      "₹ 600.00",
      "₹ 500.00",
      "₹ 475.00",
      "₹ 325.00"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Graphs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: PieChart(
                chartValuesOptions: ChartValuesOptions(
                  showChartValues: false,
                ),
                dataMap: data,
                chartType: ChartType.ring,
                centerWidget: Column(
                  children: [
                    Text("Total"),
                    Text(
                      "2550.00",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  String img = images[index];
                  String name = names[index];
                  String expense = prices[index];

                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(img),
                              SizedBox(width: 10),
                              Text(name),
                    
                            ],

                            
                          ),
                          Text(expense)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            //SizedBox(height: 0,),

            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                    Text("₹ 2550.00",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}




