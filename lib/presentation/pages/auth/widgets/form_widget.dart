
// import 'package:flutter/material.dart';



// class FormWidget extends StatelessWidget {
//    FormWidget({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
   
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           const SizedBox(height: 15.0),
//           Container(
//             margin: const EdgeInsets.only(right: 8.0, left: 8),
//             child: TextFormField(
//                 controller: loginController.usernameController,
//                 // maxLength: 10,
//                 keyboardType: TextInputType.text,
//                 cursorColor: Color(0xff000000),
//                 textCapitalization: TextCapitalization.sentences,
//                 validator: (value) {
//                   if (value?.length == 0) {
//                     return 'Please enter Username';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     prefixIcon: Container(
//                       padding: EdgeInsets.all(16),
//                       margin: const EdgeInsets.only(right: 8.0),
//                       child: Container(
//                         width: 16,
//                         height: 12,
//                         child: Image.asset(
//                           'assets/images/person.png',
//                         ),
//                       ),
//                     ),
//                     isDense: true,
//                     contentPadding: EdgeInsets.fromLTRB(10, 30, 30, 0),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     disabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     counterText: "",
//                     hintText: 'Username',
//                     hintStyle:
//                         TextStyle(color: Color(0xff656565), fontSize: 16),
//                     fillColor: Color(0xffffffff),
//                     filled: true)),
//           ),
//           const SizedBox(height: 15.0),
//           Container(
//             margin: const EdgeInsets.only(right: 8.0, left: 8),
//             child: Obx(() => TextFormField(
//                 obscureText: loginController.isHidden.value,
//                 controller: loginController.passwordController,
//                 keyboardType: TextInputType.text,
//                 cursorColor: Color(0xff000000),
//                 textCapitalization: TextCapitalization.sentences,
//                 validator: (value) {
//                   if (value?.length == 0) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     suffixIcon: InkWell(
//                       onTap: () {
//                        loginController.isHidden.value = !loginController.isHidden.value;
                          
                       
//                       },
//                       child: Obx(() => Icon(
//                           loginController.isHidden.isTrue ? Icons.visibility_off : Icons.visibility,
//                           color: Colors.black87),
//                     ),),
//                     prefixIcon: Container(
//                       padding: EdgeInsets.all(16),
//                       margin: const EdgeInsets.only(right: 8.0),
//                       child: Container(
//                         width: 16,
//                         height: 12,
//                         child: Image.asset(
//                           'assets/images/key.png',
//                         ),
//                       ),
//                     ),
//                     isDense: true,
//                     contentPadding: EdgeInsets.fromLTRB(10, 30, 30, 0),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     disabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10.0),
//                       borderSide: BorderSide(
//                         color: Color(0xffbfbfbf),
//                       ),
//                     ),
//                     hintText: 'Password',
//                     hintStyle:
//                         TextStyle(color: Color(0xff656565), fontSize: 16),
//                     fillColor: Color(0xffffffff),
//                     filled: true)),
//           )
//           ),
//           const SizedBox(height: 50.0),
//           Obx(() => Container(
//             width: MediaQuery.of(context).size.height * 0.80,
//             margin: const EdgeInsets.only(right: 8.0, left: 8),
//             child: ButtonTheme(
//               height: 28.0,
//               child: loginController.isLoading.isFalse ? ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0)),
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 15, horizontal: 80),
//                     backgroundColor: Color(0xffE3562A),
//                     textStyle: TextStyle(color: Colors.white)),
//                 onPressed: () async {
//                   loginController.postLoginCred(loginController.usernameController.text, loginController.passwordController.text);
//                 },
//                 child: Text(
//                   "Log in",
//                   style: TextStyle(fontSize: 16, letterSpacing: 1),
//                 ),
//               ) :CustomFunctions.customLoadingAnimation(),
//             ),
//           ),
//           ),
//           // Container(
//           //   width: MediaQuery.of(context).size.height * 0.80,
//           //   margin: const EdgeInsets.only(right: 8.0, left: 8),
//           //   child: ButtonTheme(
//           //     height: 28.0,
//           //     child: ElevatedButton(
//           //       style: ElevatedButton.styleFrom(
//           //           shape: RoundedRectangleBorder(
//           //               borderRadius: BorderRadius.circular(15.0)),
//           //           padding: const EdgeInsets.symmetric(
//           //               vertical: 15, horizontal: 80),
//           //           backgroundColor: Color(0xffE3562A),
//           //           textStyle: TextStyle(color: Colors.white)),
//           //       onPressed: () async {
//           //         loginController.postLoginCred(loginController.usernameController.text, loginController.passwordController.text);
//           //       },
//           //       child: Text(
//           //         "Log in",
//           //         style: TextStyle(fontSize: 16, letterSpacing: 1),
//           //       ),
//           //     ),
//           //   ),
//           // ),
          
//           const SizedBox(height: 10.0),
//         ],
//       ),
//     );
  

//   }
// }