import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bedtimestories/share_data.dart';

class FormCard extends StatelessWidget {
  FormCard({Key key, this.param}) : super(key: key);
  final Map param;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 25, right: 15, bottom: 25, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(param.isNotEmpty && param.containsKey('type') && param['type'] == 'login' ? 'Login' : 'Register',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(45),
                fontFamily: "Poppins-Bold",
                letterSpacing: .6
              )
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              Text("Name",
                style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)
                )
              ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter name",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)
                ),
              ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(30),
              ),
            Text("Email",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26)
              )
            ),
            TextField(
              controller: ShareData.emailController,
              decoration: InputDecoration(
                hintText: "Enter email",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Password",
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: ScreenUtil.getInstance().setSp(26)
              )
            ),
            TextField(
              controller: ShareData.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              Text("Confirm Password",
                style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)
                )
              ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter confirm password",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)
                )
              ),
            if (param.isNotEmpty && param.containsKey('type') && param['type'] != 'login')
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(35),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(28)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
