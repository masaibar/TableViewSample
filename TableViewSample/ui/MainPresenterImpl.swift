//
// Created by Ryo Nishiha on 2019-06-29.
// Copyright (c) 2019 masaibar. All rights reserved.
//

import Foundation

class MainPresenterImpl: MainPresenter {

    var view: MainView

    init(view: MainView) {
        self.view = view
    }

    func getData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.view.setupContent()
        }
    }
}