//
//  ExtractInteractor.swift
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

protocol ExtractBusinessLogic
{
  func doSomething(request: Extract.Something.Request)
}

protocol ExtractDataStore
{
  //var name: String { get set }
}

class ExtractInteractor: ExtractBusinessLogic, ExtractDataStore
{
  var presenter: ExtractPresentationLogic?
  var worker: ExtractWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Extract.Something.Request)
  {
    worker = ExtractWorker()
    worker?.doSomeWork()
    
    let response = Extract.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
