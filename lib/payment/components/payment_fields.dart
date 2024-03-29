import "package:service_masters/common/barrels.dart";

List<Widget> buildPaymentFields(
  String selectedPaymentMethod,
  BuildContext context,
  String selectedNetwork,
  void Function(String?) onchanged,
) {
  if (selectedPaymentMethod == "Credit Card") {
    return [
      Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
        ),
        child: CustomTextFormField(
          autofillHints: const [AutofillHints.name],

          validator: (value) {
            if (value!.isEmpty) {
              return "Enter a valid name";
            } else {
              return "null";
            }
          },
          // controller: signUpController.fullName,
          keyboardType: TextInputType.name,
          hintText: "Card Number",
          labelText: "Card Number",
          prefixIcon: const Icon(CustomIcons.hastag, color: tPrimaryColor),
        ),
      ),
      CustomTextFormField(
        autofillHints: const [AutofillHints.name],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a valid name";
          } else {
            return "null";
          }
        },
        // controller: signUpController.fullName,
        keyboardType: TextInputType.name,
        hintText: "Cardholder Name",
        labelText: "Cardholder Name",
        prefixIcon: const Icon(
          CustomIcons.user,
          color: tPrimaryColor,
        ),
      ),
      Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter a valid name";
                } else {
                  return "null";
                }
              },
              // controller: signUpController.fullName,
              keyboardType: TextInputType.datetime,
              hintText: "Expiry Date",
              labelText: "Expiry Date",
              prefixIcon: const Icon(
                CustomIcons.calendar2,
                color: tPrimaryColor,
              ),
            ),
          ),
          const Gap(10),
          Expanded(
            child: CustomTextFormField(
              autofillHints: const [AutofillHints.creditCardSecurityCode],
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter a valid name";
                } else {
                  return "null";
                }
              },
              // controller: signUpController.fullName,
              keyboardType: TextInputType.name,
              hintText: "CCV",
              labelText: "CCV",
              prefixIcon: const Icon(
                CustomIcons.subtitles,
                color: tPrimaryColor,
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Text("Remember this account", style: context.textTheme.bodyLarge),
          const Spacer(),
          Switch(
            value: true,
            onChanged: (value) {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    ];
  } else if (selectedPaymentMethod == "Mobile Money") {
    return [
      DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: const Icon(
            CustomIcons.hastag,
            color: tPrimaryColor,
          ),
        ),
        value: selectedNetwork,
        onChanged: onchanged,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Select a network";
          }
          return null;
        },
        items: [
          DropdownMenuItem<String>(
            value: "MTN",
            child: Text(
              "MTN",
              style: context.textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "Vodafone",
            child: Text(
              "Vodafone",
              style: context.textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
          ),
          // Add more network options as needed
        ],
      ),
      const Gap(10),
      CustomTextFormField(
        autofillHints: const [AutofillHints.name],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a valid name";
          } else {
            return "null";
          }
        },
        // controller: signUpController.fullName,
        keyboardType: TextInputType.name,
        hintText: "Phone Number",
        labelText: "Phone Number",
        prefixIcon: const Icon(CustomIcons.hastag, color: tPrimaryColor),
      ),
    ];
  } else if (selectedPaymentMethod == "Bank Transfer") {
    return [
      CustomTextFormField(
        autofillHints: const [AutofillHints.name],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a valid name";
          } else {
            return "null";
          }
        },
        // controller: signUpController.fullName,
        keyboardType: TextInputType.name,
        hintText: "Account Number",
        labelText: "Account Number",
        prefixIcon: const Icon(CustomIcons.hastag, color: tPrimaryColor),
      ),
      CustomTextFormField(
        autofillHints: const [AutofillHints.name],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a valid name";
          } else {
            return "null";
          }
        },
        // controller: signUpController.fullName,
        keyboardType: TextInputType.name,
        hintText: "Bank Name",
        labelText: "Bank Name",
        prefixIcon: const Icon(CustomIcons.subtitles, color: tPrimaryColor),
      ),
      CustomTextFormField(
        autofillHints: const [AutofillHints.name],
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter a valid name";
          } else {
            return "null";
          }
        },
        // controller: signUpController.fullName,
        keyboardType: TextInputType.name,
        hintText: "Account Holder Name",
        labelText: "Account Holder Name",
        prefixIcon: const Icon(CustomIcons.user, color: tPrimaryColor),
      ),
      Row(
        children: [
          Text("Remember this account", style: context.textTheme.bodyLarge),
          const Spacer(),
          Switch(
            value: true,
            onChanged: (value) {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    ];
  } else {
    return [];
  }
}
