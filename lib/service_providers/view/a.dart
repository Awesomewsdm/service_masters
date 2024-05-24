import "package:service_masters/common/barrels.dart";

class MyAnimatedList extends StatefulWidget {
  @override
  _MyAnimatedListState createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  Future<List<MyItem>> _loadItems() async {
    // Replace this with your actual logic to load items from a remote database
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(10, (index) => MyItem("Item $index"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<MyItem>>(
        future: _loadItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            return AnimatedList(
              key: _listKey,
              initialItemCount: snapshot.data!.length,
              itemBuilder: (context, index, animation) {
                return DelayedAnimation(
                  delay: Duration(milliseconds: 100 * index),
                  child: ListTile(
                    title: Text(snapshot.data![index].title),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class MyItem {
  MyItem(this.title);
  final String title;
}

class DelayedAnimation extends StatelessWidget {
  const DelayedAnimation({required this.child, required this.delay});
  final Widget child;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 50 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
