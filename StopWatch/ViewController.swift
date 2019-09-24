//
//  ViewController.swift
//  StopWatch
//
//  Created by Nazim Uddin on 24/9/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pushButton: UIButton!
    
    var timer = Timer()
    var counter = 0.0
    var isRunning = false
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "\(counter)"
        playButton.isEnabled = true
        pushButton.isEnabled = false
    }
    @IBAction func didTapResetButton(_ sender: Any) {
        timer.invalidate()
        counter = 0.0
        timeLabel.text = "\(counter)"
        playButton.isEnabled = true
        pushButton.isEnabled = false
        isRunning = false
    }
    @IBAction func didTapPlayButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(didUpdateTimer), userInfo: self, repeats: true)
        
        playButton.isEnabled = false
        pushButton.isEnabled = true
        isRunning = true
    }
    @objc func didUpdateTimer(){
        counter+=0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    @IBAction func didTapPushButton(_ sender: Any) {
        timer.invalidate()
        playButton.isEnabled = true
        pushButton.isEnabled = false
        isRunning = false
    }
    

}

