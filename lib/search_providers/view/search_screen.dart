import "package:home_service_app/common/barrels.dart";

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for search history
    final searchHistory = <String>[
      "Flutter",
      "Dart",
      "Mobile Development",
      "Widgets",
      "UI/UX",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search History",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              child: Wrap(
                spacing: 5.0,
                runSpacing: 2.0,
                children: List.generate(
                  searchHistory.length,
                  (index) => Chip(
                    label: Text(
                      searchHistory[index % searchHistory.length],
                      style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
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
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchHistory[index]),
                    onTap: () {
                      // Handle search item tap (e.g., initiate search with selected item)
                      print("Search for: ${searchHistory[index]}");
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
