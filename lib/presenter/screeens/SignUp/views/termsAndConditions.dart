import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewTermsAndConditions extends StatefulWidget {
  const ViewTermsAndConditions({Key? key}) : super(key: key);

  @override
  State<ViewTermsAndConditions> createState() => _ViewTermsAndConditionsState();
}

bool isLoading = true;
final _key = UniqueKey();
class _ViewTermsAndConditionsState extends State<ViewTermsAndConditions> {
  @override
  Widget build(BuildContext context) {

    double _screenWidth = MediaQuery.of(context).size.width;
    double radius = 24;
    return Dialog(

      elevation: 40,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)
      ),
      child: Builder(
        builder: (context) {
          return Container(
            width: _screenWidth,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Text('Accept the Terms and\nconditions to Sign Up!!!',
                  textAlign: TextAlign.center ,
                  style: TextStyle(color: Colors.blue.shade500,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),

                Expanded(
                  child: Stack(
                      children: <Widget>[
                        WebView(
                          key: _key,
                          initialUrl: 'https://docs.google.com/document/d/15slx7V-5CnpVQSbvsMta-1frTeFkGfN-gimp9-bJAq4/edit',
                          javascriptMode: JavascriptMode.unrestricted,
                          onPageFinished: (finish) {
                            setState(() {
                              isLoading = false;
                            });
                          },
                        ),
                        isLoading ? Center( child: CircularProgressIndicator(),)
                            : Stack(),
                      ]
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: (){

                      Navigator.of(context).pop();
                    },
                      child: Ink(
                       //decoration: BoxDecorationColorGradientButton(context),
                        child: Container(
                          constraints:  BoxConstraints(
                              maxWidth: _screenWidth*.60, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: const Text(
                            'OK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void viewTermsAndConditions(context) => showDialog(
    context: context,
    builder: (context) => Center(child: const CircularProgressIndicator()),
  );
}
