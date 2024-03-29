//
//  RegistrationView.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viemodel = RegistraationViewModel()
    @Environment(\.dismiss) var dissmis
    var body: some View {
        VStack {
            Spacer()
            
            // logo Image
            Image("IconMessagerNot")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            // text fields
            VStack {
                TextField("Enter your email", text: $viemodel.email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $viemodel.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your email", text: $viemodel.fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            
            
            Button(action: { Task {try await viemodel.createUser()}} ) {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dissmis()
            } label: {
                HStack (spacing: 3) {
                    Text("Already have an account ?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)
        }
        
    }
}

#Preview {
    RegistrationView()
}
