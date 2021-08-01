//
//  InstructionsViewController.swift
//  DayFinder
//
//  Created by Alise Sabanova on 01/08/2021.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var instructionsTitle: UILabel!
    @IBOutlet weak var instructionsDescription: UILabel!
    
    var instructionsTitleText = ""
    var instructionsDescriptionText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !instructionsTitleText.isEmpty && !instructionsDescriptionText.isEmpty {
            instructionsTitle.text = instructionsTitleText
            instructionsDescription.text = instructionsDescriptionText
        }
    }

}
