//
//  AuthSevice.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 04.02.2024.
//

import Foundation
import Firebase

class AuthSevice {
    func login(withEmail email: String, password: String) async throws {
        
    }
    func creatUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
            InboxView()
        } catch {
            print("DEBUG: error: \(error.localizedDescription)")
        }
    }
}
