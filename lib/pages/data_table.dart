import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Data Table Example",
        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: DataTable(
          border: TableBorder.all(
            width: 2,
            color: Colors.black,
          ),
            headingTextStyle: TextStyle(
              color: Colors.green,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            columns: [
              DataColumn(
                  label: Text("Age:")
              ),
              DataColumn(
                  label: Text("Country:")
              ),
              DataColumn(
                  label: Text("Job:")
              ),
            ],
            rows: [
              DataRow(
                  cells: [
                    DataCell(
                      Text("23")
                    ),
                    DataCell(
                        Text("Uzbekistan")
                    ),
                    DataCell(
                        Text("Builder")
                    ),
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(
                      Text("25")
                    ),
                    DataCell(
                        Text("India")
                    ),
                    DataCell(
                        Text("Developer")
                    )
                  ]
              )
            ]
        ),
      ),
    );
  }
}
