//
//  ViewController.swift
//  UITabBarController
//
//  Created by Gnatus on 16/02/17.
//  Copyright © 2017 Vale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelRed: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderRed(_ sender: UISlider) {
        
        self.labelRed.text = "\(sender.value)"
    }


}

