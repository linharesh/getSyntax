//
//  Languages.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 16/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import Foundation

class Languages {
    
    
    var languages:[Language]! = []
    
    //Construtor
    init(){
        
        
        //Objective-C
        var stIF = Statement(name: "If", image: "Objective-C-If")
        var stFOR = Statement(name: "For", image: "Objective-C-For")
        var stWHILE = Statement(name: "While", image: "Objective-C-While")
        var stSWITCH = Statement(name:"Switch", image:"Objective-C-Switch")
        var stVARIABLE = Statement(name:"Create variable", image:"Objective-C-Create variable")
        var stARRAY = Statement(name:"Create a simple array", image:"Objective-C-Create a simple array")
        var statements:[Statement] = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        var lang:Language = Language(name: "Objective-C", statementArray: statements)
        self.languages.append(lang)
        
        
        //Swift
        stIF = Statement(name: "If", image: "Swift-If")
        stFOR = Statement(name: "For", image: "Swift-For")
        stWHILE = Statement(name: "While", image: "Swift-While")
        stSWITCH = Statement(name:"Switch", image:"Swift-Switch")
        stVARIABLE = Statement(name:"Create variable", image:"Swift-Create variable")
        stARRAY = Statement(name:"Create a simple array", image:"Swift-Create a simple array")
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Swift", statementArray: statements)
        self.languages.append(lang)
        
        
        //Java
        stIF = Statement(name: "If", image: "Java-If")
        stFOR = Statement(name: "For", image: "Java-For")
        stWHILE = Statement(name: "While", image: "Java-While")
        stSWITCH = Statement(name:"Switch", image:"Java-Switch")
        stVARIABLE = Statement(name:"Create variable", image:"Java-Create variable")
        stARRAY = Statement(name:"Create a simple array", image:"Java-Create a simple array")
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Java", statementArray: statements)
        self.languages.append(lang)
        
        
        //Delphi
        stIF = Statement(name: "If", image: "Delphi-If")
        stFOR = Statement(name: "For", image: "Delphi-For")
        stWHILE = Statement(name: "While", image: "Delphi-While")
        stSWITCH = Statement(name:"Switch", image:"Delphi-Switch")
        stVARIABLE = Statement(name:"Create variable", image:"Delphi-Create variable")
        stARRAY = Statement(name:"Create a simple array", image:"Delphi-Create a simple array")
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Delphi", statementArray: statements)
        self.languages.append(lang)
        
        
        //C++
        stIF = Statement(name: "If", image: "C++-If")
        stFOR = Statement(name: "For", image: "C++-For")
        stWHILE = Statement(name: "While", image: "C++-While")
        stSWITCH = Statement(name:"Switch", image:"C++-Switch")
        stVARIABLE = Statement(name:"Create variable", image:"C++-Create variable")
        stARRAY = Statement(name:"Create a simple array", image:"C++-Create a simple array")
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "C++", statementArray: statements)
        self.languages.append(lang)
        
        
        
        
    }
    
    /* Returns an instance of the language that have the same name as the input string. */
    func findLanguageByName(name:String)->Language?{
        for (var count=0 ; count < self.languages.count ; count++){
            if (name == self.languages[count].name) {
                return self.languages[count]
            }
        }
        return nil
    }
    
    
    /*Returns an array of Strings with all names of the registred Languages*/
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


