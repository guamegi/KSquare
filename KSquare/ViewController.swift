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
    
    @IBOutlet weak var line1: UIView!
    @IBOutlet weak var line2: UIView!
    @IBOutlet weak var line3: UIView!
    @IBOutlet weak var line4: UIView!
    @IBOutlet weak var line5: UIView!
    @IBOutlet weak var line6: UIView!
    
    @IBOutlet weak var SubTitle1: UILabel!
    @IBOutlet weak var SubTitle2: UILabel!
    @IBOutlet weak var SubTitle3: UILabel!
    @IBOutlet weak var SubTitle4: UILabel!
    @IBOutlet weak var SubTitle5: UILabel!
    @IBOutlet weak var SubTitle6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button UI 초기화
        button1.backgroundColor = .clear
        button1.layer.cornerRadius = button1.frame.height / 2
        button1.layer.borderWidth = 3
        button1.layer.borderColor = UIColor.cyan.cgColor
        
        button2.backgroundColor = .clear
        button2.layer.cornerRadius = button1.frame.height / 2
        button2.layer.borderWidth = 3
        button2.layer.borderColor = UIColor.orange.cgColor
        
        button3.backgroundColor = .clear
        button3.layer.cornerRadius = button1.frame.height / 2
        button3.layer.borderWidth = 3
        button3.layer.borderColor = UIColor.magenta.cgColor
        
        button4.backgroundColor = .clear
        button4.layer.cornerRadius = button1.frame.height / 2
        button4.layer.borderWidth = 3
        button4.layer.borderColor = UIColor.green.cgColor
        
        button5.backgroundColor = .clear
        button5.layer.cornerRadius = button1.frame.height / 2
        button5.layer.borderWidth = 3
        button5.layer.borderColor = UIColor.blue.cgColor
        
        button6.backgroundColor = .clear
        button6.layer.cornerRadius = button1.frame.height / 2
        button6.layer.borderWidth = 3
        button6.layer.borderColor = UIColor.purple.cgColor
        
        // line
        line1.backgroundColor = UIColor.cyan
        line2.backgroundColor = UIColor.orange
        line3.backgroundColor = UIColor.magenta
        line4.backgroundColor = UIColor.green
        line5.backgroundColor = UIColor.blue
        line6.backgroundColor = UIColor.purple
        
        // SubTitle
        SubTitle1.textColor = UIColor.cyan
        SubTitle2.textColor = UIColor.orange
        SubTitle3.textColor = UIColor.magenta
        SubTitle4.textColor = UIColor.green
        SubTitle5.textColor = UIColor.blue
        SubTitle6.textColor = UIColor.purple

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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
            button6.isSelected = false
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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button1.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
            button6.isSelected = false
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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button1.isSelected = false
            button2.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
            button6.isSelected = false
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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = false
            button5.isSelected = false
            button6.isSelected = false
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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button6.isSelected = false
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
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
        // player 가 재생 중이면, 다른 버튼 isSelected를 false로 변경
        if self.player.isPlaying {
            button1.isSelected = false
            button2.isSelected = false
            button3.isSelected = false
            button4.isSelected = false
            button5.isSelected = false
        }
    }
    
    
}

