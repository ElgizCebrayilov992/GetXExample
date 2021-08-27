import 'package:flutter/material.dart';
import 'package:getx_tutorial/widgets/recorde_list_tile.dart';

class GraphScrenn extends StatefulWidget {
  const GraphScrenn({Key? key}) : super(key: key);

  @override
  _GraphScrennState createState() => _GraphScrennState();
}

class _GraphScrennState extends State<GraphScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Graph Screen'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ],
      ),
    );
  }
}
