Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumberOfFaces [ 
	^ self new
		faces: aNumberOfFaces;
		yourself 
]

{ #category : 'as yet unclassified' }
Die >> faces [

	^ faces 
]

{ #category : 'as yet unclassified' }
Die >> faces: aNumberOfFaces [
	faces := aNumberOfFaces 
]

{ #category : 'initialization' }
Die >> initialize [ 
	faces := 6
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ (1 to: self faces) atRandom
]
