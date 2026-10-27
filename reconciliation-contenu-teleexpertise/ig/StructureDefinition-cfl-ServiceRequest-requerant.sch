<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0']) &lt;= 1">extension with URL = 'http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0']) &lt;= 1">extension with URL = 'http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
      <sch:assert test="count(f:requester) &gt;= 1">requester: minimum cardinality of 'requester' is 1</sch:assert>
      <sch:assert test="count(f:reasonReference) &lt;= 0">reasonReference: maximum cardinality of 'reasonReference' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 0">note: maximum cardinality of 'note' is 0</sch:assert>
      <sch:assert test="count(f:patientInstruction) &lt;= 0">patientInstruction: maximum cardinality of 'patientInstruction' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
