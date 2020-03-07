//
//  ViewController.swift
//  PlistIOsProject
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlistdata()
        // Do any additional setup after loading the view.
    }

    func readPlistdata(){
      if let path =  Bundle.main.path(forResource: "Property List", ofType: "plist")
      {
        print(path)
        if let dictionary = NSMutableDictionary(contentsOfFile: path){
            print(dictionary)
            if let Countries = dictionary["Countries"] as? [String]{
                for v in Countries{
                    print(v)
                }
            }
            if let u  = dictionary["Users"] as? [[String:String]]{
                var flag = false
                for Users in u{
                    if Users["username"] == "komal" && Users["password"] == "123"{
                        flag = true
                    }
                }
                if flag == true{
                     print("valid user")
                }
                else{
                    print("invalid user")
                }
            }
        }
        }
    }
}

