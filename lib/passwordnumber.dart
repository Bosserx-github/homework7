import 'package:flutter/material.dart';

class PasswordnumberPage extends StatelessWidget {
  const PasswordnumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.teal.shade200
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outlined,         // รูปไอคอน
                      size: 70.0,           // ขนาดไอคอน
                      color: Colors.black,   // สีไอคอน
                    ),
                    SizedBox(width: 8.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('กรุณาใส่รหัสผ่าน',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 1; i <= 3; i++)
                    buildButton(num: i), //setnumber1-3
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [for (var i = 4; i <= 6; i++)
                    buildButton(num: i), //setnumber4-6
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [for (var i = 7; i <= 9; i++)
                    buildButton(num: i), //setnumber7-9
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(width: 75.0,
                      height: 75.0,),
                  ),
                  buildButton(num: 0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: 75.0,height: 75.0,
                      child: Icon(
                        Icons.backspace,         // รูปไอคอน
                        size: 30.0,           // ขนาดไอคอน
                        color: Colors.black,   // สีไอคอน
                      ),),
                  )
                ],
              ),

              Padding(padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    child: Text('ลืมรหัสผ่าน',style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black)),
                    onPressed: (

                        ){
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child: Container(
            width: 75.0,
            height: 75.0,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // สีเงา
                    offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ]
            ),
            child: Center(
              child: Text('$num',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.black),),
            )

        ),
      ),
    );
  }
}