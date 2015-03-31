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
        stIF = Statement(name: "If", image: "Java-If", description: "if ;open parenthesis; x greater than 20 close parenthesis; open curly bracket; system dot out dot print l n ; open parenthesis; quote; x is greater than 20 quote; close parenthesis; semicolon; close curly brackets; else; open curly brackets; System dot out dot print l n; open brackets; quote; x is not greater than 20; quote; close parenthesis; semicolon; close curly brackets")
        
        stFOR = Statement(name: "For", image: "Java-For", description: "for; open parenthesis; int i equals 1; semicolon; i is smaller than 5; semicolon; i++; close parenthesis; open curly brackets; system dot out dot print l n; open parenthesis; quote; Count is quote; + i; close parenthesis; semicolon; close curly brackets; this code prints Count is 1 Count is 2 Count is 3 Count is 4")
        
        stWHILE = Statement(name: "While", image: "Java-While", description: "int i = 1; semicolon; while; open parenthesis; i less than 4; close parenthesis; open curly brackets; system dot out dot print l n; quote; Count is; quote; + i; close parenthesis; semicolon; i++; semicolon; close curly brackets; this code prints Count is 1 Count is 2 Count is 3")
        
        stSWITCH = Statement(name:"Switch", image:"Java-Switch", description: "switch; open parenthesis; number; close parenthesis; open curly brackets; case 1; colon; System dot out dot print l n; open parenthesis; quote; one; quote; close parenthesis; semicolon; break; semicolon; default; colon; system dot out dot print l n; open parenthesis; quote; not one; quote; close parenthesis; semicolon; break; semicolon; close curly brackets;")
        
        stVARIABLE = Statement(name:"Create variable", image:"Java-Create variable", description: "int age = 20; semicolon; float price = 32.91; semicolon; String S =; open parenthesis; quote; Hello, getSyntax; quote; close parenthesis; semicolon; boolean getSyntaxIsGreat = true;semicolon;")
        
        stARRAY = Statement(name:"Create a simple array", image:"Java-Create a simple array", description: "String; open brackets; close brackets; Animals = new String; open brackets; 3; close brackets; semicolon; Animals; open brackets; 0; close brackets; = ;quote; Cat ;quote; semicolon; Animals; open brackets; 1 ; close brackets = ;quote; Dog; quote; semicolon; Animals; open brackets; 2; close brackets; = ;quote; Elephant; quote; semicolon;")
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Java", statementArray: statements)
        self.languages.append(lang)
        
        
        //Delphi
        stIF = Statement(name: "If", image: "Delphi-If", description: "if; open parenthesis; 3 greater than 4; close parenthesis; then; write l n ;open parenthesis; 3 is greater than 4 ;quote; close parenthesis; semicolon; else; write l n; open parenthesis; 3 is not greater than 4; quote; close parenthesis; semicolon; code writes 3 is not greater than 4 ")
        
        stFOR = Statement(name: "For", image: "Delphi-For", description: "for j; colon; equals;  1; to ;2; do; begin;  write l n; open parenthesis; quote; Hello, getSyntax!; quote; close parenthesis; semicolon; end; semicolon; This code prints: Hello, getSyntax; Hello, getSyntax; ")
        
        stWHILE = Statement(name: "While", image: "Delphi-While", description: "x colon = 0; semicolon;  while x less than 2; do; begin; x ;colon; equals x + 1 ;semicolon; write l n; open parenthesis; x ; close parenthesis; semicolon; end;  this code will write 1; 2" )
        
        stSWITCH = Statement(name:"Switch", image:"Delphi-Switch", description: "case; open parenthesis; number; close parenthesis; of; colon; 1; colon; write l n; open parenthesis; quote; number is 1; quote; close parenthesis; semicolon; 2; colon; write l n; open parenthesis; quote; number is 2; quote; close parenthesis; semicolon; else write l n; open parenthesis; quote; number is unkown; quote; close parenthesis; semicolon; ")
        
        stVARIABLE = Statement(name:"Create variable", image:"Delphi-Create variable", description: "var  age ;colon; integer; semicolon; name;colon; string; semicolon; getSyntaxIsGreat; colon; boolean; semicolon;")
        
        stARRAY = Statement(name:"Create a simple array", image:"Delphi-Create a simple array", description: "type TDays = array; open brackets; 1 dot dot 7; close brackets; of string; semicolon; var Days : TDays = ;open parenthesis; quote; Monday; quote; comma, quote; Tue; quote; comma; quote; Wed; quote; comma; quote; Thu; quote; comma; quote; Fri; quote; comma; quote; Sat; quote; comma; quote; Sun; quote; close parenthesis; semicolon;")
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Delphi", statementArray: statements)
        self.languages.append(lang)
        
        
        //C++
        stIF = Statement(name: "If", image: "C++-If", description: "if (3 > 4) ;open curly brackets; c out ,minor then,minor then, 3 is greater than 4 ;semicolon;close curly brackets; else ;open curly brackets; c out ,minor then,minor then, 3 is not greater than 4 ;semicolon;close curly brackets; Logs ; 3 is not greater than 4")
        
        
        stFOR = Statement(name: "For", image: "C++-For", description: " for ;open parenthesis; int i = 0 ;semicolon; i ;minor then; 3 ;semicolon; i++  ;close parenthesis;open brackets; c out ;minor then;minor then; i ;semicolon; close brackets ; logs 0;1;2")
        
        
        
        stWHILE = Statement(name: "While", image: "C++-While", description: "int ;i = 0;semicolon; while ;open parenthesis; i minor then 2 ;close parenthesis; open curly brackets ; c out ; minor then ; minor then ; i ; semicolon; i++ ;semicolon ; close curly brackets ; logs; 0 ; 1  ")
        
        
        stSWITCH = Statement(name:"Switch", image:"C++-Switch", description : "switch ;open parenthesis; number ;close parenthesis; open curly brackets ; case 1; colon; c out; minor then; minor then; one ; semicolon ; break ; semicolon ; default ; colon ; c out; minor then ; minor then ; not one ; semicolon ; break ;semicolon; close curly brackets ;")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"C++-Create variable", description: " int d ;=; 3 ; f ;=; 5;semicolon; float z ;=; 22.1 ;semicolon;  char x ;=; x ; semicolon")
        
        stARRAY = Statement(name:"Create a simple array", image:"C++-Create a simple array", description: "int foo ;open brackets;close brackets ; = ; open curly brackets ; 16 , 2 , 77 , 40 , 12017 ;close curly brackets; semicolon ; string animals ;open brackets ; close brackets ; = ; open curly brackets ; cat, dog, ant, lizard; close curly brackets; semicolon;")
        
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


