require "./matcher"

class CrystalLib::PrefixMatcher < CrystalLib::Matcher
  def initialize(@prefixes : Array(String), @remove_prefix : Bool)
  end

  def match(name : String)
    @prefixes.each do |prefix|
      if !name.empty? && name.starts_with?(prefix)
        name = name[prefix.size..-1] if @remove_prefix
        return name
      end
    end
    nil
  end
end
