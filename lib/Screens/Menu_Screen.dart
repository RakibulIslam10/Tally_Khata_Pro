import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart'; // Ensure you import your App_Color.dart file

List<Map<String, dynamic>> _category = [
  {
    'mainTitle': 'খাতা রিপোর্ট',
    'subCategory': [
      {'title': 'বেচা-কেনা', 'thumbnail': 'tag.png'},
      {'title': 'খরচ', 'thumbnail': 'cost.png'},
      {'title': 'বাকি-হিসাব', 'thumbnail': 'due.png'},
      {'title': 'ক্যাশ-হিসাব', 'thumbnail': 'cash_drawer.png'},
      {'title': 'মালিকের রিপোর্ট', 'thumbnail': 'profile_report.png'},
    ],
  },
  {
    'mainTitle': 'অন্যান্য',
    'subCategory': [
      {'title': 'হেল্প', 'thumbnail': 'help_center.png'},
      {'title': 'ডাটা-ব্যাকআপ', 'thumbnail': 'data_backup.png'},
      {'title': 'তাগাদা পাঠাই', 'thumbnail': 'send_notification.png'},
      {'title': 'টালি-ম্যাসেজ কিনি', 'thumbnail': 'massage.png'},
      {'title': 'সেটিংস', 'thumbnail': 'settings.png'},
      {'title': 'রেফার করুন', 'thumbnail': 'refer.png'},
    ],
  },
];

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow[800],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'FL',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'flutter',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('+8801700000000'),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(child: Icon(Icons.edit)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: double.infinity,
                  color: AppColors.secondaryColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: InkWell(
                      onTap: () {
                        //'সুপার QR কোড একটিভ করুন' Business Logic
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  width: MediaQuery.of(context).size.height * 0.05,
                                  decoration: BoxDecoration(
                                    color: AppColors.deepOrange,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.category_outlined,
                                        color: AppColors.backgroundColor,
                                        size: 25),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      AllStrings.qrText,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right_rounded,
                              color: AppColors.deepOrange),
                        ],
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: _category.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.01,
                              horizontal: MediaQuery.of(context).size.width * 0.05),
                          child: Text(
                            _category[index]['mainTitle'],
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: AppColors.deepOrange,
                            ),
                          ),
                        ),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _category[index]['subCategory'].length,
                          itemBuilder: (context, innerIndex) {
                            final subCategoryItem = _category[index]['subCategory'][innerIndex];
                            return InkWell(
                              onTap: () {
                                //Sub Category Business logic
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: MediaQuery.of(context).size.height * 0.005,
                                    horizontal: MediaQuery.of(context).size.width * 0.05),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icons/${subCategoryItem['thumbnail']}',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        subCategoryItem['title'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 50, // Adjust height as needed
                  ),
                  const Text(
                    'Version: 1.0.0',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            )
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
    );
  }
}
