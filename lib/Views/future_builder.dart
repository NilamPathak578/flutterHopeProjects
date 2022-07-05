import 'package:flutter/material.dart';

Future<String> getValue() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Flutter Hope';
}

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FutureBuilderExampleState();
  }
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  late Future<String> _value;

  @override
  initState() {
    super.initState();
    _value = getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter FutureBuilder Demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: FutureBuilder<String>(
            future: _value,
            initialData: 'Future Builder Demo',
            builder: (
              BuildContext context,
              AsyncSnapshot<String> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    Visibility(
                      visible: snapshot.hasData,
                      child: Text(
                        "${snapshot.data}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    )
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  return Text("${snapshot.data}",
                      style: const TextStyle(color: Colors.cyan, fontSize: 36));
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          ),
        ),
      ),
    );
  }
}




//import 'package:flutter/material.dart';

// class FutureBuilderPage extends StatelessWidget {
//   const FutureBuilderPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Future Builder Example"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (_) => const FutureBuilderExample()));
//             },
//             child: const Text("click me")),
//       ),
//     );
//   }
// }

// class FutureBuilderExample extends StatefulWidget {
//   const FutureBuilderExample({Key? key}) : super(key: key);

//   @override
//   State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
// }

// class _FutureBuilderExampleState extends State<FutureBuilderExample> {
//   Future<String> getdata() {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return "Future Builder Example";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Future Builder Example"),
//         centerTitle: true,
//       ),
//       body: FutureBuilder(
//           future: getdata(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               if (snapshot.hasError) {
//                 return Center(child: Text("${snapshot.error}"));
//               }
//             } else if (snapshot.hasData) {
//               final data = snapshot.data.toString();
//               print(data);
//               return Center(
//                 child: Text(data),
//               );
//             }
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }),
//     );
//   }
// }
