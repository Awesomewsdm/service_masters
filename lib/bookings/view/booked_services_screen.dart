import "package:service_masters/bookings/bloc/bookings_bloc.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/common/components/empty_state_with_action_widget.dart";

@RoutePage()
class BookedServicesScreen extends HookWidget {
  const BookedServicesScreen({
    this.bookServiceProvider,
    super.key,
  });
  final BookServiceProvider? bookServiceProvider;

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
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return const SizedBox.shrink();
                },
                empty: () => EmptyStateWithActionWidget(
                  buttonLabel: "Explore Services",
                  title: "You have no bookings yet.",
                  imageString: tNoData,
                  subtitle: "Book a service now to get started.",
                  onPressed: () => context.router.pushAndPopUntil(
                    const HomeRoute(),
                    predicate: (route) => false,
                  ),
                ),
                loaded: (bookings) {
                  return ListView.builder(
                    itemCount: bookings.length,
                    itemBuilder: (context, index) {
                      final bookedService = bookings[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
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
                              Text(
                                "${bookedService.bookingDate.formatLongDate()} - ${bookedService.bookingTime}",
                              ),
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
      ),
    );
  }
}
