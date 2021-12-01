select ceiling(15.5) -- return 16 (largest integer)
select floor(15.5) -- return 15 (smallest integer)

select power(2, 3) -- return 8
select square(9) -- return 81
 
-- returns a random float number between 0 to 1
select rand()

-- Prints 10 random number between 1 to 100
select floor(rand() * 100)

Declare @counter int
set @counter = 1
While (@counter <= 10)
Begin
	Print floor(rand() * 100)
	Set @counter = @counter + 1
End

-- Round()
select round(85.556, 2)

-- truncate
select round(85.556, 2, 1)