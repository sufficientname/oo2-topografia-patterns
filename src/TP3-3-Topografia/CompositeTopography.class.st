Class {
	#name : #CompositeTopography,
	#superclass : #Topography,
	#instVars : [
		'children'
	],
	#category : #'TP3-3-Topografia'
}

{ #category : #'instance creation' }
CompositeTopography class >> with: aTopography1 with: aTopography2 with: aTopography3 with: aTopography4 [
	^ self new
		addTopography: aTopography1;
		addTopography: aTopography2;
		addTopography: aTopography3;
		addTopography: aTopography4;
		yourself
]

{ #category : #private }
CompositeTopography >> addTopography: aTopography [
	children add: aTopography
]

{ #category : #accessing }
CompositeTopography >> getTopographyAt: aNumber [
	^ children at: aNumber
]

{ #category : #initialization }
CompositeTopography >> initialize [
	super initialize.
	children := OrderedCollection new
]

{ #category : #testing }
CompositeTopography >> isEqualTo: aTopography [
	aTopography isMixedTopography
		ifFalse: [ ^ false ].
	^ (1 to: children size)
		allSatisfy: [ :index | 
			(self getTopographyAt: index)
				isEqualTo: (aTopography getTopographyAt: index) ]
]

{ #category : #testing }
CompositeTopography >> isMixedTopography [
	^ true
]

{ #category : #accessing }
CompositeTopography >> landRatio [
	^ self
		ratioOf: (children sum: [ :aTopography | aTopography landRatio ])
]

{ #category : #private }
CompositeTopography >> ratioOf: aNumber [
	^ aNumber / children size
]

{ #category : #accessing }
CompositeTopography >> waterRatio [
	^ self
		ratioOf: (children sum: [ :aTopography | aTopography waterRatio ])
]
