//
//  WebViewController.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 07.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class  WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var url = URL(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlreq = URLRequest(url: url!)
        webView.loadRequest(urlreq)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
