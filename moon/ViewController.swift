//
//  ViewController.swift
//  moon
//
//  Created by TwTStudio on 2019/10/14.
//  Copyright © 2019 TwTStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var
    
    
    
    
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button1 = UIButton()
    let tmp = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let tmp = UIImageView()
        tmp.frame = CGRect(x: 120, y: 140, width: 200, height: 200)
        tmp.image = #imageLiteral(resourceName: "6ABAE2A0-48FE-42AC-A9D5-39786E06E093")
        view.addSubview(tmp)
//        let button1 = UIButton()
        button1.frame = CGRect(x: 80, y: 550, width: 50, height: 50)
        button1.setBackgroundImage(UIImage(systemName: "arrow.up"), for: .normal)
        button1.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button1)
        //let button2 = UIButton()
        button2.frame = CGRect(x: 30, y: 600, width: 50, height: 50)
        button2.setBackgroundImage(UIImage(systemName: "arrow.left"), for: .normal)
        button2.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button2)
       // let button3 = UIButton()
        button3.frame = CGRect(x: 80, y: 650, width: 50, height: 50)
        button3.setBackgroundImage(UIImage(systemName: "arrow.down"), for: .normal)
        button3.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button3)
        //let button4 = UIButton()
        button4.frame = CGRect(x: 130, y: 600, width: 50, height: 50)
        button4.setBackgroundImage(UIImage(systemName: "arrow.right"), for: .normal)
        button4.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button4)
        //let button5 =  UIButton()
        button5.frame = CGRect(x: 80, y: 600, width: 50, height: 50)
        button5.setBackgroundImage(UIImage(systemName: "dot.square"), for: .normal)
        button5.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button5)
        //"1" for up,"2" for left,"3" for d/Users/yangyuzhang/Downloads/moon/moon/ViewController.swiftown,"4" for right,"5" for "return"
//        let button6 = UIButton()
        button6.frame = CGRect(x: 230, y: 550, width: 75, height: 75)
        button6.setBackgroundImage(UIImage(systemName: "arrow.clockwise"), for: .normal)
        button6.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button6)
        //let button7 = UIButton()
        button7.frame = CGRect(x: 305, y: 550, width: 75, height: 75)
        button7.setBackgroundImage(UIImage(systemName: "arrow.counterclockwise"), for: .normal)
        button7.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button7)
        //let button8 = UIButton()
        button8.frame = CGRect(x: 230, y: 625, width: 75, height: 75)
        button8.setBackgroundImage(UIImage(systemName: "plus.magnifyingglass"), for: .normal)
        button8.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button8)
        //let button9 = UIButton()
        button9.frame = CGRect(x: 305, y: 625, width: 75, height: 75)
        button9.setBackgroundImage(UIImage(systemName: "minus.magnifyingglass"), for: .normal)
        button9.addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        view.addSubview(button9)
        //"6" for clockwise,"7" for counterclockwise,"8" for plus,"9" for minus
        
        
    }
    @objc func method(item: UIButton){
        
        
        UIView.animate(withDuration: 0.5){
            switch item {
            case self.button1:
                self.tmp.transform = self.tmp.transform.translatedBy(x: +0, y: -10)
            case self.button2:
                self.tmp.transform = self.tmp.transform.translatedBy(x: -10, y: +0)
            case self.button3:
                self.tmp.transform = self.tmp.transform.translatedBy(x: +0, y: +10)
            case self.button4:
                self.tmp.transform = self.tmp.transform.translatedBy(x: +10, y: +0)
            case self.button5:
                self.tmp.transform = CGAffineTransform.identity
            case self.button6:
                self.tmp.transform = self.tmp.transform.rotated(by: CGFloat.pi/2)
            case self.button7:
                self.tmp.transform = self.tmp.transform.rotated(by: -CGFloat.pi/2)
            case self.button8:
                self.tmp.transform = self.tmp.transform.scaledBy(x: 1.25, y: 1.25)
            case self.button9:
                self.tmp.transform = self.tmp.transform.scaledBy(x: 0.8, y: 0.8)
                
            default: print("NOTHING")
            }
        }
    }
}
