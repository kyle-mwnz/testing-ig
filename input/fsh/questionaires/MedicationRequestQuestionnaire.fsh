Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: MedicationRequestQuestionnaire
InstanceOf: Questionnaire
Description: "Submit a search for Prescribed Medication - update"
Usage: #definition
* title = "Search Prescribed Medication"
* status = #draft

* identifier.period.start = "2023-07-05"
* identifier.use = #usual
* identifier.value = "MedicationRequestQuestionnaire"

* item[+].linkId = "550e8400-e29b-41d4-a716-446655440000"
* item[=].text = "Date Last Updated"
* item[=].type = #date
* item[=].required = false

* item[+].linkId = "550e8400-e29b-41d4-a716-446655440001"
* item[=].text = "Status"
* item[=].type = #string
* item[=].required = false
