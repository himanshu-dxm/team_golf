import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih_team_golf/screens/dashboardHindi/dashboardHindi.dart';

import '../../services/auth.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.grey[850]
            ),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Icon(Icons.account_circle,size: 98,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Himanshu',
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            '9934161540',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            'UID : fkadsbfTjhTlJHAt',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          )
                        ],
                      ),

                      Container(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.edit,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 8,),
                Container(
                  padding: EdgeInsets.all(9),
                  height: 80,
                  // margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text('Select Language',style: TextStyle(
                          fontSize: 20,

                      ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.to(()=>DashboardHindi());
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.grey[800],
                          width: MediaQuery.of(context).size.width/2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Hindi',
                            style: TextStyle(
                              fontSize: 20,
                              ),),
                              Icon(Icons.arrow_drop_down_circle_outlined)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 70,
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                      'Transfer data to other Profile',
                    style: TextStyle(
                      fontSize: 20,
                    )
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                      'Add Family Member',
                      style: TextStyle(
                        fontSize: 20,
                      )
                  ),
                ),
                const SizedBox(height: 8,),
                GestureDetector(
                  onTap: () {
                    print("Logout tapped");
                    AuthenticationRepository.instance.logout();
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    // color: Colors.black87,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 150,),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'v 1.0.0 @Team Golf',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}