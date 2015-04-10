//
//  ShowCompareViewController.swift
//  getSyntax
//
//  Created by Henrique do Prado Linhares on 09/04/15.
//  Copyright (c) 2015 Henrique do Prado Linhares. All rights reserved.
//

import UIKit

class ShowCompareViewController: UIViewController {

    var firstLanguage:Language!
    var secondLanguage:Language!
    var StatementName:String!
    
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    
    @IBOutlet weak var firstTextView: UITextView!
    
    @IBOutlet weak var secondTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.\
        
        
        self.firstTextView.text = self.firstLanguage.name
        
        self.secondTextView.text = self.secondLanguage.name
        
        
        var firstStatement = self.firstLanguage.findStatementByName(self.StatementName)
        self.firstImage.image = UIImage(named: firstStatement.image!)
        self.firstImage.isAccessibilityElement = true
        self.firstImage.accessibilityLabel = firstStatement.description
            
        
        var secondStatement = self.secondLanguage.findStatementByName(self.StatementName)
        self.secondImage.image = UIImage(named: secondStatement.image!)
        self.secondImage.isAccessibilityElement = true
        self.secondImage.accessibilityLabel = secondStatement.description
        
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
