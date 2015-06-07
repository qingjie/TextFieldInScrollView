//
//  ViewController.swift
//  TextFieldInScrollView
//
//  Created by qingjiezhao on 6/7/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var txtFieldUp: UITextField!
    @IBOutlet weak var txtFieldDown: UITextField!
   
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if (textField == txtFieldDown){
            scrollView.setContentOffset(CGPointMake(0, 250), animated: true)
            println("down")
        }else if (textField == txtFieldUp){
            println("up")
        }
        
        else{
            println("other")
        }
        
        
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        scrollView.setContentOffset(CGPointMake(0, 0), animated: true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == txtFieldDown){
            txtFieldDown.resignFirstResponder()
        }else if (textField == txtFieldUp){
            txtFieldUp.resignFirstResponder()
        }
       
        return true
    }
    
    

}

