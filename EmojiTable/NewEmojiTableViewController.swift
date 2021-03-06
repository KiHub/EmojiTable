//
//  NewEmojiTableViewController.swift
//  EmojiTable
//
//  Created by  Mr.Ki on 25.06.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    
    @IBOutlet weak var emojiTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        updateSaveButtonState()
        
    }

    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
        
   
        
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
        
    }
    
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.name
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {
            return
        }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
   

}
