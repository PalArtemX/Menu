//
//  ErrorSignUp.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import Foundation


enum ErrorSignUp: Error {
    case invalidEmail
    case passwordIsLessThan6Characters
    case passwordsDoNotMatch
}
