//
//  ViewController.swift
//
//  Created by Patrick Coxall on 2016-10-05.
//  This program shows basic UIKit elements working in an iPad Playground
//  Code can also be pasted right into Xcode Single view app and will compile
//

import UIKit

// comment out line below and one at bottom, to make work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var myLabel : UILabel!
    var myButton : UIButton!
    var myTextField : UITextField!
    
    override func viewDidLoad() {
        // UI
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        myButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        myButton.setTitle("Click me!", for: UIControlState.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        myButton.addTarget(self, action: #selector(buttonPlessed), for: UIControlEvents.touchUpInside)
        view.addSubview(myButton)
        
        myLabel = UILabel(frame: CGRect(x: 200, y: 100, width: 250, height: 50))
        view.addSubview(myLabel)
        
        myTextField = UITextField(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        myTextField.borderStyle = UITextBorderStyle.roundedRect
        myTextField.placeholder = "Type here."
        view.addSubview(myTextField)
        
    }
    
    func buttonPlessed() {
        let whatYouTyped = myTextField.text
        myLabel.text = "You typed \(whatYouTyped!)."
        myTextField.text = nil
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()



