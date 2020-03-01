class CrystalLib::PrefixImporter < CrystalLib::Importer
  def initialize(@matcher : PrefixMatcher)
    @nodes = [] of Crystal::ASTNode
    @mapper = TypeMapper.new(@matcher)
  end
end
