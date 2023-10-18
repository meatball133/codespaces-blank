require "compiler/crystal/syntax"

class TestVisitor < Crystal::Visitor
    @@array = [] of Int32 | Nil 

    def self.array
        @@array
    end

    def visit(node : Crystal::Def)
        @@array << node.block_arity
        true
    end

    def visit(node)
        true
    end
end
