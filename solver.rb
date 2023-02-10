# this is a solver class
class Solver
  def factorize(num)
    if num.negative?
      raise ArgumentError, 'n must be positive'
    elsif num.zero?
      return 1
    end

    num * factorize(num - 1)
  end

  def reverse(name)
    name.reverse
  end

  def fizzbuzz(num)
    result = ''
    1.upto(num) do |n|
      result += check_num(n)
    end
    result.strip
  end

  def check_num(idx)
    if (idx % 3).zero? && (idx % 5).zero?
      'fizzbuzz '
    elsif (idx % 3).zero?
      'fizz '
    elsif (idx % 5).zero?
      'buzz '
    else
      "#{idx} "
    end
  end
end
