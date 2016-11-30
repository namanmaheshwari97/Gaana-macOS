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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        webviewInitLoad()

    }

    func webviewInitLoad(){
        webView.preferences.allowsAirPlayForMediaPlayback = true
        webView.preferences.arePlugInsEnabled = true
        webView.mainFrame.load(URLRequest(url: URL(string: "https://www.gaana.com/")!))
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

