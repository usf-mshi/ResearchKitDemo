//
//  ConsentTask.swift
//  ResearchKitDemo
//
//  Created by Andrew Nguyen on 11/8/16.
//  Copyright © 2016 USF MSHI. All rights reserved.
//

import ResearchKit

public var ConsentTask: ORKOrderedTask {
    
    var steps = [ORKStep]()

    let consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    

    let signature = consentDocument.signatures!.first as ORKConsentSignature!

    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, in: consentDocument)
    
    //text doesn't appear to display anywhere
    //reviewConsentStep.text = "Review Consent!"
    
    reviewConsentStep.reasonForConsent = "Reason for consenting: I consent to join study"
    steps += [reviewConsentStep]
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
