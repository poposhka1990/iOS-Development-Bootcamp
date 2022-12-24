//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var label: UILabel!
    @IBAction func hardnessPressed(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]! * 60
        
        label.text = hardness
        progressBar.progress = 0.0
        secondsPassed = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            label.text = "Done"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
}
