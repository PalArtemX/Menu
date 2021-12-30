//
//  Profile.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import Foundation
import SwiftUI

struct ProfileModel {
    
    // MARK: - User
    var nameUser = ""
    var addressUser = ""
    var emailUser = ""
    var imageUser: Image?
    var renameTextFieldName = ""
    var renameTextFieldAddress = ""
    var passwordCheck = ""
    
    // MARK: - User Firebase
    var email = ""
    var password = ""
    
    // MARK: - Firebase
    var signedIn = false
    
    
}
