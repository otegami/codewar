def choose_best_sum(t, k, ls)
  return if ls.length < k
  ls.combination(k).map(&:sum).select { |sum| sum <= t }.sort.last
end