void main() {
  // Nullable map (can be null)
  Map<String, dynamic>? user = {
    "name": "Deon",
    "phone": "9876543210"
  };

  // Function call
  print(getPhoneNumber(user));

  // Test with null map
  Map<String, dynamic>? nullUser;
  print(getPhoneNumber(nullUser));
}

// Function to safely get phone number
String getPhoneNumber(Map<String, dynamic>? user) {
  return user?["phone"] ?? "No Number Provided";
}