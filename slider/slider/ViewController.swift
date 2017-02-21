//
//  ViewController.swift
//  slider
//
//  Created by Gnatus on 31/01/17.
//  Copyright © 2017 Vale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderOutletRed: UISlider!
    @IBOutlet weak var sliderOutletGreen: UISlider!
    @IBOutlet weak var sliderOutletBlue: UISlider!
    @IBOutlet weak var labelRedValue: UILabel!
    @IBOutlet weak var labelGreenValue: UILabel!
    @IBOutlet weak var labelBlueValue: UILabel!
    
    
    
    
    let caixa = UIView(frame: CGRect(x: 37, y: 40, width: 300, height: 300))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    caixa.backgroundColor = UIColor.init(red: CGFloat(sliderOutletRed.value), green: CGFloat(sliderOutletGreen.value), blue: CGFloat(sliderOutletBlue.value), alpha: 1)
        self.view.addSubview(caixa)
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mudaOutletRed(_ sender: Any) {
        let verm = self.sliderOutletRed.value
        
        self.sliderOutletRed.maximumTrackTintColor = UIColor.init(red: CGFloat(verm), green: 0, blue: 0, alpha: 1)
        self.sliderOutletRed.minimumTrackTintColor = UIColor.init(red: CGFloat(verm), green: 0, blue: 0, alpha: 1)
        self.sliderOutletRed.thumbTintColor = UIColor.init(red: CGFloat(verm), green: 0, blue: 0, alpha: 1)
         caixa.backgroundColor = UIColor.init(red: CGFloat(sliderOutletRed.value), green: CGFloat(sliderOutletGreen.value), blue: CGFloat(sliderOutletBlue.value), alpha: 1)
        self.labelRedValue.text = "R - \(verm*255)"
        
    }
    
    @IBAction func mudaOutletGreen(_ sender: Any) {
        let verde = self.sliderOutletGreen.value
 
        self.sliderOutletGreen.maximumTrackTintColor = UIColor.init(red: 0, green: CGFloat(verde), blue: 0, alpha: 1)
        self.sliderOutletGreen.minimumTrackTintColor = UIColor.init(red: 0, green: CGFloat(verde), blue: 0, alpha: 1)
        self.sliderOutletGreen.thumbTintColor = UIColor.init(red: 0, green: CGFloat(verde), blue: 0, alpha: 1)
         caixa.backgroundColor = UIColor.init(red: CGFloat(sliderOutletRed.value), green: CGFloat(sliderOutletGreen.value), blue: CGFloat(sliderOutletBlue.value), alpha: 1)
        self.labelGreenValue.text = "G - \(verde*255)"
        
    }
    
    @IBAction func MudaOuletBlue(_ sender: Any) {
        let azul = self.sliderOutletBlue.value
        self.sliderOutletBlue.maximumTrackTintColor = UIColor.init(red: 0, green: 0, blue: CGFloat(azul), alpha: 1)
        self.sliderOutletBlue.minimumTrackTintColor = UIColor.init(red: 0, green: 0, blue: CGFloat(azul), alpha: 1)
        self.sliderOutletBlue.thumbTintColor = UIColor.init(red: 0, green: 0, blue: CGFloat(azul), alpha: 1)
         caixa.backgroundColor = UIColor.init(red: CGFloat(sliderOutletRed.value), green: CGFloat(sliderOutletGreen.value), blue: CGFloat(sliderOutletBlue.value), alpha: 1)
        self.labelBlueValue.text = "B - \(azul*255)"
    }

    
    
    
    
    
    

}
