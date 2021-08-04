Alias: $ICD11 = http://id.who.int/icd11/mms

Instance:     DDCC-Patient-Arabic
InstanceOf:   DDCCPatient
Usage:        #example
// Title: ""
// Description: ""
* name[+].text = "أولوس أجيريوس"
* birthDate = "2003-03-03"

Instance: DDCC-Organization-Arabic
InstanceOf: DDCCOrganization
Usage: #example
// Title: ""
// Description: ""
* name = "مستشفى حكومي"

Instance: DDCC-Immunization-Arabic
InstanceOf: DDCCImmunization
Usage: #example
// Title: ""
// Description: ""
* status = #completed
// 
* extension[vaccineBrand].valueCoding = DDCC_Example_Test_CodeSystem#TEST
* extension[country].valueCode = urn:iso:std:iso:3166#SAU
* vaccineCode.coding[ddccVaccine] = $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
// 
* expirationDate = "2021-06-30"
* lotNumber = "123"
* patient = Reference(DDCC-Patient-Arabic)
* location.display = "موقع التطعيم"
* occurrenceDateTime =  "2021-02-02"
* performer.actor = Reference(DDCC-Organization-Arabic)
// 
* protocolApplied[protocolAppliedAuthority].authority = Reference(DDCC-Organization-Arabic)
* protocolApplied[protocolAppliedAuthority].targetDisease = $ICD11#RA01 "COVID-19"
* protocolApplied[protocolAppliedAuthority].doseNumberPositiveInt = 1
* protocolApplied[protocolAppliedAuthority].seriesDosesPositiveInt = 2

Instance: Example-Arabic
InstanceOf: Bundle
Usage: #example

* type = #transaction
* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Patient-Arabic"
* entry[=].request.url = "Patient"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Patient-Arabic

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Organization-Arabic"
* entry[=].request.url = "Organization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Organization-Arabic

* entry[+].fullUrl = "http://www.example.org/fhir/Patient/DDCC-Immunization-Arabic"
* entry[=].request.url = "Immunization"
* entry[=].request.method = #PUT
* entry[=].resource = DDCC-Immunization-Arabic