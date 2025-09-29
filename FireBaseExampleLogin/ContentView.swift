//  Created by Noah Carpenter
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger

import SwiftUI
import FirebaseAuth
import Firebase

// ViewModel to handle sign-in and sign-up logic
class SignInViewmodel: ObservableObject {
    @Published var user: User? // Tracks the currently logged-in user
    @Published var errorMessage: String? // Tracks any authentication errors
    
    // Function to handle user sign-in
    func signIn(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                // If there's an error, update the errorMessage to display it
                self?.errorMessage = error.localizedDescription
                return
            }
            // On successful login, update the user property
            self?.user = result?.user
        }
    }
    
    // Function to handle user sign-up
    func signUp(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                // If there's an error during sign-up, update the errorMessage
                self?.errorMessage = error.localizedDescription
                return
            }
            // On successful sign-up, update the user property
            self?.user = result?.user
        }
    }
}

// The main view for user authentication
struct ContentView: View {
    @State private var email = "" // Stores the user's email input
    @State private var password = "" // Stores the user's password input
    @StateObject private var viewModel = SignInViewmodel() // Initializes the ViewModel
    
    var body: some View {
        VStack {
            // Title for the login screen
            Text("Login with Email")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // TextField for email input
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none) // Prevents automatic capitalization
            
            // SecureField for password input
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none) // Prevents automatic capitalization
            
            // Button to trigger the sign-in process
            Button("Login") {
                viewModel.signIn(email: email, password: password)
                print("Logging in")
            }
            .buttonStyle(.borderedProminent) // Applies a prominent button style
            
            // Displays error message if there's an authentication error
            if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundStyle(Color.red)
            }
            
            // Button to trigger the sign-up process
            Button("Sign Up") {
                viewModel.signUp(email: email, password: password)
            }
            .padding(.top, 10) // Adds some spacing above the sign-up button
        }
        .padding() // Adds padding around the VStack
    }
}

#Preview {
    ContentView()
}
