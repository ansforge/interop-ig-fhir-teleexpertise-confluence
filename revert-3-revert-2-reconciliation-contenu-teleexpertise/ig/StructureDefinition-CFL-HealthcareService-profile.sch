<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile RORHealthcareService
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:HealthcareService</sch:title>
    <sch:rule context="f:HealthcareService">
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-no-consent-habilitation|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-no-consent-habilitation|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-questionnaire-used-as-a-template|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:extension</sch:title>
    <sch:rule context="f:HealthcareService/f:extension">
      <sch:assert test="count(f:extension[@url = 'typeTerritorialDivision']) &gt;= 1">extension with URL = 'typeTerritorialDivision': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'typeTerritorialDivision']) &lt;= 1">extension with URL = 'typeTerritorialDivision': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'codeTerritorialDivision']) &gt;= 1">extension with URL = 'codeTerritorialDivision': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'codeTerritorialDivision']) &lt;= 1">extension with URL = 'codeTerritorialDivision': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'name']) &lt;= 1">extension with URL = 'name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-contact-function-contact|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'purposeContact']) &lt;= 1">extension with URL = 'purposeContact': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'description']) &lt;= 1">extension with URL = 'description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:telecom</sch:title>
    <sch:rule context="f:HealthcareService/f:telecom">
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:characteristic</sch:title>
    <sch:rule context="f:HealthcareService/f:characteristic">
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type']) &gt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0']) &lt;= 0">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type|0.7.0': maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:availableTime</sch:title>
    <sch:rule context="f:HealthcareService/f:availableTime">
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-type-of-time|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-effective-opening-closing-date|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week|0.7.0']) &lt;= 1">extension with URL = 'https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week|0.7.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:HealthcareService/f:notAvailable</sch:title>
    <sch:rule context="f:HealthcareService/f:notAvailable">
      <sch:assert test="count(f:id) &gt;= 1">id: minimum cardinality of 'id' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
