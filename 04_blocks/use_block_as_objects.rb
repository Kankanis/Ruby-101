class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |x| puts "The parameter is #{x}" }
eg.use_proc(99)
# Output:
# The parameter is 99


# method which returns a Proc
def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

bo = ->(params) { puts "You called me with #{params}" }
bo.call 99
bo.call "cat"

bo = lambda { |params| puts "You called me with #{params}" }
bo.call 99
bo.call "cat"

bo = proc { |params| puts "You called me with #{params}" }
bo.call 99
bo.call "cat"

bo = Proc.new { |params| puts "You called me with #{params}" }
bo.call 99
bo.call "cat"

# lambda values return an error if called with wrong number of arguments
# proc will allow the call, and either truncate extra arguments or assign nil to unspecified arguments.
