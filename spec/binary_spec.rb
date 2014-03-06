require('rspec')
require('binary')

describe('to_binary') do
  it("takes a number as a string and returns its binary digit") do
    to_binary(7).should(eq("111"))
  end 
end

describe('to_base_ten') do
  it("takes a binary string and returns a digit") do
    to_base_ten("111").should(eq(7))
  end
  it("takes a binary string and returns a digit") do
    to_base_ten("1000").should(eq(8))
  end
  it("takes a binary string and returns a digit") do
    to_base_ten("1000").should(eq(8))
  end 
  it("takes a binary string and returns a digit") do
    to_base_ten("1001101010").should(eq(618))
  end 
end

describe('to_ternary') do
  it('takes a number as a string and returns its ternary number') do
  to_ternary(6).should(eq('20'))
  end  
end 

describe('to_base_ten_ternary') do
  it('takes a ternary number and returns an integer') do
    to_base_ten_ternary("20").should(eq(6))
  end
end

describe("to_hex") do
  it("takes a base ten number and converts it to hex") do 
    to_hex(36).should(eq('24'))
  end
  it("takes a base ten number and converts it to hex") do 
    to_hex(126).should(eq('7e'))
  end 
end 

describe("to_base_ten_hex") do
  it("takes a hex string and converts it to a base ten number") do 
    to_base_ten_hex('7e').should(eq(126))
  end
  it("takes a hex string and converts it to a base ten number") do 
    to_base_ten_hex('d344fa').should(eq(13845754))
  end 
end 
