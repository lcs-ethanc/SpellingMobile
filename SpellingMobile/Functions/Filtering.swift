//
//  Filtering.swift
//  SpellingMobile
//
//  Created by Pak Ching Ethan Chen on 2025-04-10.
//

import Foundation

//Define function
//inputs: original array (originalList)
//        what to filter on (desiredOutcome)
func filtering(
    originalList: [Result],
    on desiredOutcome: Outcome
) -> [Result] { //Expect return of Result format
    
    //Sequence
    
    // See if user selected 'All results'
    if desiredOutcome == .undetermined{
        return originalList
    }
    
    //New empty array
    var filteredHistory: [Result] = []
        
    //Iterate over each item, filter, then append
    for x in originalList {
        if x.outcome == desiredOutcome {
            filteredHistory.append(x)
        }
    }
    
    //Return filter array
    return filteredHistory
}
