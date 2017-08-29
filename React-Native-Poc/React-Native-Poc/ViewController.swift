//
//  ViewController.swift
//  React-Native-Poc
//
//  Created by Francis Yeap on 8/29/17.
//  Copyright © 2017 Francis Yeap. All rights reserved.
//

import UIKit

protocol ReactEventDelegate {
    func eventReceived(eventName: NSString , properties: NSDictionary)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let reactView = RCTRootView(bridge: RCTBridge(delegate: self, launchOptions: nil),
                                    moduleName: "ReactPoc",
                                    initialProperties: ["serviceType": 2,
                                                        "name" : "ultraman"])!
        
        view.addSubview(reactView)
        
        reactView.frame = view.bounds
        
        setupReactMethods()
        
        let receiver = LocalNotificator()
        receiver.set(delegate: self)
    }
    
    
    
    func setupReactMethods() {
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: ReactEventDelegate {

    func eventReceived(eventName: NSString, properties: NSDictionary) {
        
        print ("DONE")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Seconds") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
//        self.present(nextVC, animated: true, completion: nil)
    }
}

extension ViewController: RCTBridgeDelegate {
    
        func sourceURL(for bridge: RCTBridge!) -> URL! {
            return URL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        }
    //
    //    func fallbackSourceURL(for bridge: RCTBridge!) -> URL! {
    //
    //    }
    //
    //    func extraModules(for bridge: RCTBridge!) -> [RCTBridgeModule]! {
    //
    //    }
    //
    //    func whitelistedModules(for bridge: RCTBridge!) -> [AnyClass]! {
    //
    //    }
    //
    //    func shouldBridgeUseCustomJSC(_ bridge: RCTBridge!) -> Bool {
    //
    //    }
    //
    //    func shouldBridgeUseCxxBridge(_ bridge: RCTBridge!) -> Bool {
    //
    //    }
    //
    //    func shouldBridgeLoadJavaScriptSynchronously(_ bridge: RCTBridge!) -> Bool {
    //
    //    }
    //
    //    func shouldBridgeInitializeNativeModulesSynchronously(_ bridge: RCTBridge!) -> Bool {
    //
    //    }
    //
    //    func loadSource(for bridge: RCTBridge!, with loadCallback: RCTSourceLoadBlock!) {
    //
    //    }
    //
    //    func loadSource(for bridge: RCTBridge!, onProgress: RCTSourceLoadProgressBlock!, onComplete loadCallback: RCTSourceLoadBlock!) {
    //        
    //    }
}
