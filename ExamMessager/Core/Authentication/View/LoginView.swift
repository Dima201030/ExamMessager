//
//  LoginVIew.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 02.02.2024.
//

import SwiftUI

struct LoginVIew: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                // logo Image
                Image("IconMessagerNot")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                    
                    SecureField("Enter your password", text: $password)
                }
                
                // forgot password
                
                Button(action: { print("Forgot your password ")} ) {
                    Text("Forgot your password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 20)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // login button
                Button(action: { print("Handle login ")} ) {
                    Text("Login")
                        
                }
                
                // apple login
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                HStack {
                    Image("AppleLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Countinue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                Spacer()
                // sign up link
                
                Divider()
                NavigationLink {
                    Text("Sign up View")
                } label: {
                    HStack (spacing: 3) {
                        Text("Don't have an account ?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    LoginVIew()
}
