//
//  ConsentDocument.swift
//  ResearchKitDemo
//
//  Created by Andrew Nguyen on 11/8/16.
//  Copyright © 2016 USF MSHI. All rights reserved.
//

import ResearchKit

public var ConsentDocument: ORKConsentDocument {

    let consentDocument = ORKConsentDocument()
    consentDocument.title = "klaraHealth Consent"
    
    let overviewSection: ORKConsentSection = ORKConsentSection(type: .overview)
    overviewSection.summary = "klaraHealth Consent"
    overviewSection.content = "Thank you for downloading our app..."
    
    let dataSection: ORKConsentSection = ORKConsentSection(type: .dataGathering)
    dataSection.summary = "How we gather your data"
    dataSection.content = "What do we actually do with your data??"
    
    consentDocument.sections = [
            overviewSection,
            dataSection
    ]
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    return consentDocument
}
