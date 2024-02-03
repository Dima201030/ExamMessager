//
//  RegistraationViewModel.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 04.02.2024.
//

import Foundation

class RegistraationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthSevice().creatUser(withEmail: email, password: password, fullname: fullname)
    }
}
