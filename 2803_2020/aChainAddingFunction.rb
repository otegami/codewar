module ChangingAdding
  refine Integer do
    def call(n)
      self + n
    end
  end
end

using ChangingAdding

def add(n)
  n
end