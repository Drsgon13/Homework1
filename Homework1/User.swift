//
//  User.swift
//  Lesson1
//
//  Created by Илья Проскурнев on 11.08.2021.
//

import SwiftUI

public struct User: Codable {

    public var _id: Int64?
    public var username: String?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var password: String?
    public var phone: String?
    /** User Status */
    public var userStatus: Int?

    public init(_id: Int64? = nil, username: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, password: String? = nil, phone: String? = nil, userStatus: Int? = nil) {
        self._id = _id
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.phone = phone
        self.userStatus = userStatus
    }

    public enum CodingKeys: String, CodingKey {
        case _id = "id"
        case username
        case firstName
        case lastName
        case email
        case password
        case phone
        case userStatus
    }

}
