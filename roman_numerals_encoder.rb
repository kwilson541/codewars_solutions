# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1,000

def solution(number)

m, r_1 = number.divmod(1000)
cd, r_2 = r_1.divmod(100)
lx, r_3 = r_2.divmod(10)
vi, r_4 = r_3.divmod(1)

roman = []

m.times { roman << "M" }

if cd <= 3
	cd.times { roman << "C" }
elsif cd == 4
	roman << "CD"
elsif cd == 5
	roman << "D"
elsif cd > 5 && cd < 9
	roman << "D"
	(cd - 5).times { roman << "C" }
elsif cd == 9
	roman << "CM"
end

if lx <= 3
	lx.times { roman << "X" }
elsif lx == 4
	roman << "XL"
elsif lx == 5
	roman << "L"
elsif lx > 5 && lx < 9
	roman << "L"
	(lx - 5).times { roman << "X" }
elsif lx == 9
	roman << "XC"
end

if vi <= 3
	vi.times { roman << "I" }
elsif vi == 4
	roman << "IV"
elsif vi == 5
	roman << "V"
elsif vi > 5 && vi < 9
	roman << "V"
	(vi - 5).times { roman << "I" }
elsif vi == 9
	roman << "IX"
end

roman.join

end
