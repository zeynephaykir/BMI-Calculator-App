//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zeynep HAYKIR on 2024-08-01.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
       
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snackies!", color: #colorLiteral(red: 0.5137, green: 0.8941, blue: 0.9882, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.6118, green: 0.9294, blue: 0.6235, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less snackies!", color: #colorLiteral(red: 0.8784, green: 0.2824, blue: 0.2627, alpha: 1))
        }
    }
    
}







