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
    consentDocument.title = "MyProject Consent"
    
    let overviewSection: ORKConsentSection = ORKConsentSection(type: .overview)
    overviewSection.summary = "MyProject project summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis."
    overviewSection.content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae erat vitae leo aliquam lobortis sed et felis. Sed pharetra odio elementum magna molestie, eu dapibus nulla pellentesque. In non nulla volutpat, luctus ligula eu, scelerisque velit. Integer et tincidunt elit. Curabitur in lacus pretium, tristique arcu ac, interdum sapien. Praesent odio magna, viverra at maximus id, posuere ut urna. Vivamus id quam elit. Aliquam volutpat magna iaculis justo condimentum, ullamcorper molestie libero ultrices. Suspendisse vitae libero a justo ullamcorper tristique vitae id est. Quisque sed dictum elit. Nam id eros ultrices sapien interdum pharetra vel a diam. Morbi eget lobortis nibh. Nullam eget ex in mi bibendum aliquet."
    
    let dataSection: ORKConsentSection = ORKConsentSection(type: .dataGathering)
    dataSection.summary = "Data gathering summary: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis."
    dataSection.content = "Maecenas auctor elit volutpat, ultricies lacus non, cursus massa. Etiam ac rhoncus purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer justo mi, sollicitudin ut fermentum at, sollicitudin eleifend leo. Integer nulla dolor, aliquet id lectus id, lobortis fermentum neque. Sed semper dolor sed quam tincidunt, nec gravida turpis bibendum. Nam ultricies fringilla arcu sed commodo. Proin dignissim lorem non finibus gravida. Cras ante ex, blandit vitae posuere quis, finibus sit amet tortor. Morbi in ligula at nunc dapibus mollis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum aliquet eros in turpis feugiat, nec tempor erat vehicula. Proin vel felis massa. Cras ultricies rutrum auctor. Nulla eu sollicitudin velit, et mattis nisl."
    
    consentDocument.sections = [
            overviewSection,
            dataSection
    ]
    
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    return consentDocument
}
