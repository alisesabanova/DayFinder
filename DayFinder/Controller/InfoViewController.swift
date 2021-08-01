//
//  InfoViewController.swift
//  DayFinder
//
//  Created by Alise Sabanova on 01/08/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescrLabel: UILabel!
    
    var infoText = ""
    var appDescrText = "This is my home work project."
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           if !infoText.isEmpty && !appDescrText.isEmpty{
               appInfoLabel.text = infoText
               appDescrLabel.text = appDescrText
           }
       }
    
} 
