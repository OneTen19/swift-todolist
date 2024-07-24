//
//  User.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import Foundation

struct User : Codable {
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
