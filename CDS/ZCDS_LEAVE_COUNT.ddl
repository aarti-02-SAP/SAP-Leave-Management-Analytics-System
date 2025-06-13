📌 Purpose: CDS view to display leave count grouped by EMPID and LEAVE_TYPE from ZLEAVE_REQUEST.


@AbapCatalog.sqlViewName: 'ZV_LEAVECOUNT'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View - Leave Count by Employee'

define view ZCDS_LEAVE_COUNT
  as select from ZLEAVE_REQUEST
{
  EMPID,
  LEAVE_TYPE,
  count(*) as TOTAL_LEAVES
}
group by
  EMPID,
  LEAVE_TYPE

