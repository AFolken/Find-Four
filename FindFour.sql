----Find if the patient has a FOLLOWUP = 4 (Had to do this due to the summing of values) (followup = summed value)
SELECT a.id,a.FOLLOWUP as followup,a.followup as FindFour,CAST(a.FOLLOWUP as VARCHAR) as FindFourInd
INTO #FindFour
FROM database.table a

DECLARE @counter INT
SET @counter = 9

WHILE (@counter > 1)
BEGIN

      UPDATE #FindFour
      SET FindFour = CASE WHEN FindFour > POWER(2,@counter) AND FindFour > 8 THEN FindFour - POWER(2,@counter)
                                    WHEN FindFour <= POWER(2,@counter) THEN FindFour
                                    WHEN FindFour <= 8 THEN FindFour END

      SET @counter = @counter - 1
END

UPDATE #FindFour
SET FindFourInd = CASE WHEN FindFour < 8 AND FindFour >= 4 THEN 'Y' ELSE 'N' END
