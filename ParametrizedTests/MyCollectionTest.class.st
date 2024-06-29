Class {
	#name : 'MyCollectionTest',
	#superclass : 'TestCase',
	#category : 'ParametrizedTests',
	#package : 'ParametrizedTests'
}

{ #category : 'tests' }
MyCollectionTest >> testAdd [
	"Here we test that a Bag could contains a string, but we want 
	to test different combinations of collections and items"
	| aCollection |
	aCollection := Bag new.
	aCollection add: 'a'.
	self assert: (aCollection includes: 'a').
	self assert: aCollection size equals: 1
]
