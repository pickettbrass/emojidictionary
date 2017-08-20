//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Peter Pickett on 8/20/17.
//  Copyright © 2017 Peter Pickett. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
  
    @IBOutlet weak var birthdayYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
        
        emojiLabel.text = emoji.stringEmoji
        emojiDefinition.text = emoji.definition
        birthdayYearLabel.text = "Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
