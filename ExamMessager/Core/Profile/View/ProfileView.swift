//
//  Profile.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewMpdel = ProfileViewModel()
    let user: User
    var body: some View {
        VStack {
            // header
            VStack {
                PhotosPicker(selection: $viewMpdel.selectItme) {
                    if let profileImage = viewMpdel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: user, size: .max)
                    }
                }
                
            }
            
            Text(user.fullname)
                .font(.title2)
                .fontWeight(.semibold)
        }
        
        // list
        List {
            Section {
                ForEach(SettingsOptionsViewModel.allCases, id: \.self) { option in
                    HStack {
                        Image(systemName: option.imageName)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(option.imageBackgroundColor)
                        Text(option.title)
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


#Preview {
    ProfileView( user: User.MOCK_USER)
}
