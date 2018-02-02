//
//  MainViewController.swift
//  PageViewControllerDemo
//
//  Copyright © 2017 Kevin L. Owens. All rights reserved.
//
//  PageViewControllerDemo is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  PageViewControllerDemo is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with PageViewControllerDemo.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit


/// The app's main view controller that encapsulates the segmented control used to switch contexts between the controller's two embedded container viwes.
class MainViewController: UIViewController {

  /// Embeds the paged table view controller used for paginated presentation of its sectioned data.
  @IBOutlet weak var pagedContainerView: UIView!


  /// Configures the visibility of the two container views in accordance with the initial segment control state.
  override func viewDidLoad() {
    super.viewDidLoad()

  }


}

