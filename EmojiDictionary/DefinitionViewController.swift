//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Peter Pickett on 8/20/17.
//  Copyright © 2017 Peter Pickett. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😀"
        { emojiDefinition.text = "Really Happy Face" }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
