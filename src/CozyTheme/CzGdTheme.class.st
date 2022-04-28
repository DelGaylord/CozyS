Class {
	#name : #CzGdTheme,
	#superclass : #PharoLightTheme,
	#instVars : [
		'colorDictionary'
	],
	#category : #'CozyTheme-Colored'
}

{ #category : #'core definition' }
CzGdTheme >> backgroundColor [
	"Color for the text background in main editors."
	
	^ colorDictionary at: #backgroundColor
]

{ #category : #'core definition' }
CzGdTheme >> backgroundColorDefinition [
	"Color for the text background in main editors.
	fffde7 is white with a little of yellow but really little"

	^ (Color fromString: 'fffde7') alphaMixed: 0.25 with: Color white
]

{ #category : #'core definition' }
CzGdTheme >> baseColorDefinition [
	"Color for the text background in main editors."

	^ self class baseColor
]

{ #category : #'core definition' }
CzGdTheme >> borderColor [
	^ colorDictionary at: #borderColor
]

{ #category : #'core definition' }
CzGdTheme >> borderColorDefinition [

	^ self class darkBaseColor adjustBrightness: -0.04
]

{ #category : #'core definition' }
CzGdTheme >> configureMorphTreeMorph: aMorph [
 	aMorph preferedPaneColor: self textColor.
 	aMorph 
 		rowColorForEven:  Color pink
 		odd: Color pink.
]

{ #category : #'core definition' }
CzGdTheme >> configureWindowBorderFor: aWindow [
	"this is to handle correctly the window border."
	| aStyle |
	aStyle := SimpleBorder new 
					color: self windowBorderColorDefinition;
					width: 1.
	aWindow borderStyle: aStyle
]

{ #category : #'core definition' }
CzGdTheme >> initialize [
	super initialize.
	colorDictionary := Dictionary new.
	self initializeColors.
	settings menuColor: self baseColorDefinition.
]

{ #category : #'core definition' }
CzGdTheme >> initializeColors [
	colorDictionary
		at: #windowColor
		put: self windowColorDefinition.

	colorDictionary
		at: #backgroundColor
		put: self backgroundColorDefinition.
	colorDictionary at: #borderColor put: self borderColorDefinition.
	colorDictionary
		at: #scrollbarColor
		put: self scrollbarColorDefinition.
	colorDictionary at: #textColor put: self textColorDefinition.
	colorDictionary at: #listTextColor put: self listTextColorDefinition.
	colorDictionary at: #menuColor put: self menuColorDefinition.
	colorDictionary
		at: #secondarySelectionColor
		put: self secondarySelectionColorDefinition.
	colorDictionary
		at: #selectionTextColor
		put: self selectionTextColorDefinition.
	colorDictionary
		at: #selectionColor
		put: self selectionColorDefinition.
	colorDictionary
		at: #unfocusedSelectionColor
		put: self selectionTextColorDefinition.
]

{ #category : #'core definition' }
CzGdTheme >> listTextColor [
	"Answer the list text color to use."

	^ colorDictionary at: #listTextColor
]

{ #category : #'core definition' }
CzGdTheme >> listTextColorDefinition [
	"Answer the list text color to use."

	^ self textColorDefinition
]

{ #category : #'core definition' }
CzGdTheme >> menuColor [
	"For Calypso menu but apparently this does not work for the world menu."

	^ colorDictionary at: #menuColor
]

{ #category : #'core definition' }
CzGdTheme >> menuColorDefinition [
	"For Calypso menu but apparently this does not work for the world menu."

	^ self baseColorDefinition
]

{ #category : #'core definition' }
CzGdTheme >> progressBarProgressFillStyleFor: aProgressBar [
	"Answer the colour for the given progress bar."

	^ self class darkBaseColor
]

{ #category : #'core definition' }
CzGdTheme >> scrollbarColor [

	^ colorDictionary at: #scrollbarColor
]

{ #category : #'core definition' }
CzGdTheme >> scrollbarColorDefinition [
	^ self buttonColor
]

{ #category : #'core definition' }
CzGdTheme >> secondarySelectionColor [
	^ colorDictionary at: #secondarySelectionColor
]

{ #category : #'core definition' }
CzGdTheme >> secondarySelectionColorDefinition [
	^ Color fromString: '84ffff'
	
]

{ #category : #'core definition' }
CzGdTheme >> selectionColor [
	"^ Color fromHexString: 'ffe082'"
	
	^ colorDictionary at: #selectionColor
	
]

{ #category : #'core definition' }
CzGdTheme >> selectionColorDefinition [
	^ Color fromHexString: 'ffe082'
	
]

{ #category : #'core definition' }
CzGdTheme >> selectionTextColor [
	"^ Color fromString: 'ffd54f'"
	
	^ colorDictionary at: #selectionTextColor
]

{ #category : #'core definition' }
CzGdTheme >> selectionTextColorDefinition [
	^ Color fromString: 'ffd54f'
]

{ #category : #'core definition' }
CzGdTheme >> shStyleTableName [

	^ #daybeachStyleTable
]

{ #category : #'core definition' }
CzGdTheme >> textColor [
	"This is only for all the list and the text except that the selection color can hide it on certain list."
	
	^ colorDictionary at: #textColor
]

{ #category : #'core definition' }
CzGdTheme >> textColorDefinition [
	"This is only for all the list and the text except that the selection color can hide it on certain list."
	^ Color black
	
]

{ #category : #'core definition' }
CzGdTheme >> thisIsATestMethod: arg for: shoutTable [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| temporary names |
	self printString.
	forms select: [ :each | |tmp| 
			each printString].
	true. 
	self focusIndicat
	false. 
	names := 33.
	{ 1. $a. #aSymbol } do: [ :each | self printString ].
	^ self
]

{ #category : #'core definition' }
CzGdTheme >> unfocusedSelectionColor [
	"^ self selectionColor"
	
	^ colorDictionary at: #unfocusedSelectionColor
]

{ #category : #'core definition' }
CzGdTheme >> windowBorderColorDefinition [
	^ self class darkBaseColor
]

{ #category : #'core definition' }
CzGdTheme >> windowColor [
	
	^ colorDictionary at: #windowColor
]

{ #category : #'core definition' }
CzGdTheme >> windowColorDefinition [
	"For the bar of calypso and probably the menu"
	
	^ self baseColorDefinition 
]
