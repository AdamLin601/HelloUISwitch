//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by 林奕德 on 2018/3/19.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func makeChange(_ sender: UISwitch) {
        //use isOn to check the status of the switch
        if sender.isOn == true{
            print("It's on")
            view.backgroundColor = .white // == UIcolor.white
        }else{
            print("It's off")
            view.backgroundColor  = .black 
        }
    }
    @objc func codeSwitchchange(_ sender:UISwitch){
        if sender.isOn == true{
            print("It's on")
            view.backgroundColor = .white // == UIcolor.white
        }else{
            print("It's off")
            view.backgroundColor  = .black
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.isOn = false
        makeChange(mySwitch)
        //frame(框架) mid 中間
        // generate(生成) a switch using code
        let codeSwitch = UISwitch(frame:CGRect(x: view.frame.midX-51/2, y: view.frame.maxY-100, width: 51, height: 31))
        view.addSubview(codeSwitch)
        codeSwitch.isOn = true
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchchange(_:)), for:.valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}














