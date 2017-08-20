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
    
    var emojis : [Emoji] = []
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        thecooltableview.dataSource = self
        thecooltableview.delegate = self
        
        emojis = makeEmojiArray()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row].stringEmoji
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji=emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.definition = "smiley"
        emoji1.category = "Faces"
        emoji1.birthYear = 2011;
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "😅"
        emoji2.definition = "tear"
        emoji2.category = "Faces"
        emoji2.birthYear = 2012;
    
        return [emoji1, emoji2]
    }
    
    
    
    
// cool
}

