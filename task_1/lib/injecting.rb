class Array

  def injecting(*acc)
    acc = acc.empty? ? self.shift : acc.first
    self.each do |x|
      acc = yield(acc,x)
    end
    acc
  end

end