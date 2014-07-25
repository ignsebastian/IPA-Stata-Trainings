vers 13

set seed 19370202

clear
set obs 100

gen hhid = _n
lab var hhid "Household ID"

gen n = ceil(5 * runiform())
forv i = 1/5 {
	gen age`i' = ceil(79 * runiform()) + 2 if n >= `i'
	lab var age`i' "Age (#`i'/5)"

	gen female`i' = runiform() < .53 if n >= `i'
	lab var female`i' "Female (#`i'/5)"

	gen married`i' = runiform() < .1 if n >= `i'
	lab var married`i' "HH member is married (#`i'/5)"
}
drop n

cou if mi(age5)
assert r(N) & r(N) < _N

cou if age < 10 & married
assert r(N)

lab de yesno 1 yes 0 no
lab val female* married* yesno

c adv13
compress
svold "Raw/New Hampshire 2013 household", replace 10
