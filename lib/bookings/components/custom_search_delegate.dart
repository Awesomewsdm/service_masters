import "package:home_service_app/common/barrels.dart";

class CustomSearchDelegate extends SearchDelegate<String> {
// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    final matchQuery = <String>[];
    for (final fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        final result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    final matchQuery = <String>[];
    for (final fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return SizedBox(
      child: Wrap(
        spacing: 5.0,
        runSpacing: 2.0,
        children: List.generate(
          matchQuery.length,
          (index) => Chip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  CustomIcons.search,
                  size: 15,
                  color: Colors.grey,
                ),
                const Gap(5),
                Text(
                  matchQuery[index % matchQuery.length],
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            side: BorderSide.none,
            padding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
