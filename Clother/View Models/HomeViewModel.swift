//
//  HomeViewModel.swift
//  Clother
//
//  Created by Abdulaziz Albahar on 4/4/24.
//

import SwiftUI // We import this here because we want to use the special NavigationPath it offers.


//TODO: make the necessary additions so that the view model properties can trigger view updates. HINT: think about what protocol and property wrapper to use.
class HomeViewModel {
    
    // Indicates whether clothes or outfits are being displayed on the home screen.
    var activeHomeScreen: HomeScreen
    
    // Is nil if no particular clothing / outfit is being viewed. Has a value if a user is looking at a particular item.
    var clothingOnDisplay: ClothingItem?
    var outfitOnDisplay: OutfitItem?
    
    /* 
     Represents a list of consecutively visited screens in our app. Order matters as the end of the path represents the screen currently viewed. An empty path implies that the user is at the home screen - the root view.
     The elements appended to this path will be of type 'Screen', an enum.
    */
    var navPath: NavigationPath
    
    init() {
        self.activeHomeScreen = .clothes
        clothingOnDisplay = nil
        outfitOnDisplay = nil
        navPath = NavigationPath()
    }
    
    // TODO: Return to the screen visited prior to the current one. Do so by popping the end of the navigation path. Handle edge cases, if any.
    func navigateBackwards() {
        
    }
    
    // TODO: Jumps to the specified screen, appending the enum value to the end of our navigation path. Handle edge cases, if any.
    func navigateTo(screen: Screen) {
        
    }
    
    // TODO: Returns to the home screen. HINT: Remember that the home screen is presented only when the navigation path is empty
    func returnToHome() {
    
    }
    

}

enum HomeScreen {
    case clothes, outfits
}

enum Screen: Codable {
    case home, uploadClothes, outfitForm, randomizedOutfitForm, clothingForm, confirmRandomizedOutfit, detailedOutfit, detailedClothing
}
