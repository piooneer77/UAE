//
//  TouchID.swift
//  UAE
//
//  Created by Apple on 2/18/18.
//  Copyright © 2018 syntaxerror. All rights reserved.
//

import LocalAuthentication

class TouchIDAuthentication {
    
    private static var authenticationErrorMessege : String?
    
    static func AuthenticateWithTouchID (){
        let authenticationContext = LAContext()
        let authenticationReason = "Please Use Touch ID To Login To The"
        var authenticationError: NSError?
        
        if authenticationContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authenticationError){
            authenticationContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: authenticationReason, reply: { (success, error) in
                if success {
                    print("Success")
                }
            })
        } else {
            print(authenticationErrorMessege ?? "Does Not Have TouchID")
        }
    }
    
    private static func touchIDFailedAuthentication(error : NSError){
        switch(error) {
        case LAError.authenticationFailed:
            authenticationErrorMessege = "There was a problem verifying your identity."
        case LAError.userCancel:
            authenticationErrorMessege = "Authentication was canceled by user."
        // Fallback button was pressed and an extra login step should be implemented for iOS 8 users.
        // By the other hand, iOS 9+ users will use the pasccode verification implemented by the own system.
        case LAError.userFallback:
            authenticationErrorMessege = "The user tapped the fallback button (Fuu!)"
        case LAError.systemCancel:
            authenticationErrorMessege = "Authentication was canceled by system."
        case LAError.passcodeNotSet:
            authenticationErrorMessege = "Passcode is not set on the device."
        case LAError.biometryNotAvailable:
            authenticationErrorMessege = "Touch ID is not available on the device."
        case LAError.biometryNotEnrolled:
            authenticationErrorMessege = "Touch ID has no enrolled fingers."
        // iOS 9+ functions
        case LAError.biometryLockout:
            authenticationErrorMessege = "There were too many failed Touch ID attempts and Touch ID is now locked."
        case LAError.appCancel:
            authenticationErrorMessege = "Authentication was canceled by application."
        case LAError.invalidContext:
            authenticationErrorMessege = "LAContext passed to this call has been previously invalidated."
        // MARK: IMPORTANT: There are more error states, take a look into the LAError struct
        default:
            authenticationErrorMessege = "Touch ID may not be configured"
            break
        }
    }
    
}
