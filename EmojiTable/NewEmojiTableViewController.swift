//
//  NewEmojiTableViewController.swift
//  EmojiTable
//
//  Created by  Mr.Ki on 25.06.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    
    @IBOutlet weak var emojiTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
    
    
   

}
