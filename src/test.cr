require "compiler/crystal/syntax"

class TestVisitor < Crystal::Visitor
    def visit(node : Crystal)
        p node.block_arity
        true
    end

    def visit(node)
        true
    end
end
