//
//  ViewController.swift
//  LibraryOfAlexandria
//
//  Created by Samuel Tak-Sum Ngai on 9/3/18.
//  Copyright © 2018 Samuel Tak-Sum Ngai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Attributes
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var ISBNField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var pubField: UITextField!
    @IBOutlet weak var editionField: UITextField!
    @IBOutlet weak var yearField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var desField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newBookSegue" {
            let title = titleField.text
            let ISBN = ISBNField.text
            let author = authorField.text
            let publisher = pubField.text
            var edition = 0
            if let editionFieldInt = Int(editionField.text!) {
                edition = editionFieldInt
            }
            var year = 0
            if let yearFieldInt = Int(yearField.text!) {
                year = yearFieldInt
            }
            let genre = genreField.text
            let des = desField.text
            let book = Book(title: title!, ISBN: ISBN!, author: author!, publisher: publisher!, edition: edition, yearOfPub: year, genre: genre!, des: des!)
            if let destinationVC = segue.destination as? bookViewController {
                destinationVC.currentBook = book
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

