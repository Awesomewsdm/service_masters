// class PersonalDetailsRepository {
//   final PersonalDetailsApiService apiService;

//   PersonalDetailsRepository({required this.apiService});

//   Future<PersonalDetails> getPersonalDetails(String userId) async {
//     // Fetch personal details from the API
//     final response = await apiService.getPersonalDetails(userId);

//     // Convert the response to a PersonalDetails object and return it
//     return PersonalDetails.fromJson(response);
//   }

//   Future<void> updatePersonalDetails(PersonalDetails details) async {
//     // Convert the PersonalDetails object to JSON
//     final json = details.toJson();

//     // Send the JSON to the API
//     await apiService.updatePersonalDetails(json);
//   }
// }
