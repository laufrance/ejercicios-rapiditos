!classDefinition: #AlejandroElEncargado category: 'PrimerClase'!
DenotativeObject subclass: #AlejandroElEncargado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlejandroElEncargado class' category: 'PrimerClase'!
AlejandroElEncargado class
	instanceVariableNames: ''!

!AlejandroElEncargado class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:28:46'!
saludoCon: unSaludo

	^unSaludo, ' Sergio'! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'obtenerRespuestasPosibles cantidadDeVecesQueHablaronConmigo respuesta'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:38:47'!
conversar
	
	self recordarQueConversaronConmigo.
	self pensarRespuestasPosibles.
	self pensarQueResponder.
	^self responder.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:40:39'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	obtenerRespuestasPosibles := #('Hola forastero' 'Alguien esta de buen humor...' 'Eres un sujeto de muchas palabras al parecer' '...' 'No, no quiero ser mi propio jefe' ).
	cantidadDeVecesQueHablaronConmigo := 5.
	respuesta := 'No, no quiero ser mi propio jefe'.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:09:01'!
pensarQueResponder

	cantidadDeVecesQueHablaronConmigo = 1 ifTrue: [respuesta:= obtenerRespuestasPosibles at: 1].
	cantidadDeVecesQueHablaronConmigo = 2 ifTrue: [respuesta:= obtenerRespuestasPosibles at: 2].
	cantidadDeVecesQueHablaronConmigo = 3 ifTrue: [respuesta:= obtenerRespuestasPosibles at: 3].
	cantidadDeVecesQueHablaronConmigo = 4 ifTrue: [respuesta:= obtenerRespuestasPosibles at: 4].
	cantidadDeVecesQueHablaronConmigo > 4 ifTrue: [respuesta:= obtenerRespuestasPosibles at: 5].! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:30:24'!
pensarRespuestasPosibles

	obtenerRespuestasPosibles := Array new: 5.
	obtenerRespuestasPosibles at: 1 put: 'Hola forastero' .
	obtenerRespuestasPosibles at: 2 put: 'Alguien esta de buen humor...'.
	obtenerRespuestasPosibles at: 3 put: 'Eres un sujeto de muchas palabras al parecer'.
	obtenerRespuestasPosibles at: 4 put: '...'.
	obtenerRespuestasPosibles at: 5 put: 'No, no quiero ser mi propio jefe'.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:51:16'!
recordarQueConversaronConmigo

	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:38:57'!
responder

	^respuesta.! !

GuardiaDeSkyrim initializeAfterFileIn!