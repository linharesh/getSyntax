//
//  Statement.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 25/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import Foundation

class Statement{
    var name:String!
    var image:String?
    var description:String?
    
    //Construtor sem o campo Description
    init(name:String, image:String){
        self.name = name
        self.image = image
    }
    
    //Construtor com o campo Description
    init(name:String, image:String, description:String){
        self.name = name
        self.image = image
        self.description = description
    }
    
    
}