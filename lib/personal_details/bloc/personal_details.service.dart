// class PersonalDetailsService {
//   PersonalDetailsService({required this.repository});
//   final PersonalDetailsRepository repository;

//   Future<PersonalDetails> getPersonalDetails(String userId) {
//     return repository.getPersonalDetails(userId);
//   }

//   Future<void> updatePersonalDetails(PersonalDetails details) {
//     return repository.updatePersonalDetails(details);
//   }

//   bool validateLastName(String lastName) {
//     // Add your validation logic here
//     return lastName.isNotEmpty;
//   }

//   bool validateFirstName(String firstName) {
//     // Add your validation logic here
//     return firstName.isNotEmpty;
//   }

//   bool validatePhoneNumber(String phoneNumber) {
//     // Add your validation logic here
//     return phoneNumber.isNotEmpty && phoneNumber.length == 10;
//   }
// }
