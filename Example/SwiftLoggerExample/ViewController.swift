//
//  ViewController.swift
//  SwiftLoggerExample
//
//  Created by Siddhant Kumar on 28/09/23.
//

import UIKit
import SwiftLogger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Empty Log
        SwiftLogger.info("")
        // Log without context
        SwiftLogger.info("Nooo", shouldLogContext: false)
        // Log with context
        SwiftLogger.info("hello")
        
        // Warning Log
        SwiftLogger.warning("Hi")
        
        // Error Log
        SwiftLogger.error("Error")
        
        // Using Dependency Inversion
        Log.info("DI Log")
    }
}

