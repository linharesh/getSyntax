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
        var stIF = Statement(name: "If", image: "Objective-C-If", description: "if, open parenthesis, 3 is greater than 4, close parenthesis; open curly brackets, N S Log, open parenthesis, @, quote, 3 is greater than 4, quote, close parenthesis ; semicolon; close curly brackets, else ; open curly brackets, N S Log, open parenthesis, @, quote, 3 is not greater than 4, quote, close parenthesis;  semicolon; close curly brackets. This code logs, 3 is not greater than 4.")
        
        var stFOR = Statement(name: "For", image: "Objective-C-For", description :"for ,open parenthesis, int ,i, equals, 0, semicolon; i is less than 3 ; semicolon; i++ ;close parenthesis; open curly brackets; N S log, open parenthesis, @, quote, value of % d backslash, n, comma, i, close parenthesis, semicolon; close curly brackets; This code logs; value of 0 ; value of 1 ; value of 2.")
        
        
        var stWHILE = Statement(name: "While", image: "Objective-C-While", description: "int; a; equals, 0; semicolon; while ;open parenthesis; A is less than 2 ;close parenthesis; ;open brackets; N S log, open parenthesis, @, quote, value of % d backslash n, comma, A ; semicolon; A++ ; semicolon; close curly brackets; This code logs; value of 0 ; value of 1 ;")
        
        
        var stSWITCH = Statement(name:"Switch", image:"Objective-C-Switch", description: "int number, equals, 1; semicolon; switch ;open parenthesis; number ;close parenthesis; open curly brackets; case 1; colon; N S Log, open parenthesis, @, quote, one, quote, close parenthesis, semicolon; break; semicolon; default; colon; N S log, open parenthesis, @, quote, Integer; out; of; range; quote, close parenthesis, semicolon; break; semicolon ; close curly brackets; This code logs, one")
        
        
        var stVARIABLE = Statement(name:"Create variable", image:"Objective-C-Create variable" , description: "float Pi, equals, 3.14; semicolon; N S String asterisk sentence, equals; open parenthesis; @, quote, Hello, quote; close parenthesis;  semicolon; ; N S Integer; age; equals, 19; semicolon; ;bool getSyntaxRocks; equals, YES; semicolon")
        
        
        var stARRAY = Statement(name:"Create a simple array", image:"Objective-C-Create a simple array", description: "N S Array , asterisk, Colors, equals @; open brackets; @, quote, blue, quote, comma, @, quote, green, quote, comma, @, quote,red, quote, comma, @, quote, yellow, quote; close brackets; semicolon; N S Array, asterisk, Animals, equals, @ ;open brackets; @, quote, cat , quote, comma, @, quote, dog, quote, comma, @, quote, Parrot, quote, comma, @, quote, snake, quote, comma, @, quote, lion, quote; close brackets ; semicolon; ")
        
        var statements:[Statement] = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        var lang:Language = Language(name: "Objective-C", statementArray: statements)
        self.languages.append(lang)
        
        
        //Swift
        stIF = Statement(name: "If", image: "Swift-If", description: "if, open parenthesis,  3 is greater than 4; close parenthesis, open curly brackets, print, open parenthesis, quote, 3 is greater than 4, quote, close parenthesis; close curly brackets, else; open curly brackets, print, open parenthesis, quote, 3 is not greater than 4, quote, close parenthesis, close curly brackets;; This code logs; 3 is not greater than 4.")
        
        stFOR = Statement(name: "For", image: "Swift-For",description: "for number in 1, dot dot dot, 4 ,open curly brackets; print l n, open parenthesis, number ;close parenthesis; close curly brackets;; This code Logs ; 1 2 3 4.")
        
        stWHILE = Statement(name: "While", image: "Swift-While",description: "var count = 1 ; whil, open parenthesis, count is less than 4 ; close parenthesis, open curly brackets; print l n, open parenthesis, quote, count is; backslash; open parenthesis; count; close parenthesis; quote; close parenthesis;; count++ ;close curly brackets; This code Log; count is 1 ; count is 2 ; count is 3.")
        
        
        stSWITCH = Statement(name:"Switch", image:"Swift-Switch", description: "let character, colon, String equals, quote, A, quote; switch, open parenthesis, character, close parenthesis ; open curly brackets, case, quote, A, quote, colon; print l n, open parenthesis, quote, the letter A, quote, close parenthesis; default, colon, print l n, open parenthesis, quote, not the letter A, quote, close parenttesis; close curly brackets;; This code Logs;  The letter A")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"Swift-Create variable", description:"var age = 22;; var name = quote, John, quote ;; var id, colon, Int, = 6021210 ; var n, colon, Int, exclamation;; This code logs, exclamation means not null")
        
        
        stARRAY = Statement(name:"Create a simple array", image:"Swift-Create a simple array", description: "var cities, colon, open brackets , String , close brackets, equals , open brackets, quote, Portland, quote, comma, quote,San Fran, quote, comma, quote, Cupertino, quote, comma, quote, Vancouver, quote close brackets ;; var numbers, colon, open brackets, Int, close brackets, equals, open bracket, 1, comma, 2, comma, 3, close bracket ;; var animals , colon, open brackets, String, close brackets, equals, open brackets, quote, cat, quote, comma, quote, dog, quote, close brackets")
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Swift", statementArray: statements)
        self.languages.append(lang)
        
        
        //Java
        stIF = Statement(name: "If", image: "Java-If", description: "if ;open parenthesis; x greater than 20, close parenthesis; open curly bracket; system dot out dot print l n ; open parenthesis; quote; x is greater than 20 quote; close parenthesis; semicolon; close curly brackets; else; open curly brackets; System dot out dot print l n; open brackets; quote; x is not greater than 20; quote; close parenthesis; semicolon; close curly brackets")
        
        stFOR = Statement(name: "For", image: "Java-For", description: "for; open parenthesis; int i equals 1; semicolon; i is smaller than 5; semicolon; i++; close parenthesis; open curly brackets; system dot out dot print l n; open parenthesis; quote; Count is quote; + i; close parenthesis; semicolon; close curly brackets; this code prints Count is 1 Count is 2 Count is 3 Count is 4.")
        
        stWHILE = Statement(name: "While", image: "Java-While", description: "int i = 1; semicolon; while; open parenthesis; i less than 4; close parenthesis; open curly brackets; system dot out dot print l n; quote; Count is; quote; + i; close parenthesis; semicolon; i++; semicolon; close curly brackets; this code prints Count is 1 Count is 2 Count is 3.")
        
        stSWITCH = Statement(name:"Switch", image:"Java-Switch", description: "switch; open parenthesis; number; close parenthesis; open curly brackets; case 1; colon; System dot out dot print l n; open parenthesis; quote; one; quote; close parenthesis; semicolon; break; semicolon; default; colon; system dot out dot print l n; open parenthesis; quote; not one; quote; close parenthesis; semicolon; break; semicolon; close curly brackets;")
        
        stVARIABLE = Statement(name:"Create variable", image:"Java-Create variable", description: "int age = 20; semicolon; float price = 32.91; semicolon; String S =; open parenthesis; quote; Hello, getSyntax; quote; close parenthesis; semicolon; boolean getSyntaxIsGreat = true;semicolon;")
        
        stARRAY = Statement(name:"Create a simple array", image:"Java-Create a simple array", description: "String; open brackets; close brackets; Animals = new String; open brackets; 3; close brackets; semicolon; Animals; open brackets; 0; close brackets; = ;quote; Cat ;quote; semicolon; Animals; open brackets; 1 ; close brackets = ;quote; Dog; quote; semicolon; Animals; open brackets; 2; close brackets; = ;quote; Elephant; quote; semicolon;")
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Java", statementArray: statements)
        self.languages.append(lang)
        
        
        //Delphi
        stIF = Statement(name: "If", image: "Delphi-If", description: "if; open parenthesis; 3 greater than 4; close parenthesis; then; write l n ;open parenthesis; 3 is greater than 4 ;quote; close parenthesis; semicolon; else; write l n; open parenthesis; 3 is not greater than 4; quote; close parenthesis; semicolon; code writes 3 is not greater than 4. ")
        
        stFOR = Statement(name: "For", image: "Delphi-For", description: "for j; colon; equals;  1; to ;2; do; begin;  write l n; open parenthesis; quote; Hello, getSyntax!; quote; close parenthesis; semicolon; end; semicolon; This code prints: Hello, getSyntax; Hello, getSyntax; ")
        
        stWHILE = Statement(name: "While", image: "Delphi-While", description: "x colon = 0; semicolon;  while x less than 2; do; begin; x ;colon; equals x + 1 ;semicolon; write l n; open parenthesis; x ; close parenthesis; semicolon; end;  this code will write 1; 2." )
        
        stSWITCH = Statement(name:"Switch", image:"Delphi-Switch", description: "case; open parenthesis; number; close parenthesis; of; colon; 1; colon; write l n; open parenthesis; quote; number is 1; quote; close parenthesis; semicolon; 2; colon; write l n; open parenthesis; quote; number is 2; quote; close parenthesis; semicolon; else write l n; open parenthesis; quote; number is unkown; quote; close parenthesis; semicolon; ")
        
        stVARIABLE = Statement(name:"Create variable", image:"Delphi-Create variable", description: "var  age ;colon; integer; semicolon; name;colon; string; semicolon; getSyntaxIsGreat; colon; boolean; semicolon;")
        
        stARRAY = Statement(name:"Create a simple array", image:"Delphi-Create a simple array", description: "type TDays = array; open brackets; 1 dot dot 7; close brackets; of string; semicolon; var Days : TDays = ;open parenthesis; quote; Monday; quote; comma, quote; Tue; quote; comma; quote; Wed; quote; comma; quote; Thu; quote; comma; quote; Fri; quote; comma; quote; Sat; quote; comma; quote; Sun; quote; close parenthesis; semicolon;")
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Delphi", statementArray: statements)
        self.languages.append(lang)
        
        
        //C++

        stIF = Statement(name: "If", image: "C++-If", description: "if, open parenthesis, 3 is greater than 4, close parenthesis; open curly brackets; c out ,less than, less than, quote, 3 is greater than 4 ; quote, semicolon;close curly brackets; else ;open curly brackets; c out ,less than, less than, quote, 3 is not greater than 4 ; quote, semicolon; close curly brackets. This code Logs ;; 3 is not greater than 4.")
        
        
        stFOR = Statement(name: "For", image: "C++-For", description: " for ;open parenthesis; int i = 0 ;semicolon; i ;less than; 3 ;semicolon; i++  ;close parenthesis;open brackets; c out ;less than; less than; i ;semicolon; close brackets ; This code logs 0;1;2.")
        
        
        
        stWHILE = Statement(name: "While", image: "C++-While", description: "int ;i = 0; semicolon; while ;open parenthesis; i is less than 2 ;close parenthesis; open curly brackets ; c out ; less than ; less than; i; semicolon; i++ ;semicolon ; close curly brackets ; This code logs; 0 ; 1.  ")
        
        
        stSWITCH = Statement(name:"Switch", image:"C++-Switch", description : "switch ;open parenthesis; number ;close parenthesis; open curly brackets ; case 1; colon; c out; less than; less than; quote, one; quote,  semicolon ; break ; semicolon ; default ; colon ; c out; less than ; less than ; quote, not one; quote, semicolon ; break ;semicolon; close curly brackets ;")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"C++-Create variable", description: " int d ;=; 3, comma, f ;=; 5;semicolon; float z ;=; 22.1 ;semicolon;  char x ;=; apostrophe, x ; apostrophe, semicolon")
        
        stARRAY = Statement(name:"Create a simple array", image:"C++-Create a simple array", description: "int foo ;open brackets;close brackets ; = ; open curly brackets ; 16 ,comma,  2 , comma, 77, comma, 40, comma, 12017 ;close curly brackets; semicolon; string animals; open brackets; close brackets; =; open curly brackets ; quote, cat,quote, comma, quote, dog, quote, comma, quote, ant, quote, comma, quote, lizard, quote; close curly brackets; semicolon;")
       
    

        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "C++", statementArray: statements)
        self.languages.append(lang)
        
        
        //Csharp
        
        stIF = Statement(name: "If", image: "Csharp-If", description: "int a, equals, 100, semicolon, if, open parenthesis, a, is less than, 20, close parenthesis, open curly brackets, console dot writeLine, open parenthesis, open quote, a, is less than 20, close quote, close parenthesis, semicolon, close curly brackets, console dot writeLine, open parenthesis, ope quote, value of a, is, colon, open curly brackets, 0, close curly brackets, close quote, comma, a, close parenthesis, semicolon, console dot readLine, open parenthesis, close parenthesis, semicolon.")
        
        
        stFOR = Statement(name: "For", image: "Csharp-For", description: "for, open parenthesis, int a, equals, 10, semicolon, a, is less than, 20, semicolon, a, equals, a, plus one, close parenthesis, semicolon, close curly brackets, console dot readLine, open parenthesis, close parenthesis, semicolon")
        
        
        
        stWHILE = Statement(name: "While", image: "Csharp-While", description: "Int a, equals, ten, semicolon, while, open parenthesis, a, is less than, 20, close parenthesis, open curly brackets, console dot writeLine, open parenthesis, open quote, value of a, colon, open curly brackets, 0, close curly brackets, close quote, comma, a, close parenthesis, semicolon, a, plus plus, semicolon, close curly brackets, console dot readLine, open parenthesis, close parenthesis, semicolon.")
        
        
        stSWITCH = Statement(name:"Switch", image:"Csharp-Switch", description : "int number, equals, 1, semicolon, switch, open parenthesis, number, close parenthesis, open curly brackets, case 0, colon, console dot writeLine, open parenthesis, open quote, the number is zero, close parenthesis, semicolon, break, semicolon, case 1, colon, console dot writeLine, open parenthesis, open quote, the number is one, close quote, close parenthesis, semicolon, close curly brackets.")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"Csharp-Create Variable", description: " Int d, equals, 3,comma, f, equals, 5, semicolon, byte z, equals, 22, semicolon, double pi, equals, 3, dot, 1,4,1,5,9, semicolon, char x, equals, open single quote, x, close single quote, semicolon. String, name, equals, open quote, john, close quote, semicolon.")
        
        stARRAY = Statement(name:"Create a simple array", image:"Csharp-Create A Simple Array", description: "int, open brackets, close brackets, marks, equals, open curly brackets, 99, comma, 98, comma, 92, comma, 95, close curly brackets, semicolon. int, open brackets, close brackets, marks, equals, new int, open brackets, 4, close brackets, open curly brackets, 99, comma, 98, comma, 92, comma, 95, close curly brackets, semicolon. String, open brackets, close brackets, names, equals, open curly brackets, open quote, Paul, close quote, comma, open quote, Lisa, close quote, comma, open quote, Simon, close quote, close curly brackets, semicolon.")
        
        
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "C#", statementArray: statements)
        self.languages.append(lang)
        
        
        //JavaScript
        
        stIF = Statement(name: "If", image: "JavaScript-If", description: "if; open parenthesis; hour less than 18; close parenthesis; open curly brackets; greeting equals; open quotes; Good day; close quotes; semicolon; close curly brackets; else; open curly brackets; greeting equals; open quotes; Good evening; close quotes; semicolon; close curly brackets.")
        
        
        stFOR = Statement(name: "For", image: "JavaScript-For", description: "or; open parenthesis; i equals 0; semicolon; i less than 5; semicolon; i plus plus; close parenthesis; open curly brackets; text plus equal; open quotes; the number is; close quotes; plus i plus; open quotes; less than; br; larger than; close quotes; semicolon.")
        
        
        
        stWHILE = Statement(name: "While", image: "JavaScript-While", description: "while; open parenthesis; i less than 10; close parenthesis; open curly brackets; text plus equal; open quotes; the number is; close quote; plus i; semicolon; i plus plus; semi colon; close curly brackets.")
        
        
    var stOUTPUT = Statement(name:"Output", image:"JavaScript-Output", description: "three options:windows dot alert; open parenthesis; 5 plus 6 close parenthesis; semicolon; or, document dot alert; ; open parenthesis; 5 plus 6 close parenthesis; semicolon; or, console dot log; ; open parenthesis; 5 plus 6 close parenthesis; semicolon;")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"JavaScript-Create Variable", description: "var x equals 5; semicolon; var person equals open quotes; Erik; close quotes; semicolon.")
        
    var stFORIN = Statement(name:"For/In", image:"JavaScript-ForIn", description: "var person equals; open curly brackets; f name; colon; open quotes; John; close quotes; comma; l name, colon, open quote, Doe, close quote, close curly brackets; semicolon; var text equals; open quote; close quote; semicolon; for; open parenthesis; x in person; close parenthesis; open curly brackets; text; plus; equals; person; open brackets; x; close brackets; semicolon; close curly brackets.")
        
    var stDOWHILE = Statement(name:"Do/While", image:"JavaScript-DoWhile", description: "do; open curly brackets; text plus equals; open quotes; The number is; close quotes; plus i; semicolon; i plus plus; semicolon; close curly brackets; while; open parenthesis; i less than 10; close parenthesis; semicolon.")
        
        
        
        statements = [stIF, stFOR, stWHILE, stOUTPUT, stVARIABLE, stFORIN, stDOWHILE]
        lang = Language(name: "JavaScript", statementArray: statements)
        self.languages.append(lang)
        
        
        //Perl
        
        stIF = Statement(name: "If", image: "Perl-If", description: "Dollar a, equals, one hundred semicolon, if, open parenthesis, dollar a, is less than, twenty, close parenthesis, open curly brackets, printf, open quote, a is less than, twenty backslash n, close quote, semicolon, close curly brackets, else, open curly brackets, printf, open quote, a is greater than, twenty backslash n, close quote, semicolon, close curly brackets.")
        
        
        stFOR = Statement(name: "For", image: "Perl-For", description: "For, open parenthesis, dollar a, equals, ten semicolon, dollar a, is less than, twenty, semicolon, dollar a, equals, dollar a, plus, one, close parenthesis, open curly brackets, print, open quote, valeu of a, colon, dollar a, backslash n, close quote, semicolon, close curly brackets.")
        
        
        
        stWHILE = Statement(name: "While", image: "Perl-While", description: "Dollar a, equals, ten, semicolon, while, open parenthesis, dollar a, is less than, twenty, close parenthesis, open curly brackets, printf, open quote, valeu of a, colon, dollar a, backslash n, close quote, semicolon, dollar a, equals, dollar a, plus one, semicolon, close curly brackets. This code logs 0, 1.")
        
        
        stSWITCH = Statement(name:"Switch", image:"Perl-Switch", description : "Use Switch, semicolon, dollar var, equals, ten semicolon. Switch open parenthesis dollar var close parenthesis, open curly brackets, case, ten,open curly brackets, print, open quote, number, ten backslash, n, close quote, close curly brackets, case, open quote, a, close quote, open curly brackets, print, open quote, string a close quote, close curly brackets, else, open curly brackets, print, open quote previous case not true, close quote, close curly brackets, close curly brackets.")
        
        
        stVARIABLE = Statement(name:"Create variable", image:"Perl-Create Variable", description: "Dollar age, equals, 25, semicolon, dollar, name, equals, open quote, John, close quote, semicolon, dollar, salary, equals, 987, dot, 50, semicolon. Percent coins, equals, open parenthesis, open quote, quarter, close quote, comma, 25, comma, open quote, dime, close quote, comma, 10, comma, open quote, nickel, close quote, comma, 5, close parenthesis, semicolon.")
        
        stARRAY = Statement(name:"Create a simple array", image:"Perl-Create A Simple Array", description: "@ ages, equals, open parenthesis, 25, comma, 30, comma, 40, close parenthesis, semicolon, @ names, equals, open parenthesis, open quote, John, close quote, comma, open quote, Lisa, close quote, comma, open quote, Paul, close quote, close parenthesis, semicolon.")
        
        
        
        statements = [stIF, stFOR, stWHILE, stSWITCH, stVARIABLE, stARRAY]
        lang = Language(name: "Perl", statementArray: statements)
        self.languages.append(lang)

        
        //Python
        
        stIF = Statement(name: "If", image: "Python-If", description: "if, open parenthesis ; 3 is greater than 4 ; close parenthesis ; colon ; tab ; print ; open quotes ; 3 is greater than 4 ; close quotes ; else ; colon ; tab ; print ; open quotes ; 3 is not greater than 4 ; close quotes ; ; this code logs ; 3 is not greater than 4.")
        
        stFOR = Statement(name: "For", image: "Python-For", description: "for num in range ; open parenthesis ; 1 ; comma ; 3 ; close parenthesis ; tab ; print ; open quote ; value of num is ; close quote ; comma ; num ;; this code logs ; value of num is 1 ; value of num is 2 ;value of num is 3.")
        
        
        
        stWHILE = Statement(name: "While", image: "Python-While", description: "count equals 0 ; while ; open parenthesis ; count is smaller than 4 ; close parenthesis ; colon ; tab ; print ; open quote ; value of count is ; close quote ; comma ; count ;  tab ; count = count ;+; 1 ; this code logs ; value of count is 1 ; value of count is 2 ; value of count is 3.")
        
        
    
        stVARIABLE = Statement(name:"Create variable", image:"Python-Create Variable", description: "creating a string ; name = ; open quote ; John ; close quote ; creating an integer ; age = ; 22 ; creating a float ; height = ; 1 dot 82.")
        
    var stLIST = Statement(name:"Create a simple list", image:"Python-Create A Simple List", description: "emptyList ; equals; open brackets ; close brackets ; animals ; equals ; open brackets ; open quote ; cat ; close quote ; comma ; open quote ; dog ; close quote ; comma ; open quote ; lion ; close quote ; comma ; open quote ; parrot ; close quote ; comma ; open quote ; cat ; close quote ; close brackets, primeNumbers ; equals ; open brackets ; 2 ; comma ; 3 ; comma ; 5 ; comma ; 7 ; comma ; 11 ; comma ; close brackets.")
        
    var stFUNCTION = Statement(name:"Create a simple function", image:"Python-Create A Simple Function", description: "def ; sum ; open parenthesis ; a ; comma ; b ; close parenthesis ; tab ; return ; a ; plus ; B.")
        
        
        
        
        
        statements = [stIF, stFOR, stWHILE, stVARIABLE, stLIST, stFUNCTION]
        lang = Language(name: "Python", statementArray: statements)
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


