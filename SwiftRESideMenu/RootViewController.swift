//
//  RootViewController.swift
//  SwiftRESideMenu
//
//  Created by MakeHui on 8/19/15.
//  Copyright © 2015 MakeHui. All rights reserved.
//

import UIKit

class RootViewController: RESideMenu, RESideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func awakeFromNib() {
        
        self.menuPreferredStatusBarStyle = UIStatusBarStyle.LightContent
        self.contentViewShadowColor = UIColor.blackColor()
        self.contentViewShadowOffset = CGSizeMake(0, 0)
        self.contentViewShadowOpacity = 0.6
        self.contentViewShadowRadius = 12
        self.contentViewShadowEnabled = true
        
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController")
        self.leftMenuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("LeftMenuViewController")
        
        self.backgroundImage = UIImage(named: "Stars")
        
        self.delegate = self
        
    }
    
    // MARK: - RESideMenuDelegate
    
    func sideMenu(sideMenu: RESideMenu!, didRecognizePanGesture recognizer: UIPanGestureRecognizer!) {
        
        print("didRecognizePanGesture", appendNewline: true)
    }
    
    func sideMenu(sideMenu: RESideMenu!, willShowMenuViewController menuViewController: UIViewController!) {
        
        print("willShowMenuViewController")
    }
    
    func sideMenu(sideMenu: RESideMenu!, didShowMenuViewController menuViewController: UIViewController!) {
        
        print("didShowMenuViewController")
    }
    
    func sideMenu(sideMenu: RESideMenu!, willHideMenuViewController menuViewController: UIViewController!) {
        
        print("willHideMenuViewController")
    }
    
    func sideMenu(sideMenu: RESideMenu!, didHideMenuViewController menuViewController: UIViewController!) {
        
        print("didHideMenuViewController")
    }
}

