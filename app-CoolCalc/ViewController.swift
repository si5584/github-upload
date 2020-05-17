//
//  ViewController.swift
//  app-CoolCalc
//
//  Created by Simon Lovelock on 15/05/2020.
//  Copyright © 2020 Simon Lovelock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculationLbl: UILabel!
    @IBOutlet weak var resultLbl: ResultUILabel!
    
    var buttonsEnabled = true
    var calculationStringArray = [String]()
    var calculationString = ""
    var currentCalculationNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLbl.text = ""
        calculationLbl.text = ""
    }

    @IBAction func operatorBtnPressed(_ sender: UIButton) {
        let btnTag = sender.tag
        
        switch btnTag {
        case 16:
            resultLbl.text = "0"
            calculationLbl.text = ""
            calculationStringArray.removeAll()
            calculationString = ""
            currentCalculationNumber = ""
            
            if !buttonsEnabled {
                toggleButtons(enabledCurrently: buttonsEnabled)
            }
            
        case 11:
            updateDataForOperatorPressed(with: "+")
        case 12:
            updateDataForOperatorPressed(with: "-")
        case 13:
            updateDataForOperatorPressed(with: "x")
        case 14:
            updateDataForOperatorPressed(with: "/")
        case 15:
            updateDataForOperatorPressed(with: "%")
        case 10:
            toggleButtons(enabledCurrently: buttonsEnabled)
            calculationStringArray.append(currentCalculationNumber)
            performCalculation()
        default:
            return
        }
    }
    
    @IBAction func numberBtnPressed(_ sender: UIButton) {
        let btnTag = sender.tag
        
        switch btnTag {
        case 0...9:
            currentCalculationNumber += String(btnTag)
            calculationString += String(btnTag)
            calculationLbl.text = calculationString

        case -1:
            currentCalculationNumber += "00"
            calculationString += "00"
            calculationLbl.text = calculationString

        default:
            return
        }
    }
    
    func updateDataForOperatorPressed(with operatorPressed:String) {
        calculationStringArray.append(currentCalculationNumber)
        calculationStringArray.append(operatorPressed)
        calculationString += operatorPressed
        currentCalculationNumber = ""
        calculationLbl.text = calculationString
    }
    
    func performCalculation() {
        guard !(calculationStringArray[0].isEmpty) else {return }
        
        var currentResult = Double(calculationStringArray[0])
        
        for x in 0...calculationStringArray.count-1 {
            
            guard !(calculationStringArray.count == x+1) else {resultLbl.text = String(currentResult!); return }
            
            switch calculationStringArray[x] {
                case "+":
                    currentResult! += Double(calculationStringArray[x+1])!
                case "-":
                    currentResult! -= Double(calculationStringArray[x+1])!
                case "x":
                    currentResult! *= Double(calculationStringArray[x+1])!
                case "/":
                    currentResult! /= Double(calculationStringArray[x+1])!
                case "%":
                    currentResult! = Double(Int(currentResult!) % Int(calculationStringArray[x+1])!)
                default:
                    break
                
            }
        }
        
        resultLbl.text = String(currentResult!)
    }
    
    func toggleButtons(enabledCurrently: Bool) {
        
        for x in -1...15 {
            let button = view.viewWithTag(x) as? UIButton
            button?.isEnabled = !enabledCurrently
        }
        
        buttonsEnabled = !enabledCurrently
    }
    
    

}

/*
 Button Tags
 
 -1 =   00
 0  =   0
 1  =   1
 2  =   2
 3  =   3
 4  =   4
 5  =   5
 6  =   6
 7  =   7
 8  =   8
 9  =   9
 10 =   =
 11 =   +
 12 =   -
 13 =   x
 14 =   /
 15 =   %
 16 =   C
 */
