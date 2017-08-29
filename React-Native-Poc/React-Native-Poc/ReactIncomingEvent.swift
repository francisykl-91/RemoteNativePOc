//
//  ReactIncomingEvent.swift
//  React-Native-Poc
//
//  Created by Francis Yeap on 8/29/17.
//  Copyright © 2017 Francis Yeap. All rights reserved.
//

import Foundation

@objc(LocalNotificator)
class LocalNotificator: NSObject {
    
    private static var delegate : ReactEventDelegate?
  
    func set(delegate: ReactEventDelegate) {
        LocalNotificator.delegate = delegate
    }
    
    @objc (test:)
    func test(test: String) {
        print("test")
    }
    
    @objc (addEvent:properties:)
     func addEvent(name: NSString, properties: NSDictionary) {
        print(name)
        print(properties)
        
        LocalNotificator.delegate?.eventReceived(eventName: name, properties: properties)
    }
    
}

