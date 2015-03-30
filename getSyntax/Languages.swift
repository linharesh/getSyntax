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
        var stIF = Statement(name: "If", image: "Objective-C-If", description: "if 3 is greater than 4 ; N S Log (3 is greater than 4) ;punctuation semicolon; else ; N S Log (3 is not greater than 4) ;punctuation semicolon; Log ; 3 is not greater than 4")
        
        var stFOR = Statement(name: "For", image: "Objective-C-For", description :"Objective C ;; For ; for ,open parenthesis, int ,i, = 0 ;punctuation semicolon; i is smaller than 3 ;punctuation semicolon; i++ ;close parenthesis; open block ; N S log value of %d bar n , i ;punctiation semicolon; close block ; Logs; value of 0 ; value of 1 ; value of 2")
        
        
        var stWHILE = Statement(name: "While", image: "Objective-C-While", description: "Objective C ;; While ; int; a; = 0 ;punctuation semicolon; while ;open parenthesis; A is smaller than 2 ;close parenthesis; ;open block; N S log value of %d bar n , A ;punctiation semicolon; A++ ;punctuation semicolon;close block; Logs; value of 0 ; value of 1 ;")
        
        
        var stSWITCH = Statement(name:"Switch", image:"Objective-C-Switch", description: "Objective C ;; Switch ; int number ,=, 1 ;punctuation semicolon; switch ;open parenthesis; number ;close parenthesis; open block; case 0;punctuation colon; N S Log Zero ;punctuation semicolon; break ;punctuation semicolon; case 1 ;punctuation colon; N S log one ;punctuation semicolon; break;punctuation semicolon; default ;punctuation colon; N S log Integer ;out; of; range ;punctuation semicolon; break ;punctuation semicolon  ;close block; ; log: one")
        
        
        var stVARIABLE = Statement(name:"Create variable", image:"Objective-C-Create variable" , description: "Objective C ;; create variable ; float Pi = 3.14 ;punctuation semicolon;; N S String asterisk sentence = ;open parenthesis; @Hello ;close parenthesis;punctuation semicolon; ; N S Integer ;age; = 19 ;punctuation semicolon; ;bool getSyntaxRocks ;= YES ;punctuation semicolon;")
        
        
        var stARRAY = Statement(name:"Create a simple array", image:"Objective-C-Create a simple array", description: "Objective C ;; create a simple array ; N S Array , asterisk, Colors = @ ;open brackets; @,blue , @,green, @,red, @,yellow  ;close brackets ; punctuation semicolon;   N S Array , asterisk, Animals = @ ;open brackets; @,cat , @,dog, @,Parrot, @,snake, @,lion  ;close brackets ; punctuation semicolon; ")
        
        var statements:[Statement] = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        var lang:Language = Language(name: "Objective-C", statementArray: statements)
        self.languages.append(lang)
        
        
        //Swift
        stIF = Statement(name: "If", image: "Swift-If", description: "if 3 is greater than 4 ; print (3 is greater than 4) ; else ; print (3 is not greater than 4) ; Log ; 3 is not greater than 4")
        
        stFOR = Statement(name: "For", image: "Swift-For",description: "for number in 1, dot dot dot, 4 ,open block; print l n number ;close block; Log ; 1 2 3 4")
        
        stWHILE = Statement(name: "While", image: "Swift-While",description: "var count = 0 ; while count is smaller than 4 ;open block; print l n count is bar count ; count++ ;close block; Logs: count is 1 ; count is 2 ; count is 3 ;")
        
        
        stSWITCH = Statement(name:"Switch", image:"Swift-Switch", description: "Swift;; Switch ;; let character ,punctuation colon, String equals A ; switch character, open block ; case A ,punctuation colon, ; print l n (the letter A) ; default ,punctuation colon, print l n (not the letter A) ; close block ;;Log : The letter A")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"Swift-Create variable", description:"var age = 22 ; var name = John ; var id ,punctuation colon, Int, = 6021210 ; var n punctuation colon Int punctuation exclamation ; punctuation exclamation means not null")
        
        
        stARRAY = Statement(name:"Create a simple array", image:"Swift-Create a simple array", description: "var cities,punctuation colon, open brackets , String , close brackets, equals , open brackets, Portland, San Fran, Cupertino, Vancouver, close brackets ;; var numbers,punctuation colon, open brackets, Int, close brackets, equals, open bracket, 1, 2, 3, close bracket ;; var animals ,punctuation colon, open brackets, String, close brackets, equals, open brackets, cat, dog, close brackets")
        
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


