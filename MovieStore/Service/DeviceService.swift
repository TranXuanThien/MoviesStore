//
//  DeviceService.swift
//  Powdabox
//
//  Created by ThienTX on 01/02/17.
//  Copyright © 2016 ThienTX. All rights reserved.
//

import UIKit

class DeviceService {
    class func getCurrentAppVersion() -> String {
        let nsObject: AnyObject? = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as AnyObject?
        if let version = nsObject as? String {
            return version
        }else {
            return "beta"
        }
    }
    
    class func getSystemName() -> String {
        return UIDevice.current.systemName
    }
    
    class func getSytemVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    class func deviceUDID() -> String {
        return UIDevice.current.identifierForVendor!.uuidString
    }
}
