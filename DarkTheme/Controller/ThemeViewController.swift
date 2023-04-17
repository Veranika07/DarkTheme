//
//  ViewController.swift
//  DarkTheme
//
//  Created by veranika.trubovich on 07/04/2023.
//

import UIKit

class ThemeViewController: UIViewController {

    @IBOutlet weak var darkThemeButton: UIButton!
    
    var mainText: String = "Dark Theme On"
    var darkIsOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from ViewController")
        darkThemeButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }

    @IBAction func drakThemeButtonTapped(_ sender: Any) {
        darkThemeIsOn(isOn: darkIsOn)
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        basicAlert(title: "Add New?", message: "Do you want to add new...?")
    }
    
    @IBAction func infoButtonTapped(_ sender: Any) {
        basicActionAlert(title: "Action Sheet is On", message: "All good here")
    }
    func darkThemeIsOn(isOn: Bool){
        mainText = isOn ? "Dark Theme is off" : "Dark Theme is on"
        darkThemeButton.setTitle(mainText, for: .normal)
        darkThemeButton.setTitleColor(isOn ? UIColor.black : UIColor.white, for: .normal)
        
        navigationItem.title = mainText
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: isOn ? UIColor.black : UIColor.white]
        view.backgroundColor = !isOn ? UIColor.black : UIColor.white
        darkIsOn.toggle()
    }
    
}


