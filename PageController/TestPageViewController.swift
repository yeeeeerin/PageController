//
//  TestPageViewController.swift
//  PageViewControllerDemo
//
//  Created by 이예린 on 2018. 2. 2..
//  Copyright © 2018년 Kevin L. Owens. All rights reserved.
//

import UIKit

class TestPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    ///페이지로 표시할 스토리 보드상 뷰의 Identifier
    let viewControllerIdentifier = "CollectionViewController"
    
    ///페이지의 개수
    let pageCount = 4
    
    
    
    /// 첫번째 페이지 지정하고 페이지 컨트롤? 설정
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Install this class as the data source
        dataSource = self
        
        //첫번째 페이지 지정
        let tvc = storyboard?.instantiateViewController(withIdentifier: viewControllerIdentifier) as! testCollectionViewController
        tvc.section = 0
        setViewControllers([tvc], direction: .forward, animated: true, completion: nil)
        
        //페이지의 점점점 나타내고 색을 지정
        let pageControl = UIPageControl.appearance(whenContainedInInstancesOf: [TestPageViewController.self])
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.currentPageIndicatorTintColor = .black
    }
    
    

    func newTableViewController(forSection section: Int) -> testCollectionViewController {
        let newTVC = storyboard?.instantiateViewController(withIdentifier: viewControllerIdentifier) as! testCollectionViewController
        //newTVC.model = model
        newTVC.section = section
        return newTVC
    }
    
    
    //현재 보여줄 페이지 반환
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        if let viewControllers = viewControllers, viewControllers.count > 0 {
            return (viewControllers[0] as! testCollectionViewController).section!
        }
        return 0
    }
    
    
    // MARK: - Page View Controller Data Source
    
    
    /// 다음으로 넘어갈 때 처리
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let tvc = viewController as! testCollectionViewController
        return tvc.section! < pageCount - 1 ? newTableViewController(forSection: tvc.section! + 1) : nil
    }
 
    
    /// 이전으로 돌아갈때 처리
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let tvc = viewController as! testCollectionViewController
        return tvc.section! > 0 ? newTableViewController(forSection: tvc.section! - 1) : nil
    }
    
    
    //페이지 수 리턴
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageCount
    }
}

