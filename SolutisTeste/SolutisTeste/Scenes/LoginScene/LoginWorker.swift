//
//  LoginWorker.swift
//  SolutisTeste
//
//  Created by Virtual Machine on 26/11/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class LoginWorker {
    
    var request = ServiceRequest()
    
    
  func doSomeWork()
  {
  }
    
    func loginAPIRequest() {
        request.performLoginRequest(urlString: <#T##String#>, userLogin: <#T##String#>, userPassword: <#T##String#>, completion: <#T##(Result<User, Error>) -> Void#>)
    }
    
    func extractAPIRequest() {
        request.performStatementRequest(urlString: <#T##String#>, userToken: <#T##String#>, completion: <#T##(Result<[Statement], Error>) -> Void#>)
    }
    
    
}