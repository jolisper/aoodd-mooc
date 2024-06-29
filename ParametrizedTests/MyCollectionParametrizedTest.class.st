Class {
	#name : 'MyCollectionParametrizedTest',
	#superclass : 'ParametrizedTestCase',
	#instVars : [
		'collectionClass',
		'item'
	],
	#category : 'ParametrizedTests',
	#package : 'ParametrizedTests'
}

{ #category : 'building suites' }
MyCollectionParametrizedTest class >> testParameters [ 

	^ ParametrizedTestMatrix new
	forSelector: #collectionClass addOptions: { Set . Bag . OrderedCollection };
	forSelector: #item addOptions: { 'a' . 1 . $c }
]

{ #category : 'accessing' }
MyCollectionParametrizedTest >> collectionClass: aClass [ 
	collectionClass := aClass
]

{ #category : 'accessing' }
MyCollectionParametrizedTest >> item: aString [ 
	item := aString
]

{ #category : 'tests' }
MyCollectionParametrizedTest >> testAdd [

	| aCollection |
	aCollection := collectionClass new.
	aCollection add: item.
	self assert: (aCollection includes: item).
	self assert: aCollection size equals: 1
]
