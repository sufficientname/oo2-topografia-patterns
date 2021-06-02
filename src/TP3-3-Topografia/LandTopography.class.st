Class {
	#name : #LandTopography,
	#superclass : #LeafTopography,
	#category : #'TP3-3-Topografia'
}

{ #category : #initialization }
LandTopography >> initialize [
	super initialize.
	landRatio := 1.
	waterRatio := 0
]

{ #category : #testing }
LandTopography >> isEqualTo: aTopography [
	^ aTopography isLandTopography 
]

{ #category : #testing }
LandTopography >> isLandTopography [
	^ true
]
