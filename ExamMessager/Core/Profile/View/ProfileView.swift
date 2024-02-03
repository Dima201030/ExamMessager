//
//  Profile.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.systemGray4))
                
                Text("Dima")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            // list
            List {
                Section {
                    ForEach(0 ... 5, id: \.self) { option in
                        HStack {
                            Image(systemName: "bell.circle.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color(.systemPurple))
                            Text("Notifycations")
                                .font(.subheadline)
                        }
                    }
                }
                Section {
                    
                    
                    Button("Log Out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}
