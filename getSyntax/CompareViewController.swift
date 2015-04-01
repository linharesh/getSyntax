//
//  CompareViewController.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 31/03/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//
import Foundation
import UIKit

class CompareViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var firstLanguage: UIPickerView!
    
    @IBOutlet weak var secondLanguage: UIPickerView!
    
    @IBOutlet weak var statementPicker: UIPickerView!
    
    var languagesObject = Languages()
    
    var statements:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLanguage.delegate = self
        self.firstLanguage.dataSource = self
        
        self.secondLanguage.delegate = self
        self.secondLanguage.dataSource = self
        
        self.statementPicker.delegate = self
        self.statementPicker.dataSource = self
        
        statements = self.findIntersectionBetweenStatements()
    }

    
    
     func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println("passou aqui")
        self.findIntersectionBetweenStatements()
        self.viewDidLoad()
    }
    
    
    
    
    func findIntersectionBetweenStatements()->[String]{
    var returningStatements:[String] = []
    var firstRow = self.firstLanguage.selectedRowInComponent(0)
    var secondRow = self.secondLanguage.selectedRowInComponent(0)
        
    
        
    
        //Tell me how many statements are on the first language
        var firstLanguageStatementsLimit = self.languagesObject.languages[firstRow].statementsArray?.count
        var k:Int
        
        
        //Tell me how many statements are on the second language
        var secondLanguageStatementsLimit = self.languagesObject.languages[secondRow].statementsArray?.count
        var j:Int
        
        
        var firstLanguageStatementsArray:[Statement] = self.languagesObject.languages[firstRow].statementsArray!
        
        var secondLanguageStatementsArray:[Statement] = self.languagesObject.languages[secondRow].statementsArray!
        
        for ( k=0 ; k < firstLanguageStatementsLimit ; k++ ) {
            for (j = 0 ; j < secondLanguageStatementsLimit ; j++ ){
                
                if (firstLanguageStatementsArray[k].name == secondLanguageStatementsArray[j].name ){
                    returningStatements.append(firstLanguageStatementsArray[k].name!)
                }
            }
            
        }
        
        
        
    return returningStatements
    }
    
  
    
    
    
    @IBAction func compareButton(sender: AnyObject) {
        var firstRow = self.firstLanguage.selectedRowInComponent(0)
        var secondRow = self.secondLanguage.selectedRowInComponent(0)
        if (firstRow == secondRow){
            let alertController = UIAlertController(title: "Please, select two different languages", message:
                "", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
        self.performSegueWithIdentifier("compareSegue", sender: self)
        }
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == self.firstLanguage  || pickerView == self.secondLanguage){
            return self.languagesObject.languages.count
        }
        
        if (pickerView == self.statementPicker){
        return self.statements.count
        }

        return -1
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {

        
        if (pickerView == self.firstLanguage  || pickerView == self.secondLanguage){
            return self.languagesObject.languages[row].name
        }
        
        if (pickerView == self.statementPicker){
        
        return self.statements[row]
        }

        return nil
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
