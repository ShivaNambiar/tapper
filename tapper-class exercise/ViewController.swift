//
//  ViewController.swift
//  tapper-class exercise
//
//  Created by Shi Nam on 2015-12-10.
//  Copyright © 2015 Shi Nam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentTaps = 0
    var maxTaps = 0
    
    
    @IBOutlet weak var tapper: UIImageView!
    @IBOutlet weak var tapCounter: UILabel!
    @IBOutlet weak var tapsToWin: UITextField!
    @IBOutlet weak var tapButtonLabel: UIButton!
    @IBOutlet weak var playButtonLabel: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButtonPressed(sender: UIButton) {
        
        if tapsToWin.text != nil
        {
            tapper.hidden = true
            tapsToWin.hidden  = true
            playButtonLabel.hidden = true
            
            tapButtonLabel.hidden = false
            tapCounter.hidden = false
            
            tapCounter.text = "\(currentTaps) Taps"
            maxTaps = Int(tapsToWin.text!)!
            currentTaps = 0
        }
        
        
    }
    
    
    @IBAction func tapButtonPressed(sender: UIButton!) {
      
        if currentTaps >= maxTaps
        {
            tapper.hidden = false
            tapsToWin.hidden  = false
            playButtonLabel.hidden = false
            
            tapButtonLabel.hidden = true
            tapCounter.hidden = true
            
        }else
        {
            currentTaps++
            tapCounter.text = "\(currentTaps) Taps"
            
        }
        
    }
    
    

}

