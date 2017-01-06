//
//  ViewController.swift
//  Created by Nick Natali on 12/23/2017.
//  Copyright © 2016 Make It Appen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
         //Create URL to pull from
        let url = URL(string: "https://google.com")!
         //Create URL Request
        let request = NSMutableURLRequest(url: url)
         //Execute Request
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                
                print(error)
                
            }else {
                
                if let unwrappedData = data {
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    
                    print(dataString)
                    
                }
            }
            
        }
        task.resume()
    }
    
        
//FOR FUTURE REFERENCE TO IMPLEMENT A DISPATCH QUEUE
//        let url = URL(string: "https://stackoverflow.com")!
//        
//        let request = NSMutableURLRequest(url: url)
//        
//        let task = URLSession.shared.dataTask(with: request as URLRequest) {
//            data, response, error in
//            
//            if error != nil {
//                print(error)
//            } else {
//                if let unwrappedData = data {
//                    
//                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
//                    
//                    print(dataString)
//                    
//                    DispatchQueue.main.sync(execute: {
//                        //Update Ui
//                    })
//                    
//                    
//                }
//            }
//            
//        }
//        
//        task.resume()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

