//
//  ViewController.swift
//  jsonParsing
//
//  Created by Macbook on 26/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idOutlet: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
    
   let json1 = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: json1) else {
            return
        }
        
     var dataTask =  URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            guard let data = data else {
                return
            }
            
            print("d")
            
            let dataString = String(data: data, encoding: .utf8)
            
        
        
        do {
            
            let course = try JSONDecoder().decode(Course.self, from: data)
            
            print(course)
            
            
            
            
        }catch {
            print(error)
        }
            
            
        }
        
        
        dataTask.resume()
    
    
    
       


}
    
    
    
}
