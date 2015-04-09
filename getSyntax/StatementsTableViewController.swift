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
    
    tableView.backgroundColor = UIColor.whiteColor()
        
    
    
        }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Name") as UITableViewCell
        
        cell.textLabel?.text = self.statementsArray[indexPath.row].name
        
        if (self.highlightedRows[indexPath.row] == true){
            cell.textLabel?.text =  nil
            
            var language = self.languageObject.findLanguageByName(self.selectedLanguage!)
            
                           var statement = language!.statementsArray![indexPath.row] as Statement
                
                cell.backgroundView = UIImageView(image: UIImage (named: statement.image!))
            
           
        
            cell.isAccessibilityElement = true
            cell.accessibilityLabel = statement.description
            
        }else {
            cell.backgroundView = nil;
        }

        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.font = UIFont(name: "Verdana", size: 15)
        cell.textLabel?.textColor = UIColor(red: 84.0/255.0, green: 84.0/255.0, blue: 84.0/255.0, alpha: 1.0)
        
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
        return 48
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
