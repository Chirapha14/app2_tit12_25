import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(//ส่วนหัวของหน้าแอพ
          title: const Text('หน้าแรก'),
          leading: Icon(Icons.settings),
          actions: [
            Icon(Icons.notification_add),
            Icon(Icons.menu)
          ],
        ),
        body: Column(
          children: [
            Text("Hello"),
            Text("Hola"),
            Text(
                "Hello",
                style : TextStyle(//ตกแต่งข้อความ
                  color: Colors.pink, //สีอักษร
                  backgroundColor: Colors.green[300], //สีพื้นหลัง
                  fontSize:40, //ขนาด
                  fontWeight: FontWeight.w900, //ความหนาอักษร
                )
            ),
            Row(
              children: [
                Icon(
                  Icons.sunny,
                  color : Colors.deepPurple, //สีไอคอน
                  size: 500, //ขนาด
                ),
                Icon(Icons.e_mobiledata),
                Icon(Icons.cloud),
              ],
            ),
            Row(
              children: [
                Image.asset( //ภาพจากไฟล์
                    "assets/images (1).jpeg",
                    width: 200,//กว้าง
                    height: 200,//สูง
                    fit: BoxFit.cover,//ภาพเต็มกรอบ
                ),
                ClipOval( // ทำให้เป็นวงกลม
                  child: Image.network( // ภาพจากลองก์
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ13GGVvCE-DdY36hYyaG3MapmlH_ikF2UtywgEQFbXaQ&s=10"
                     ,width: 200,
                     height: 200,
                     fit: BoxFit.cover,
                  ),
              ],
            )
             Row(
               children: [
                 ElevatedButton( //ปุ่มทึบ
                   onPressed: () => {},
                   child: Text("ปุ่ม 1"),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.deepOrange,//สีพื้นหลัง
                     foregroundColor: Colors.white, // สีข้อความม ไอคอน
                   ),
                 ),
                 SizedBox( // เว้นช่องว่าง
                 width: 20, // เว้นแนวนอน
                 height: 100,// เว้นแนวตั้ง
                  ),
                 Expanded(// ขยาย
                 child: OutlinedButton( // ปุ่มมีเส้นขอบ)
                     onPressed: () => {},
                     child: Text("ปุ่ม 2"),
                     style: OutlinedButton.styleFrom(
                       backgroundColor: Colors.lightBlueAccent[50],
                        foregroundColor: Colors.blueAccent
                       ),
                     ),
               ],
             )
          ],
        )
    );
  }
}