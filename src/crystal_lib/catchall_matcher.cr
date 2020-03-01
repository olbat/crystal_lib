require "./matcher"

class CrystalLib::CatchallMatcher < CrystalLib::Matcher
  def match(name : String)
    (name && !name.empty? ? name : nil)
  end
end
