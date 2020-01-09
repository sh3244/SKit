//
//  GeneralSpec.swift
//  SKitTests
//
//  Created by Sam on 1/9/20.
//  Copyright © 2020 shny. All rights reserved.
//

import Foundation
import Quick
import Nimble
import SKit

class GeneralSpec: QuickSpec {
    override func spec() {
        describe("logic is preserved in framework land") {
            it("one equals one") {
                expect(1).to(equal(1))
            }
        }

        describe("font stuff") {
            it("fonts available") {
                print(UIFont.fontNames(forFamilyName: ""))
            }
        }
    }
}
