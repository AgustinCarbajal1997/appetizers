//
//  User.swift
//  appetizers
//
//  Created by Agustin Carbajal on 18/11/2023.
//

import Foundation

struct User: Codable {
    var firstName: String       = ""
    var lastName:String         = ""
    var email: String           = ""
    var birthDate: Date         = Date()
    var extraNapkins: Bool      = false
    var frequentRefills: Bool   = false
}
