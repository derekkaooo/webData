//
//  webViewController.swift
//  webData
//
//  Created by Derek on 2018/8/8.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit
import WebKit
class webViewController: UIViewController, WKNavigationDelegate {
    //用來接收第一頁的網址
    var asia:String = ""
    var ocean:String = ""
    var europe:String = ""
    var africa:String = ""
    var middleEast:String = ""
    var northAM:String = ""
    var southAM:String = ""
    
    @IBOutlet weak var myWeb: WKWebView!
    
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    //秀網頁內容
    override func viewDidLoad() {
        super.viewDidLoad()
        myWeb.navigationDelegate = self
        if let url = URL(string: asia){
            let request = URLRequest(url: url)
            myWeb.load(request)
        }else if let url = URL(string: ocean){
            let request = URLRequest(url: url)
            myWeb.load(request)
        }else if let url = URL(string: europe){
            let request = URLRequest(url: url)
            myWeb.load(request)
        }else if let url = URL(string: middleEast){
            let request = URLRequest(url: url)
            myWeb.load(request)
        }else if let url = URL(string: northAM){
            let request = URLRequest(url: url)
        }else if let url = URL(string: southAM){
            let request = URLRequest(url: url)
        }else if let url = URL(string: africa){
            let request = URLRequest(url: url)
        }
        
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        myIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myIndicator.stopAnimating()
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
