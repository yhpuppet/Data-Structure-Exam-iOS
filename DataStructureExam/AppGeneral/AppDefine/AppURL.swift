//
//  AppURL.swift
//  DataStructureExam
//
//  Created by Vincent Yang on 2017/6/1.
//  Copyright © 2017年 Vincent Yang. All rights reserved.
//

import Foundation

let DataStructureExamAppServerURL = "http://localhost:8080"


struct DataStructureExamAppURL {
    // User
    public static let userSignIn = "\(DataStructureExamAppServerURL)/user/signIn"
    public static let userSignUp = "\(DataStructureExamAppServerURL)/user/signUp"
    
}

