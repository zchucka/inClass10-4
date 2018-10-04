//
//  ViewController.swift
//  timerFun
//
//  Created by Chucka, Zachary Tyler on 10/4/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var secondsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startIsPressed (_ sender: UIButton)
    {
        print("hello from start")
    }
    
    @IBAction func pauseIsPressed (_ sender: UIButton)
    {
        print("hello from pause")
    }
    
    @IBAction func resetIsPressed (_ sender: UIButton)
    {
        print("hello from reset")
    }
}

