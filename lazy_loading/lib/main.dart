import 'package:flutter/material.dart';
import 'package:lazy_loading/imageItem.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lazy Loading In Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  int currentLength = 0;

  final int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    loadMore();
    super.initState();
    //data = List.generate(100, (index) => ImageItem(url: "",content: "item $index"));
  }

  Future loadMore() async{
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));
    for(var i = currentLength;i <= currentLength+increment;i++){
      data.add(i);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LazyLoadScrollView(
        scrollOffset: 100,
        isLoading: isLoading,
        onEndOfPage: () => loadMore(),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                  title: Text('item number $position'),
                  subtitle: Text('this is the item number $position create by list generator')
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
