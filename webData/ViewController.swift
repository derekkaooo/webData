//
//  ViewController.swift
//  webData
//
//  Created by Derek on 2018/8/8.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //以identifier判斷，並將第二頁屬性設為網址
        if segue.identifier == "asia1"{
            let svc = segue.destination as? webViewController
            svc?.asia = "https://www.accuweather.com/en/asia-weather"
        }else if segue.identifier == "ocean"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/oceania-weather"
        }else if segue.identifier == "europe"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/europe-weather"
        }else if segue.identifier == "africa"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/africa-weather"
        }else if segue.identifier == "northAM"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/north-america-weather"
        }else if segue.identifier == "southAM"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/south-america-weather"
        }else if segue.identifier == "middleEast"{
            let svc = segue.destination as? webViewController
            svc?.ocean = "https://www.accuweather.com/en/middle-east-weather"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.shadowImage = image
        // Do any additional setup after loading the view, typically from a nib.
    }


}

