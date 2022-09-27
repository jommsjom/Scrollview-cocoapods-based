//
//  ViewController.swift
//  scrollviewprogram
//
//  Created by Jomms on 27/09/22.
//

import UIKit
import ScrollView

class ViewController: UIViewController {
    
var scrollView:ScrollView!
       
       
       override func viewDidLoad() {
           super.viewDidLoad()

           configSubviews()
       }

       

   }

   extension ViewController {
       
       private func configSubviews(){
           
           let scrollFrame = CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height)
           let subviewsCount = 3

           scrollView = ScrollView(frame:scrollFrame , contentSize: CGSize(width: scrollFrame.width * CGFloat(subviewsCount), height: scrollFrame.height))
           
           view.addSubview(scrollView)
           
           scrollView.scrollToPage = { page in
               let desc = "default horizontal scroll to page:\(page.x)"
               print(desc)
           }
           
           
           for i in 0..<subviewsCount {
               
               let subVC = ViewController2()
               
               addChild(subVC)
               scrollView.addChildView(subVC.view, index: i)
           }
       }
    
}
