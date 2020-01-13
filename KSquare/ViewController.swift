//
//  ViewController.swift
//  KSquare
//
//  Created by 나미콘 on 2020/01/10.
//  Copyright © 2020 나미콘. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var player: AVAudioPlayer!
    var timer: Timer!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button UI 초기화
        button1.backgroundColor = .clear
        button1.layer.cornerRadius = button1.frame.height / 2
        button1.layer.borderWidth = 3
        button1.layer.borderColor = UIColor.gray.cgColor
        
        button2.backgroundColor = .clear
        button2.layer.cornerRadius = button1.frame.height / 2
        button2.layer.borderWidth = 3
        button2.layer.borderColor = UIColor.gray.cgColor
        
        button3.backgroundColor = .clear
        button3.layer.cornerRadius = button1.frame.height / 2
        button3.layer.borderWidth = 3
        button3.layer.borderColor = UIColor.gray.cgColor
        
        button4.backgroundColor = .clear
        button4.layer.cornerRadius = button1.frame.height / 2
        button4.layer.borderWidth = 3
        button4.layer.borderColor = UIColor.gray.cgColor
        
        button5.backgroundColor = .clear
        button5.layer.cornerRadius = button1.frame.height / 2
        button5.layer.borderWidth = 3
        button5.layer.borderColor = UIColor.gray.cgColor
        
        button6.backgroundColor = .clear
        button6.layer.cornerRadius = button1.frame.height / 2
        button6.layer.borderWidth = 3
        button6.layer.borderColor = UIColor.gray.cgColor
        
        
    }

    @IBAction func button1(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p1") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("플레이어 초기화 실패")
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button1.layer.borderColor = UIColor.blue.cgColor
            self.player?.play()
        } else {
            button1.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p2") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button2.layer.borderColor = UIColor.yellow.cgColor
            self.player?.play()
        } else {
            button2.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    @IBAction func button3(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p3") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button3.layer.borderColor = UIColor.red.cgColor
            self.player?.play()
        } else {
            button3.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    @IBAction func button4(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p4") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button4.layer.borderColor = UIColor.green.cgColor
            self.player?.play()
        } else {
            button4.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    @IBAction func button5(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p5") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button5.layer.borderColor = UIColor.purple.cgColor
            self.player?.play()
        } else {
            button5.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    @IBAction func button6(_ sender: UIButton) {
        guard let soundAsset: NSDataAsset = NSDataAsset(name: "p6") else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("코드 : \(error.code), 메세지 : \(error.localizedDescription)")
        }
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player.numberOfLoops = -1
            button6.layer.borderColor = UIColor.cyan.cgColor
            self.player?.play()
        } else {
            button6.layer.borderColor = UIColor.gray.cgColor
            self.player?.pause()
        }
    }
    
    
}

