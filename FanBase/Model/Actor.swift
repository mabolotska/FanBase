//
//  Actor.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import Foundation

struct Actor {
  
    
    
    private(set) public var name: String
    private(set) public var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
