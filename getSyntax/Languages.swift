//
//  Languages.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 16/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import Foundation

class Languages {
    
//    var languages:[String] = ["Objective-C","Swift","Java","Delphi","C++","JavaScript", "Scala","Python"]
    
    
    var languages:[Language]!

    //Construtor
    init(){
        
        var stIF = Statement(name: "If", image: "Objective-C-If")
        var stFOR = Statement(name: "For", image: "Objective-C-For")
        
        var statements:[Statement] = [stIF, stFOR]
        
        
        var lang:Language = Language(name: "Objective-C", statementArray: statements)
        
        self.languages?.append(lang)
        
        
        
        stIF = Statement(name: "If", image: "Swift-If")
        stFOR = Statement(name: "For", image: "Swift-For")
        
        statements = [stIF, stFOR]
        
        
        lang = Language(name: "Swift", statementArray: statements)
        
        self.languages?.append(lang)
        
    }
    
    
    func findLanguageByName(name:String)->Language?{
        for (var count=0 ; count < self.languages.count ; count++){
            if (name == self.languages[count].name) {
                return self.languages[count]
            }
        }
        return nil
    }
    
    
}


