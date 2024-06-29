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
