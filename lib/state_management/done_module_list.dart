import 'package:flutter/material.dart';
import 'package:fundamental/state_management_provider/done_module_provider.dart';
import 'package:provider/provider.dart';

class DoneModuleList extends StatelessWidget {
  final List<String> doneModuleList;

  const DoneModuleList({
    Key? key,
    required this.doneModuleList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final doneModuleList = Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Done Module List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            title: Text(doneModuleList[index]),
          );
        },
        itemCount: doneModuleList.length,
      ),
    );
  }
}
