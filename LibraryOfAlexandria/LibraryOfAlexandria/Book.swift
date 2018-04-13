//
//  Book.swift
//  LibraryOfAlexandria
//
//  Created by Samuel Tak-Sum Ngai on 9/3/18.
//  Copyright © 2018 Samuel Tak-Sum Ngai. All rights reserved.
//

import UIKit

class Book: NSObject {
    var title: String
    var ISBN: String
    var author: String
    var publisher: String
    var edition: Int
    var yearOfPub: Int
    var genre: String
    var des: String
    
    override init() {
        title = "Unkown"
        ISBN = "Unknown"
        author = "Unknown"
        publisher = "Unknown"
        edition = 0
        yearOfPub = 0
        genre = "Unknown"
        des = "Unknown"
    }
    
    init(title: String, ISBN: String, author: String, publisher: String, edition: Int, yearOfPub: Int, genre: String, des: String) {
        self.title = title
        self.ISBN = ISBN
        self.author = author
        self.publisher = publisher
        self.edition = edition
        self.yearOfPub = yearOfPub
        self.genre = genre
        self.des = des
    }
    
    // Get methods
    func getTitle() -> String {
        return title
    }
    func getISBN() -> String {
        return ISBN
    }
    func getAuthor() -> String {
        return author
    }
    func getPublisher() -> String {
        return publisher
    }
    func getEdition() -> Int {
        return edition
    }
    func getYearOfPub() -> Int {
        return yearOfPub
    }
    func getGenre() -> String {
        return genre
    }
    func getDes() -> String {
        return des
    }
    
    // Set methods
    
    func setTitle(title: String) {
        self.title = title
    }
    func setISBN(ISBN: String) {
        self.ISBN = ISBN
    }
    func setAuthor(author: String) {
        self.author = author
    }
    func setPublisher(publisher: String) {
        self.publisher = publisher
    }
    func setEdition(edition: Int) {
        self.edition = edition
    }
    func setYearOfPub(yearOfPub: Int) {
        self.yearOfPub = yearOfPub
    }
    func setGenre(genre: String) {
        self.genre = genre
    }
    func setDes(des: String) {
        self.des = des
    }
    
    // Summary of the book
    func summary() -> String {
        return "Title: \(title)\nISBN: \(ISBN)\nAuthor: \(author)\nPublisher: \(publisher)\nEdition: \(edition)\nYear of publication: \(yearOfPub)\nGenre: \(genre)\nDescription: \(des)"
    }
}
