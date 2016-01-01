//
//  FocusView.swift
//  CustomViewFocus
//
//  Created by Dulio Denis on 12/31/15.
//  Copyright © 2015 Dulio Denis. All rights reserved.
//
//  ==================================================
//  A UIView derived class that overrides canBecomeFocused
//  and responds to didUpdateFocusInContext in order to
//  smoothly increase and decrease the size based on focus

import UIKit

class FocusView: UIView {

    override func canBecomeFocused() -> Bool {
        return true
    }

    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        if context.previouslyFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
        }
        
        if context.nextFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
            })
        }
    }
}
