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

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 17:56:09'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	obtenerRespuestasPosibles := #('Hola forastero' 'Alguien esta de buen humor...' 'Eres un sujeto de muchas palabras al parecer' '...' 'No, no quiero ser mi propio jefe' ).
	cantidadDeVecesQueHablaronConmigo := 0.
	respuesta := 'No, no quiero ser mi propio jefe'.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 17:54:16'!
pensarQueResponder


	cantidadDeVecesQueHablaronConmigo >= obtenerRespuestasPosibles size
	ifTrue: [respuesta:= obtenerRespuestasPosibles at: obtenerRespuestasPosibles size]
	ifFalse: [respuesta:= obtenerRespuestasPosibles at: cantidadDeVecesQueHablaronConmigo].! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 17:55:40'!
pensarRespuestasPosibles

	obtenerRespuestasPosibles := #('Hola forastero' 'Alguien esta de buen humor...' 'Eres un sujeto de muchas palabras al parecer' '...' 'No, no quiero ser mi propio jefe').
! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:51:16'!
recordarQueConversaronConmigo

	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'LF 10/2/2020 10:38:57'!
responder

	^respuesta.! !

GuardiaDeSkyrim initializeAfterFileIn!