require("rspec")
require("far")


describe("String#far") do
  it("returns a replacement string for a given string") do
    expect("Hello world".far("world","universe")).to(eq("Hello universe"))
  end

end
