//
//  Language.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 25/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import Foundation

class Language{
    var name:String!
    var statementsArray:[Statement]?
    
    init(name:String, statementArray:[Statement]?){
        self.name = name
        self.statementsArray = statementArray
    }
}
