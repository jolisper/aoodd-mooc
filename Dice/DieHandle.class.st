Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'adding' }
DieHandle >> addDie: aDie [
	dice isNil ifTrue: [ dice := OrderedCollection new ].
	dice add: aDie 
]

{ #category : 'as yet unclassified' }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : 'printing' }
DieHandle >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ['.
	dice do: [ :die | aStream print: die; nextPutAll: ', ' ].
	aStream nextPutAll: ']'
]
