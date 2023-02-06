// Column
// (
// children: [
// Expanded
// (
// child: getMyPage
// (
// )),
// Container
// (
// height: 70
// ,
// width: double.infinity,decoration: BoxDecoration
// (
// color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20
// )
// ,
// topLeft: Radius.circular(20
// )
// )
// ,
// boxShadow: [
// BoxShadow
// (
// color: Colors.black12,blurRadius: 10
// ,
// offset: Offset
// (0,
// 5
// )
// )
// ,
// BoxShadow
// (
// color: Colors.black12,blurRadius: 10
// ,
// offset: Offset
// (0,
// 5
// )
// )
// ,
// ]
// )
// ,
// child: Row
// (
// mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
// IconButton
// (
// onPressed: () {
// setState(() {
// pos = 0;
// });
// },
// icon: Icon
// (
// Icons.home,size: 30
// ,
// color: pos == 0
// ?
// Colors.blue : Colors.black,)
// ,
// )
// ,
// IconButton
// (
// onPressed: () {
// setState(() {
// pos = 1;
// });
// },
// icon: Icon
// (
// Icons.search,size: 30
// ,
// color: pos == 1
// ?
// Colors.blue : Colors.black,)
// ,
// )
// ,
// IconButton
// (
// onPressed: () {
// setState(() {
// pos = 2;
// });
// },
// icon: Icon
// (
// Icons.add_box_outlined,size: 30
// ,
// color: pos == 2
// ?
// Colors.blue : Colors.black,)
// ,
// )
// ,
// IconButton
// (
// onPressed: () {
// setState(() {
// pos = 3;
// });
// },
// icon: Icon
// (
// Icons.favorite_border_outlined,size: 30
// ,
// color: pos == 3
// ?
// Colors.blue : Colors.black,)
// ,
// )
// ,
// IconButton
// (
// onPressed: () {
// setState(() {
// pos = 4;
// });
// },
// icon: Icon
// (
// Icons.person,size: 30
// ,
// color: pos == 4
// ?
// Colors.blue : Colors.black,
// ),
// ),
// ],
// ))
// ],
// )
// ,
// );
// }
//
// getMyPage() {
//   switch (pos) {
//     case 0:
//       return ListView(children: [
//         HomePage(),
//         SizedBox(
//           height: 10,
//         ),
//         ListPage()
//       ]);
//     case 1:
//       return Searchpage();
//     case 2:
//       return AddPage();
//     case 3:
//       return FavoritePage();
//     case 4:
//       return ProfilePage();
//   }
// }