import "package:service_masters/bookings/bloc/bookings_bloc.dart";
import "package:service_masters/bookings/repository/bookings_repository.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookingsScreen extends HookWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customer = context.select((AppBloc bloc) => bloc.state.customer);

    useEffect(
      () {
        context.read<BookingsBloc>().add(
              BookingsEvent.getBookings(customerId: customer.id),
            );
        return null;
      },
      const [],
    );
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showSearch<String>(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(CustomIcons.search),
            ),
          ],
          automaticallyImplyLeading: false,
          title: "My Bookings".bold,
          bottom: TabBar(
            indicatorColor: tWhiteColor,
            isScrollable: true,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            tabs: [
              Tab(
                child: Text(
                  "All",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: tWhiteColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Upcoming",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: tWhiteColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Completed",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: tWhiteColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Cancelled",
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: tWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<BookingsBloc, BookingsState>(
          builder: (context, state) => TabBarView(
            children: [
              state.maybeWhen(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                orElse: () => StreamBuilder(
                  stream: BookingsRepository().getBookings(customer.id),
                  builder: (context, snapshot) {
                    final bookings = snapshot.data;

                    return ListView.builder(
                      itemCount: bookings!.length,
                      itemBuilder: (context, index) {
                        final bookedService = bookings[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: () =>
                                context.router.push(const BookedServiceRoute()),
                            leading: const IconWithRoundBg(
                              icon: CustomIcons.work,
                              iconSize: 24,
                              iconColor: Colors.grey,
                            ),
                            title: Text(
                              "Electrical Repairs Services",
                              style: context.textTheme.titleSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const ProfileImageWidget(
                                      imageString: tPic,
                                      height: 30,
                                      width: 30,
                                    ),
                                    const Gap(5),
                                    Flexible(
                                      child: Text(
                                        bookedService.id,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                // const Text(bookedService.bookingDate),
                              ],
                            ),
                            trailing: Column(
                              children: [
                                Text(
                                  "GHC100.00",
                                  style: context.textTheme.titleSmall,
                                ),
                                const TextWithBg(
                                  bgColor: tPrimaryColor,
                                  label: "Done",
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                loaded: (bookings) => ListView.builder(
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final bookedService = bookings[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () =>
                            context.router.push(const BookedServiceRoute()),
                        leading: const IconWithRoundBg(
                          icon: CustomIcons.work,
                          iconSize: 24,
                          iconColor: Colors.grey,
                        ),
                        title: Text(
                          "Electrical Repairs Services",
                          style: context.textTheme.titleSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const ProfileImageWidget(
                                  imageString: tPic,
                                  height: 30,
                                  width: 30,
                                ),
                                const Gap(5),
                                Flexible(
                                  child: Text(
                                    bookedService.id,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const Text("Monday, 15th January - 15:00pm"),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "GHC100.00",
                              style: context.textTheme.titleSmall,
                            ),
                            const TextWithBg(
                              bgColor: tPrimaryColor,
                              label: "Done",
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                failure: (errorMessage) {
                  return Center(
                    child: Text(errorMessage),
                  );
                },
              ),
              ListView.builder(
                itemCount: mockUsers.length,
                itemBuilder: (context, index) {
                  final user = mockUsers[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () =>
                          context.router.push(const BookedServiceRoute()),
                      leading: const IconWithRoundBg(
                        icon: CustomIcons.work,
                        iconSize: 24,
                        iconColor: Colors.grey,
                      ),
                      title: Text(
                        "Electrical Repairs Services",
                        style: context.textTheme.titleSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ProfileImageWidget(
                                imageString: tPic,
                                height: 30,
                                width: 30,
                              ),
                              const Gap(5),
                              Flexible(
                                child: Text(
                                  user.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const Text("Monday, 15th January - 15:00pm"),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "GHC100.00",
                            style: context.textTheme.titleSmall,
                          ),
                          const TextWithBg(
                            bgColor: tPrimaryColor,
                            label: "Done",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: mockUsers.length,
                itemBuilder: (context, index) {
                  final user = mockUsers[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () =>
                          context.router.push(const BookedServiceRoute()),
                      leading: const IconWithRoundBg(
                        icon: CustomIcons.work,
                        iconSize: 24,
                        iconColor: Colors.grey,
                      ),
                      title: Text(
                        "Electrical Repairs Services",
                        style: context.textTheme.titleSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ProfileImageWidget(
                                imageString: tPic,
                                height: 30,
                                width: 30,
                              ),
                              const Gap(5),
                              Flexible(
                                child: Text(
                                  user.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const Text("Monday, 15th January - 15:00pm"),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "GHC100.00",
                            style: context.textTheme.titleSmall,
                          ),
                          const TextWithBg(
                            bgColor: tPrimaryColor,
                            label: "Done",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: mockUsers.length,
                itemBuilder: (context, index) {
                  final user = mockUsers[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () =>
                          context.router.push(const BookedServiceRoute()),
                      leading: const IconWithRoundBg(
                        icon: CustomIcons.work,
                        iconSize: 24,
                        iconColor: Colors.grey,
                      ),
                      title: Text(
                        "Electrical Repairs Services",
                        style: context.textTheme.titleSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ProfileImageWidget(
                                imageString: tPic,
                                height: 30,
                                width: 30,
                              ),
                              const Gap(5),
                              Flexible(
                                child: Text(
                                  user.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const Text("Monday, 15th January - 15:00pm"),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            "GHC100.00",
                            style: context.textTheme.titleSmall,
                          ),
                          const TextWithBg(
                            bgColor: tWarningColor,
                            label: "Done",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<BookingsBloc>().add(
                  BookingsEvent.getBookings(customerId: customer.id),
                );
            logger.d(customer.id);
          },
        ),
      ),
    );
  }
}
