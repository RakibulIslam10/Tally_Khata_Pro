import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/All_Image.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

List<Map<String, dynamic>> _menuList = [
  {'title': 'বেচা-কেনা', 'thumbnail': 'tag.png'},
  {'title': 'খরচ', 'thumbnail': 'cost.png'},
  {'title': 'বাকি-হিসাব', 'thumbnail': 'due.png'},
  {'title': 'ক্যাশ-হিসাব', 'thumbnail': 'cash_drawer.png'},
  {'title': 'মালিকের রিপোর্ট', 'thumbnail': 'profile_report.png'},
  {'title': 'মালিকের রিপোর্ট', 'thumbnail': 'profile_report.png'},
  {'title': 'মালিকের রিপোর্ট', 'thumbnail': 'profile_report.png'},
  {'title': 'মালিকের রিপোর্ট', 'thumbnail': 'profile_report.png'},
];

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key})
      : super(key: key); // Added 'Key?' and 'key' with const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          "ভাই ভাই স্টোর",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(Allimage.inbox),
                  ),
                  const Text(AllStrings.inbox),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(Allimage.supportIcon),
                  ),
                  const Text(AllStrings.help),
                ],
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_outlined,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.gray,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 4.0, right: 5.0, bottom: 4.0, left: 8.0),
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(Allimage.bdt),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 4.0, right: 8.0, bottom: 4.0, left: 5.0),
                          child: Text(AllStrings.accountBalance),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: Image.asset(Allimage.paymentGatewayLogo),
                  )
                ],
              ),
            ),
            const Divider(thickness: 4),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(AllStrings.todayQRpaymentRecived),
                ),
                Text(
                  '0.00',
                  style: TextStyle(
                      fontWeight: FontWeight.bold), // Removed 'const' from here
                )
              ],
            ),
            const Divider(thickness: 4),
            Column(
              children: [
                SizedBox(
                    height: 100,
                    width: 150,
                    child: Image.asset(Allimage.scanToPay)),
                const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Icon(Icons.check_circle_outline),
                          ),
                          Text(AllStrings.paymentText)
                        ],
                      ),
                      Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Icon(Icons.check_circle_outline),
                          ),
                          Text(AllStrings.paymentText1)
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.qr_code_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          AllStrings.takeSuperQR,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(thickness: 2),
                GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                   childAspectRatio: 1.9
                 ),
                  shrinkWrap: true,
                  itemCount: _menuList.length,
                  itemBuilder: (context, index) {
                    return GridTile(
                      footer: Center(child: Text(_menuList[index]['title'])),
                      child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                              'assets/icons/${_menuList[index]['thumbnail']}'),
                    ),
                     );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
