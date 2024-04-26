import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';

class BodyList extends StatelessWidget {
  const BodyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          _buildListItem('ক্যাশ বেচা'),
          _buildListItem('ক্যাশ কেনা'),
          _buildListItem('খরচ'),
          _buildListItem('মালিক দিল'),
          _buildListItem('মালিক নিল'),
        ],
      ),
    );
  }

  Widget _buildListItem(String title) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.lightPeach,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Icon(Icons.abc),
            ),
          ),
          title: Text(title),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('0.0'),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward_ios_sharp, size: 12,),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
