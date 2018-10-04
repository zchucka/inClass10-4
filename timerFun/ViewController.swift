//
//  ViewController.swift
//  timerFun
//
//  Created by Chucka, Zachary Tyler on 10/4/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Timer
    //use the timer to class to schedule code (a closure) to execute every so often
    // two types of timers
    // non-repeating
    // repeating: use invalidate() to stop a repeating timer
    var timer: Timer? = nil
    // add a property observer for seconds that updates the label whenever seconds is changed
    // we want to stop the timer on pause on reset
    // we want to reset seconds to zero on reset
    var seconds = 0 {
        didSet {
            secondsLabel.text = "\(seconds)"
        }
    }
    @IBOutlet var secondsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func startTimer() {
        timer =  Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) -> Void in
            // we want to update a property that keeps track of elapsed seconds
            self.seconds += 1 // closures "capture" external references
            // closures execute later... perhaps after variables they reference have been deallocated
            // to prevent your program from crashing, closures keep external variables in scope in memory
            // fully qualify our external reference names
        })
        
    }
    
    @IBAction func startIsPressed (_ sender: UIButton)
    {
        print("hello from start")
        if timer == nil {
            startTimer()
        }
    }
    
    @IBAction func pauseIsPressed (_ sender: UIButton)
    {
        print("hello from pause")
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func resetIsPressed (_ sender: UIButton)
    {
        print("hello from reset")
        timer?.invalidate()
        timer = nil
        seconds = 0
    }
}

