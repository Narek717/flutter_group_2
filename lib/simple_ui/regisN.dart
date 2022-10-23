import 'package:flutter/material.dart';
import 'package:online_shop/online_shop/online_shop_big/online_shop.dart';
import 'package:online_shop/simple_ui/settings_ui_N.dart';
import 'package:online_shop/simple_ui/viber_N.dart';
import 'package:online_shop/whatsApp/whatsapp1.dart';

void main() {
  runApp(const Myapp2());
}
class Myapp2 extends StatelessWidget {
  const Myapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
body: MyScreen(),
        ),
      ),
    );
  }
}
class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);
  @override
  State<MyScreen> createState() => _MyScreenState();
}
class _MyScreenState extends State<MyScreen> {
  bool showPassword = false;
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'Register to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.white,
                      child: const Center(
                        child: Text('f',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.white,
                      child: Center(
                        child: Image.network(
                          'https://www.internetmatters.org/wp-content/uploads/2018/01/Twitter-PC-logo.png',
                          width: 80,
                          height: 55,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 55,
                      width: 80,
                      color: Colors.white,
                      child: Center(
                        child: Image.network(
                          'https://media-exp1.licdn.com/dms/image/C510BAQEBW-TswoZ0CA/company-logo_200_200/0/1519910609548?e=2159024400&v=beta&t=tj5pnrDZUtVHNTx2sI_lxHs6uEXvTA6dyBb1AfAkwoQ',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'or Register With Email',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
              TextField(
              showCursor: true,
              decoration: InputDecoration(
                filled: false,
               fillColor: Colors.redAccent,
               labelText: 'Enter your name',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3
                  ),
                   borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
           TextField(
              showCursor: true,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.redAccent,
                labelText: 'Enter your mail',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.indigoAccent,
                      width: 3
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
             TextField(
              controller: passwordCtrl,
              obscureText: !showPassword,
              obscuringCharacter: ('*'),
              maxLength: 10,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.redAccent,
                  labelText: 'Enter your password',
              suffixIcon: IconButton(
                onPressed: _onShowPassword,
                icon: showPassword ?
                const Icon(Icons.visibility,
                  color: Colors.black,
                )
                    : const Icon(Icons.visibility_off),
                color: Colors.black,
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(
                    color: Colors.deepOrange,
                    width: 3
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ShopPage1()
                ),
                );},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[100]),
                  fixedSize: MaterialStateProperty.all(const Size(250, 50)),
                  elevation: MaterialStateProperty.all(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const  [
                    Text(
                      '',
                    ),
                    Text(
                      'Login in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Icon(
                        Icons.arrow_forward,
                      color: Colors.brown,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const Whatsapp1()
                        ),
                        );
                      },
                          icon: Icon(
                        Icons.whatsapp,
                      color: Colors.green[400],
                      size: 24,
                      )
                      ),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const Viber()
                        ),
                        );
                      },
                          icon: Icon(
                        Icons.wifi_calling_3,
                        color: Colors.deepPurpleAccent[400],
                        size: 24,
                      )
                      ),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const SettUI()
                      ),
                      );
                        },
                          icon: Icon(
                            Icons.settings,
                            color: Colors.orange[700],
                            size: 24,
                      )
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an account? '),
                      Text('Login',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      )
                    ],
                  ),
                ),
              ]
              ),
            )
          ],
        ),
      ),
    );
  }
  void _onShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}