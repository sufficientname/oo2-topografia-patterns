Class {
	#name : #WaterTopography,
	#superclass : #LeafTopography,
	#category : #'TP3-3-Topografia'
}

{ #category : #initialization }
WaterTopography >> initialize [
	super initialize.
	landRatio := 0.
	waterRatio := 1
]

{ #category : #testing }
WaterTopography >> isEqualTo: aTopography [
	^ aTopography isWaterTopography 
]

{ #category : #testing }
WaterTopography >> isWaterTopography [
	^ true
]
