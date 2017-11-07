//
//  ViewController.swift
//  Trending repositories
//
//  Created by Omri Zion on 03/11/2017.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        jsonDownload()
        
        //Backgroung image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let urlString = "https://api.github.com/search/repositories"

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        // Downloading the json object
    func jsonDownload() {
        
        var headers = Alamofire.SessionManager.defaultHTTPHeaders
        headers["Accept"] = "application/json"
        
        let request = Alamofire.request("https://api.github.com/search/repositories?q=created%3A%3E2017-10-06&sort=stars&order=desc", headers: headers) .responseJSON { response in debugPrint(response) }
        

    }

}

