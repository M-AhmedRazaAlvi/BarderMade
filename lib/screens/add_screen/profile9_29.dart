// import 'package:bartermade/utils/app_colors.dart';
// import 'package:flutter/material.dart';

// class Profile29 extends StatefulWidget {
//   _Profile29State createState() => _Profile29State();
// }

// bool isclick = false;

// class _Profile29State extends State<Profile29> {
//   final List<String> _listViewData = [
//     "Profile",
//     "Setting",
//     "Gift",
//     "Watchlist",
//     "Logout",
//   ];
//   // ignore: unused_field
//   final _listiconsData = [
//     isclick == true
//         ? Icon(Icons.person_outline)
//         : Icon(
//             Icons.person_outline,
//             //color: Colors.white
//           ),
//     Icon(Icons.settings_outlined),
//     Icon(Icons.wallet_giftcard),
//     Icon(Icons.favorite_outline),
//     Icon(Icons.logout),
//   ];

//   int _selectedIndex = 0;

//   _onSelected(int index) {
//     setState(() => _selectedIndex = index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     String dropdownValue = 'John Doe';
//     return Scaffold(
//       appBar: AppBar(
//         // automaticallyImplyLeading: null,
//         backgroundColor: Colors.white,
//         toolbarHeight: 200,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(40),
//                 topRight: Radius.circular(40),
//               ),
//               image: DecorationImage(
//                   image: AssetImage("assets/images/Rectangle67.png"),
//                   fit: BoxFit.cover)),
//           child: Center(
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.2,
//               width: MediaQuery.of(context).size.width * .4,
//               //color: Colors.blue,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                       height: MediaQuery.of(context).size.height * 0.08,
//                       width: MediaQuery.of(context).size.width * .2,
//                       child: Image.asset("assets/images/girl.png",
//                           fit: BoxFit.contain)),
//                   Container(
//                     child: Center(
//                         child: DropdownButton<String>(
//                       value: dropdownValue,
//                       icon: Padding(
//                           padding: const EdgeInsets.only(left: 0),
//                           child: const Icon(Icons.keyboard_arrow_down,
//                               color: Colors.white)),
//                       iconSize: 24,
//                       style: const TextStyle(color: Colors.white, fontSize: 20),
//                       onChanged: (newValue) {
//                         setState(() {
//                           dropdownValue = newValue;
//                         });
//                       },
//                       items: <String>['John Doe', 'Olivia', 'Sophia', 'Emma']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(
//                               value,
//                               style: TextStyle(color: Colors.black),
//                             ));
//                       }).toList(),
//                     )),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Edit your profile',
//                           style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w400)),
//                       Container(
//                           padding: EdgeInsets.only(left: 10),
//                           child: Image.asset(
//                               "assets/images/ic_mode_edit_24px.png",
//                               color: Colors.white))
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: _listViewData.length,
//         itemBuilder: (context, index) => Container(
//           color: _selectedIndex != null && _selectedIndex == index
//               ? AppColors.pinkAppBar
//               : Colors.white,
//           child: ListTile(
//               // hoverColor: Colors.white,
//               leading: _listiconsData[index],
//               title: Text(_listViewData[index]),
//               onTap: () {
//                 setState(() {
//                   isclick = !isclick;
//                   _onSelected(index);
//                 });
//               }),
//         ),
//       ),
//     );
//   }
// }
