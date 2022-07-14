//
//  FirebaseAuthManager.swift
//  
//
//  Created by Admin on 7/14/22.
//

import Foundation
import Firebase

public class FirebaseAuthManager {
    
    public init(){
        
    }
    
    public func signIn(with email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            // handle the result
            NetworkManager.welcomeSigninMessage(to: (user?.user.email)!)
        }
    }
    
}
