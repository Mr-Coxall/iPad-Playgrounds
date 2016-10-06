//
//  ViewController.swift
//
//  Created by Patrick Coxall on 2016-10-05.
//  This program shows basic UIKit elements working in an iPad Playground
//  Code calculates area and perimeter of a rectangle
//

import UIKit

// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var lengthLabel : UILabel!
    var widthLabel : UILabel!
    var lengthTextField : UITextField!
    var widthTextField : UITextField!
    var calculateButton : UIButton!
    var areaLabel : UILabel!
    var perimeterLabel : UILabel!
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 50))
        instructionLabel.text = "Calculate the area and perimeter of a rectangle"
        view.addSubview(instructionLabel)
        
        lengthLabel = UILabel(frame: CGRect(x: 100, y: 200, width: 500, height: 50))
        lengthLabel.text = "Enter length"
        view.addSubview(lengthLabel)
        
        widthLabel = UILabel(frame: CGRect(x: 100, y: 300, width: 500, height: 50))
        widthLabel.text = "Enter width"
        view.addSubview(widthLabel)
        
        lengthTextField = UITextField(frame: CGRect(x: 200, y: 200, width: 200, height: 50))
        lengthTextField.borderStyle = UITextBorderStyle.roundedRect
        lengthTextField.placeholder = "In cm"
        view.addSubview(lengthTextField)
        
        widthTextField = UITextField(frame: CGRect(x: 200, y: 300, width: 200, height: 50))
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "In cm"
        view.addSubview(widthTextField)
        
        calculateButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        areaLabel = UILabel(frame: CGRect(x: 100, y: 500, width: 500, height: 50))
        areaLabel.text = nil
        view.addSubview(areaLabel)
        
        perimeterLabel = UILabel(frame: CGRect(x: 100, y: 600, width: 500, height: 50))
        perimeterLabel.text = nil
        view.addSubview(perimeterLabel)
        
    }
    
    func calculateAreaAndPerimeter() {
        // calculate the area and perimeter
        
        let length : Float =  Float(lengthTextField.text!)!
        let width : Float = Float(widthTextField.text!)!
        
        let area = length * width
        let perimeter = 2 * (length + width)
        
        areaLabel.text = "The area is: \(area) cm^2."
        perimeterLabel.text = "The perimeter is: \(perimeter) cm."
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()



