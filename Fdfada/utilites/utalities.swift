//
//  utalities.swift
//  Fdfada
//
//  Created by Moustafa on 10/31/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation
//for regestarithion (user defults)

let TOKEN_KEY="TOKEN_KEY"
let LOGGED_KEY="LOGGED_KEY"
let USER_EMAIL="USER_EMAIL"


// web request regeister
typealias completationhandeler = (_ sucess:Bool)->()
let Base_url="https://chatchat010030.herokuapp.com/v1/"
let REGISTER_URL="\(Base_url)account/regiter"

//login
let URL_LOGIN="\(Base_url)account/login"

//create account

let URL_USER_ADD="\(Base_url)user/add"

//headers
let HEADER=[
           "content-type":"application/json; charset=utf-8"
       ]


