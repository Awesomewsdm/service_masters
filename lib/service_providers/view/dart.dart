import "package:flutter/material.dart";

/// Flutter code sample for [SliverAnimatedList].

class SliverAnimatedListSample extends StatefulWidget {
  const SliverAnimatedListSample({super.key});

  @override
  State<SliverAnimatedListSample> createState() =>
      _SliverAnimatedListSampleState();
}

class _SliverAnimatedListSampleState extends State<SliverAnimatedListSample> {
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  late ListModel<int> _list;
  // int? _selectedItem;
  late int _nextItem;
  @override
  void initState() {
    super.initState();
    _list = ListModel<int>(
      listKey: _listKey,
      initialItems: <int>[0],
    );
    _nextItem = 1;

    for (var i = 0; i < 10; i++) {
      Future.delayed(Duration(milliseconds: 500 * i), () {
        _insert(i);
      });
    }
  }

  void _insert(int? selectedItem) {
    final index =
        selectedItem == null ? _list.length : _list.indexOf(selectedItem);
    _list.insert(index, _nextItem++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _scaffoldMessengerKey,
      home: Scaffold(
        key: _scaffoldKey,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: const Text(
                "SliverAnimatedList",
                style: TextStyle(fontSize: 30),
              ),
              expandedHeight: 60,
              centerTitle: true,
              backgroundColor: Colors.amber[900],
              leading: IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {},
                tooltip: "Insert a new item.",
                iconSize: 32,
              ),
            ),
            SliverAnimatedList(
              key: _listKey,
              initialItemCount: _list.length,
              itemBuilder: (
                BuildContext context,
                int index,
                Animation<double> animation,
              ) {
                return CardItem(
                  animation: animation,
                  item: _list[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListModel<E> {
  ListModel({
    required this.listKey,
    Iterable<E>? initialItems,
  }) : _items = List<E>.from(initialItems ?? <E>[]);

  final GlobalKey<SliverAnimatedListState> listKey;
  final List<E> _items;

  SliverAnimatedListState get _animatedList => listKey.currentState!;

  void insert(int index, E item) {
    _items.insert(index, item);
    _animatedList.insertItem(index);
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}

class CardItem extends StatelessWidget {
  const CardItem({
    required this.animation,
    required this.item,
    super.key,
  });

  final Animation<double> animation;
  final int item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 2.0,
      ),
      child: SizeTransition(
        sizeFactor: animation,
        child: SizedBox(
          height: 80.0,
          child: Card(
            color: Colors.primaries[item % Colors.primaries.length],
            child: Center(
              child: Text(
                "Item $item",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
