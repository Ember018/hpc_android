import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bảng thông tin",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                  decoration: BoxDecoration(
                    color: Colors.teal[200],
                  ),
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(
                          child: Text(
                        "Tên",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(
                          child: Text("Địa chỉ",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TableCell(
                          child: Text("Tuổi",
                              style: TextStyle(fontWeight: FontWeight.bold))),
                    )
                  ]),
              const TableRow(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("An")),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("Hà Nội")),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("20")),
                )
              ]),
              const TableRow(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("Chi")),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("Đà Nẵng")),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TableCell(child: Text("21")),
                )
              ]),
            ]),
      ),
    );
  }
}
