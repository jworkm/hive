CREATE TABLE t1(x5 STRUCT<x4: STRUCT<x3: ARRAY<STRUCT<x1: STRING, x2: ARRAY<STRING>>>> >);
INSERT INTO t1 SELECT NAMED_STRUCT('x4', NAMED_STRUCT('x3', ARRAY(NAMED_STRUCT('x1', 'x1_1', 'x2', ARRAY('x2_1', 'x2_2')))));
SELECT c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16
FROM t1
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c1
LATERAL VIEW EXPLODE(c1.x2) lv as c2
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c3
LATERAL VIEW EXPLODE(c1.x2) lv as c4
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c5
LATERAL VIEW EXPLODE(c1.x2) lv as c6
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c7
LATERAL VIEW EXPLODE(c1.x2) lv as c8
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c9
LATERAL VIEW EXPLODE(c1.x2) lv as c10
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c11
LATERAL VIEW EXPLODE(c1.x2) lv as c12
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c13
LATERAL VIEW EXPLODE(c1.x2) lv as c14
LATERAL VIEW EXPLODE(x5.x4.x3) lv as c15
LATERAL VIEW EXPLODE(c1.x2) lv as c16
LIMIT 1;
