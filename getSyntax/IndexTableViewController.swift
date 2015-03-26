//
//  IndexTableViewController.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 12/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import UIKit
import Foundation

class IndexTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    
    var languageObject:Languages?
    
    var languagesNames:[String]!
    
    var selectedLanguage:String!

    var filteredLanguages = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.languageObject = Languages()
        
        self.languagesNames = self.languageObject?.getLanguagesNames()
        
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("Icon_Name") as UITableViewCell
        
        
        
        var language:String!
        
        if tableView == self.searchDisplayController!.searchResultsTableView {
            language = filteredLanguages[indexPath.row]
        } else {
            language = languagesNames[indexPath.row]
        }
        
        cell.textLabel?.text = language
        cell.imageView?.image = UIImage(named: language)
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
        
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 57
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        
        self.selectedLanguage = self.tableView.cellForRowAtIndexPath(indexPath)?.textLabel?.text
        
        if tableView == self.searchDisplayController!.searchResultsTableView {
             self.selectedLanguage = self.filteredLanguages[indexPath.row]
        } else {
             self.selectedLanguage = self.languagesNames[indexPath.row]
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.performSegueWithIdentifier("Segue1", sender: self)
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.filteredLanguages.count
        } else {
           return self.languagesNames.count
        }
    }
    
    /*
    Sends a message to the next view controller.
    The message contains a string with the name of the selected Language
    */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "Segue1") {
            // pass data to next view
            
            let viewController:StatementsTableViewController = segue.destinationViewController as StatementsTableViewController
            viewController.selectedLanguage = self.selectedLanguage
        }
        
        
    }
    
    
    
    /*
    All the functions below are responsable for managing the search bar
    */
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool {
        self.filterContentForSearchText(searchString)
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        self.filterContentForSearchText(self.searchDisplayController!.searchBar.text)
        return true
    }
    
    func filterContentForSearchText(searchText: String) {
        // Filter the array using the filter method
        
        self.filteredLanguages = self.languagesNames.filter{ ($0 as NSString).localizedCaseInsensitiveContainsString("\(searchText)") }
    }
    
    
    
}
