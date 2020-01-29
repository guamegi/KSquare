//
//  TimerViewController.swift
//  KSquare
//
//  Created by 나미콘 on 2020/01/13.
//  Copyright © 2020 나미콘. All rights reserved.
//
import UIKit
import Foundation

class TimerViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var pickerView: UIDatePicker!
    @IBOutlet weak var startStopBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    var countdownTimer: Timer!
    var totalTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // picker changed
    @IBAction func changedPicker(_ sender: Any) {
        pickerView.addTarget(self, action: #selector(changed), for: .valueChanged)
    }
    
    @objc func changed() {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        let time = formatter.string(from: pickerView.date)
        timeLabel.text = time + ":00"
        
        // TODO : 변경된 pickview의 value(초)를 totalTime에 넣기
        
    }
    
    // start, stop
    @IBAction func startStopTimer(_ sender: UIButton) {
        // button toggle ( start / stop )
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            // start timer
            startStopBtn.setTitle("Stop", for: .normal)
            countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        } else {
            // stop timer
            startStopBtn.setTitle("Start", for: .normal)
            endTimer()
        }
    }
    
    @objc func updateTime() {
        timeLabel.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        let hours: Int = totalSeconds / 3600
        
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
    
    // reset
    @IBAction func resetTimer(_ sender: UIButton) {
        let timeStr = "00:05"
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        
        let time = formatter.date(from: timeStr)
        if let unwrappedTime = time {
            pickerView.setDate(unwrappedTime, animated: true)
        }
        
        timeLabel.text = "00:05:00"
    }
}
