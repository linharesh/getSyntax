//
//  StatementsTableViewController.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 12/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import UIKit

class StatementsTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource  {
    
    //var statements:[String] = ["If","For","While","Switch", "Create variable", "Create a simple array"]
    
    var highlightedRows:[Bool]!
    
    var image: UIImageView?
    
    @IBOutlet weak var languageTitle: UINavigationItem!
    
    var selectedLanguage:String?
    
    var languageObject = Languages()
    
    var languages:[Language]!
    
    var statementsArray:[Statement] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.languageTitle.title = self.selectedLanguage
       
 
        
        self.languages = languageObject.languages
        
        var language = self.languageObject.findLanguageByName(self.selectedLanguage!)
        
        self.statementsArray = language!.statementsArray!
        
        self.highlightedRows = [Bool](count:self.statementsArray.count, repeatedValue:false)
    
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Name") as UITableViewCell
        
        cell.textLabel?.text = self.statementsArray[indexPath.row].name
        
        if (self.highlightedRows[indexPath.row] == true){
            cell.textLabel?.text =  nil
            
            var language = self.languageObject.findLanguageByName(self.selectedLanguage!)
            
            var numberStatements:Int = (language?.statementsArray!.count)! - 1
            
            //Percorre todos os Statements
            for i in 0...numberStatements
            {
                var statement = language!.statementsArray![i] as Statement
                
                cell.backgroundView = UIImageView(image: UIImage (named: statement.image!))
            
            }
        
            
        }else {
            cell.backgroundView = nil;
        }
    
        return cell
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return self.statementsArray.count
        
    }
    

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if (self.highlightedRows[indexPath.row]) {
            self.highlightedRows[indexPath.row] = false
        } else {
            self.highlightedRows[indexPath.row] = true
        }

        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if (self.highlightedRows[indexPath.row]){
        return 160
        } else {
        return 44
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
