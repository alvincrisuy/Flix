//
//  CollectionViewDelegateProxy.swift
//  Flix
//
//  Created by DianQK on 22/10/2017.
//  Copyright © 2017 DianQK. All rights reserved.
//

import UIKit

class CollectionViewDelegateProxy: NSObject, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewLayout = collectionViewLayout as! UICollectionViewFlowLayout
        return sizeForItem?(collectionView, collectionViewLayout, indexPath) ?? collectionViewLayout.itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        let collectionViewLayout = collectionViewLayout as! UICollectionViewFlowLayout
        return referenceSizeForFooterInSection?(collectionView, collectionViewLayout, section) ?? collectionViewLayout.footerReferenceSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let collectionViewLayout = collectionViewLayout as! UICollectionViewFlowLayout
        return referenceSizeForHeaderInSection?(collectionView, collectionViewLayout, section) ?? collectionViewLayout.headerReferenceSize
    }
    
    var sizeForItem: ((_ collectionView: UICollectionView, _ collectionViewLayout: UICollectionViewLayout, _ indexPath: IndexPath) -> CGSize?)?
    var referenceSizeForFooterInSection: ((_ collectionView: UICollectionView, _ collectionViewLayout: UICollectionViewLayout, _ section: Int) -> CGSize?)?
    var referenceSizeForHeaderInSection: ((_ collectionView: UICollectionView, _ collectionViewLayout: UICollectionViewLayout, _ section: Int) -> CGSize?)?
    
}
