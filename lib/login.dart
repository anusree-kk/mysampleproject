import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:log(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage("images/ROSE.jpeg"),
            fit: BoxFit.cover
        )),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/ROSE.jpeg"),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                    labelText:"Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
              ),
              SizedBox(height: 10,),
              SizedBox(height: 40, width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ), onPressed: () {}, child: Text("LOG IN")
                  )
              ),
              Text("Forgot a password?")
            ]
        ),
      ),
    );
  }
}