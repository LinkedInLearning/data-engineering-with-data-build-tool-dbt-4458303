select
  code as violation_code,
  definition,
  manhattan_96th_street_and_below,
  all_other_areas
from parking_violation_codes -- bronze -> no need for ref statement