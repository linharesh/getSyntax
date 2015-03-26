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
    
    
    var languages:[Language]! = []
    
    //Construtor
    init(){
        
        
        //Objective-C
        var stIF = Statement(name: "If", image: "Objective-C-If")
        var stFOR = Statement(name: "For", image: "Objective-C-For")
        var statements:[Statement] = [stIF, stFOR]
        var lang:Language = Language(name: "Objective-C", statementArray: statements)
        self.languages.append(lang)
        
        
        //Swift
        stIF = Statement(name: "If", image: "Swift-If")
        stFOR = Statement(name: "For", image: "Swift-For")
        statements = [stIF, stFOR]
        lang = Language(name: "Swift", statementArray: statements)
        self.languages.append(lang)
        
        
        //Java
        stIF = Statement(name: "If", image: "Java-If")
        stFOR = Statement(name: "For", image: "Java-For")
        statements = [stIF, stFOR]
        lang = Language(name: "Java", statementArray: statements)
        self.languages.append(lang)
        
        
        
        
        
        
    }
    
    
    func findLanguageByName(name:String)->Language?{
        for (var count=0 ; count < self.languages.count ; count++){
            if (name == self.languages[count].name) {
                return self.languages[count]
            }
        }
        return nil
    }
    
    
    
    func getLanguagesNames() -> [String]?{
    
        var languagesNames:[String] = []
        var i = 0
        var limit = self.languages.count - 1
        
        for i in 0...limit{
        languagesNames += [self.languages[i].name]
        }
        
    
    return languagesNames
    }
    
}


