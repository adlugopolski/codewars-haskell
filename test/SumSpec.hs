module SumSpec where

import qualified Sum
import Test.QuickCheck
import Test.Hspec

spec = do
  describe "Sum.sum [1..10]" $ do
    let xs = [1..10]
    let total = sum xs
    it ("should be " ++ show total) $ do
      Sum.sum xs `shouldBe` total
  describe "Sum.sum []" $ do
    it "should be 0" $ do
      Sum.sum [] `shouldBe` 0
