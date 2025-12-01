select
  code as violation_code,
  definition,
  manhattan_96th_st_below as manhattan_96th_streets,
  all_other_areas as other_areas
from
  parking_violation_codes