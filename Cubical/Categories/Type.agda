{-# OPTIONS --cubical --no-import-sorts --safe #-}

module Cubical.Categories.Type where

open import Cubical.Foundations.Prelude
open import Cubical.Categories.Category

module _ ℓ where
  TYPE : Precategory (ℓ-suc ℓ) ℓ
  TYPE .ob = Type ℓ
  TYPE .Hom[_,_] A B = A → B
  TYPE .id A  = λ x → x
  TYPE ._◾_ f g = λ x → g (f x)
  TYPE .seq-λ f = refl
  TYPE .seq-ρ f = refl
  TYPE .seq-α f g h = refl
