//
//  UserService.swift
//  Fdfada
//
//  Created by Moustafa on 11/1/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation

class UserService
{
    private(set) public var id=""
    private(set) public var avatarcolor=""
    private(set) public var avatarname=""
    private(set) public var email=""
    private(set) public var name=""
    
    
    
    
    func SetUser(id:String,avatarcolor:String,avatarname:String,email:String,name:String){
        self.id=id
        self.avatarcolor=avatarcolor
        self.avatarname=avatarname
        self.email=email
        self.name=name
    }
    
    func SetAvatarName(avatarname:String)
    {
        self.avatarname=avatarname
    }
}
