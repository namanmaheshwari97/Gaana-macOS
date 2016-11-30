//
//  ViewController.swift
//  Gaana
//
//  Created by Naman Maheshwari on 19/11/16.
//  Copyright © 2016 Naman Maheshwari. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate, WKNavigationDelegate{

    @IBOutlet var webView: WebView!
    /*
    override func loadView() {
     
        
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
 */
 
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.preferences.arePlugInsEnabled = true
        webView.mainFrame.load(URLRequest(url: URL(string: "https://www.gaana.com/")!))
     /*
        let myURL = URL(string: "https://www.gaana.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
      */
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

