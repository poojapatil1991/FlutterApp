import 'package:flutter/material.dart';
import 'package:jobzilla_demo/Screens/JobDetails/JobDetailsPage.dart';

import 'JobDetailCard.dart';

class SearchList extends StatefulWidget {
  SearchList({ Key key }) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<SearchList>
{
  Widget appBarTitle = new Text("Search Sample", style: new TextStyle(fontSize : 15,color: Colors.black87),);
  Icon actionIcon = new Icon(Icons.search, color: Colors.black87,);
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    //init();

  }

 /* void init() {
    _list = List();
    _list.add("Google");
    _list.add("IOS");
    _list.add("Andorid");
    _list.add("Dart");
    _list.add("Flutter");
    _list.add("Python");
    _list.add("React");
    _list.add("Xamarin");
    _list.add("Kotlin");
    _list.add("Java");
    _list.add("RxAndroid");
  }*/

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: buildBar(context),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return ListTile(
              title: JobDetails(),
              trailing: getTrailingWidget(),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetailsPage()),
                );
              },
            );
          }
      ),

      /*new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _IsSearching ? _buildSearchList() : _buildList(),
      )List,*/
    );
  }

  List<ChildItem> _buildList() {
    return _list.map((contact) => new ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact))
          .toList();
    }
    else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String  name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => new ChildItem(contact))
          .toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: appBarTitle,
        actions: <Widget>[
        new IconButton(icon: actionIcon, onPressed: () {
      setState(() {
        if (this.actionIcon.icon == Icons.search) {
          this.actionIcon = new Icon(Icons.close, color: Colors.black87,);
          this.appBarTitle = new TextField(
            controller: _searchQuery,
            style: new TextStyle(
              color: Colors.black87,
              fontSize: 15,
            ),
            decoration: new InputDecoration(
                prefixIcon: new Icon(Icons.search, color: Colors.black87),
                hintText: "Search...",
                hintStyle: new TextStyle(color: Colors.black87,fontSize: 15)
            ),
          );
          _handleSearchStart();
        }
        else {
          _handleSearchEnd();
        }
      });
        },),
        ]
    );
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = new Icon(Icons.search, color: Colors.black87);
      this.appBarTitle =
      new Text("Search Sample", style: new TextStyle(color: Colors.black87,fontSize: 15),);
      _IsSearching = false;
      _searchQuery.clear();
    });
  }

  Widget getTrailingWidget(){
    return
        Icon(Icons.arrow_forward_ios);
  }
}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }
}
