def make_adder(n)
    Proc.new { |x| x + n }
end

def make_lambda_adder(n)
    ->(x) { x + n }
end
