def one_block
yield
yield
yield
end
one_block { puts "This is a block. " }
