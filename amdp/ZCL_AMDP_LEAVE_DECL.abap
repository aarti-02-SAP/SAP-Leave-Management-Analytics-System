CLASS ZCL_AMDP_LEAVE DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: IF_AMDP_MARKER_HDB.

    CLASS-METHODS: GET_SUMMARY
      IMPORTING
        VALUE(I_EMPID) TYPE MANDT
      EXPORTING
        VALUE(ET_RESULT) TYPE ZLEAVE_SUMMARY_TAB.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.
