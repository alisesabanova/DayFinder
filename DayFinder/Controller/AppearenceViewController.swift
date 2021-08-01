//
//  AppearenceViewController.swift
//  DayFinder
//
//  Created by Alise Sabanova on 01/08/2021.
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSettingTapped(_ sender: Any) {
        openSetting()
    }
    
    func setLabelText(){
        var text = "Unable to identify UI style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark mode is ON. Go to Settings if you would like to switch to the light mode."
        } else {
            text = "Light mode is ON. Go to Settings if you would like to switch to the dark mode."
        }
        textLabel.text = text
    }
    
    func openSetting(){
            guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {
                return
            }
            
            if UIApplication.shared.canOpenURL(settingURL){
                UIApplication.shared.open(settingURL, options: [:]) { success in
                    print("Success", success)
                }
            }
    }
    
    
}


extension AppearenceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
