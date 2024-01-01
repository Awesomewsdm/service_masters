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
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: SearchBar(
          onTap: () {},
          elevation: const MaterialStatePropertyAll(0),
          hintText: "Search services, artisans, etc",
          hintStyle: MaterialStatePropertyAll(
            context.textTheme.bodyLarge!.copyWith(
              color: Colors.grey[700],
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          trailing: const [
            Icon(Icons.search),
          ],
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search History",
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            SizedBox(
              child: Wrap(
                spacing: 5.0,
                runSpacing: 2.0,
                children: List.generate(
                  searchHistory.length,
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
                          searchHistory[index % searchHistory.length],
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
            ),
            Text(
              "Popular Searches",
              style: context.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
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
