//
//  User.swift
//  ExamMessager
//
//  Created by Дима Кожемякин on 03.02.2024.
//

import Foundation
struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let  MOCK_USER = User(fullname: "Dima", email: "dima@kojem.ru", profileImageUrl: "IMG_0951")
}
