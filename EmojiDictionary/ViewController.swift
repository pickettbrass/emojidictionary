//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Peter Pickett on 8/19/17.
//  Copyright © 2017 Peter Pickett. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var thecooltableview: UITableView!
    
    var emojis = ["😀", "😎", "😣", "😭","👏","blah blah blah blah blah blah balh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        thecooltableview.dataSource = self
        thecooltableview.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// cool
}

