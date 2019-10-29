//
//  ViewController.swift
//  Mountain Bike App
//
//  Created by administrator on 10/22/19.
//  Copyright © 2019 administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: Properties
    
    @IBOutlet weak var rideNameLabel:
        UILabel!
    
    @IBOutlet weak var rideNameText:
        UITextField!
    
    @IBOutlet weak var ratingLabel:
        UILabel!
    
    @IBOutlet weak var ratingSlider:
        UISlider!
    
    @IBOutlet weak var ridersLabel:
        UILabel!
    
    @IBOutlet weak var ridersText:
        UITextField!
    
    @IBOutlet weak var commentsLabel:
        UILabel!
    
    @IBOutlet weak var commentsText: UITextField!
    
    @IBOutlet weak var viewRidesButton: UIButton!
    
    @IBOutlet weak var sendItButton:
        UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

