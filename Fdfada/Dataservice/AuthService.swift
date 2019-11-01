//
//  AuthService.swift
//  Fdfada
//
//  Created by Moustafa on 10/31/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class AuthService
{
    static let instance = AuthService()
    let defults=UserDefaults.standard
    
    
    var islooged:Bool{
        get{
            return defults.bool(forKey: LOGGED_KEY)
        }
        set{
            defults.set(newValue, forKey: LOGGED_KEY)
        }
    }
    
    var auttoken:String{
        
        get{
            return defults.value(forKey: TOKEN_KEY) as! String
        }
        set{
            
            defults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
    
    var useremail:String{
        get{
            return defults.value(forKey: USER_EMAIL) as! String
        }
        
        set{
            defults.set(newValue, forKey: USER_EMAIL)
        }
        
    }
    
    // func handel with register
    
    func register (email:String,password:String,compltion:@escaping completationhandeler)
    {
        let lowercaseemail=email.lowercased()
       
        let body:[String:Any]=[
            "email":lowercaseemail,
            "password":password
        ]
        
        
        Alamofire.request(REGISTER_URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (response) in
            if response.result.error==nil
            {
                compltion(true)
            }
            else
            {
                compltion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    
    
    func login(email:String,password:String,compltion:@escaping completationhandeler){
        
        let lowercaseemail=email.lowercased()
        let body=[
                        
            "email":lowercaseemail,
            "password":password
        ]
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (response) in
            if response.result.error == nil
            {
                guard let data=response.data else{return}
                let json=try! JSON(data: data)
                self.useremail=json["user"].stringValue
                self.auttoken=json["token"].stringValue
                self.islooged=true
                
                compltion(true)
            }
            else
            {
                compltion(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    func createuser(name:String,email:String,avatarcolor:String,avatarname:String,compltion:@escaping completationhandeler)
    {
        let lowercaseemail=email.lowercased()
        let body:[String:Any]=[
            "name":name,
            "email":email,
            "avatarname":avatarname,
            "avatarcolor":avatarcolor
        ]
        
        let header=[
            "Authorization":"Bearer \(AuthService.instance.auttoken)",
            "content-type":"application/json; charset=utf-8"
        ]
        
        Alamofire.request(URL_USER_ADD, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON { (response) in
            if response.result.error==nil
            {
                
                compltion(true)
            }
            else
            {
                compltion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
}
