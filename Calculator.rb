class Calculator


  def generateNumber
    rand(1..20)
  end

  def right? (a,b,v)
    a.to_i + b.to_i == v.to_i
  end
end

