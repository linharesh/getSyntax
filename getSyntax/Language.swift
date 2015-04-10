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
    var statementsArray:[Statement]!
    
    init(name:String, statementArray:[Statement]?){
        self.name = name
        self.statementsArray = statementArray
    }
    
    
    
    
    
    
    /* Returns an instance of the statement that have the same name as the input string. */
    func findStatementByName(name:String)->Statement{
        var returnStatement:Statement?
        
        var k = 0;
        var StatementsArrayLimit = self.statementsArray?.count
        
        for (k=0 ; k < StatementsArrayLimit ; k++){
             var state = self.statementsArray[k]
            
            if (state.name == name) {
                returnStatement = self.statementsArray[k]
            }
        }
        
        return returnStatement!
    }
    
}
