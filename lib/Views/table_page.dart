import 'package:flutter/material.dart';

class ShowDataTable extends StatefulWidget {
  const ShowDataTable({Key? key}) : super(key: key);

  @override
  State<ShowDataTable> createState() => _ShowDataTableState();
}

class _ShowDataTableState extends State<ShowDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TableData"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
                child: Text(
              "Product Table",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            )),
            const SizedBox(
              height: 20.0,
            ),
            DataTable(columns: const [
              DataColumn(
                label: Text(
                  "Id",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w900),
                ),
              ),
              DataColumn(
                label: Text(
                  "name",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w900),
                ),
              ),
              DataColumn(
                label: Text(
                  "Price",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w900),
                ),
              ),
            ], rows: const [
              DataRow(cells: [
                DataCell(Text("01")),
                DataCell(Text("Item 1")),
                DataCell(Text("Rs.390")),
              ]),
              DataRow(cells: [
                DataCell(Text("02")),
                DataCell(Text("Item 2")),
                DataCell(Text("Rs.420")),
              ]),
              DataRow(cells: [
                DataCell(Text("03")),
                DataCell(Text("Item 3")),
                DataCell(Text("Rs.100")),
              ]),
              DataRow(cells: [
                DataCell(Text("04")),
                DataCell(Text("Iten 4")),
                DataCell(Text("Rs.350")),
              ]),
              DataRow(cells: [
                DataCell(Text("05")),
                DataCell(Text("Item 5")),
                DataCell(Text("Rs.670")),
              ]),
              DataRow(cells: [
                DataCell(Text("06")),
                DataCell(Text("Item 6")),
                DataCell(Text("Rs.530")),
              ]),
              DataRow(cells: [
                DataCell(Text("07")),
                DataCell(Text("Item 7")),
                DataCell(Text("Rs.720")),
              ]),
            ])
          ],
        ),
      ),
    );
  }
}
