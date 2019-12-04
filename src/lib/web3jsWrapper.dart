
import 'dart:js';

// @JS('Abc')
// class Abc{
//   // Abc.fakeConstructor$();
//   // external factory Abc();
//   external  test();
// }
class Web3jsWrapper{
  // @JS('TruffleContract') // annotates `log` function to call `console.log`
  // external JsObject contract(dynamic str);
  // @JS('TruffleContract')
  // external JsObject contract(dynamic str);
//rootBundle.loadString('assets/json/StandardToken.json')

  Future<int> getCount()async {
    // var abi = await rootBundle.loadString('assets/voteApp.json');
    // // var con = contract(abi.toString());
    // // var count = con.callMethod('getCount');
    // var con = contract(abi);
    // print(con);
    // // var count = await con.callMethod('getCount');
    // // print(count);

    var abc= new JsObject(context['point']);
    abc.callMethod('test');
    return 1;
  }
}

