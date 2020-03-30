def choose_best_sum(t, k, ls)
  return if ls.length < k
  ls.combination(k).map(&:sum).select { |sum| sum <= t }.sort.last
end

rb_ary_combination(VALUE ary, VALUE num)
{
    long i, n, len;

    n = NUM2LONG(num);
    RETURN_SIZED_ENUMERATOR(ary, 1, &num, rb_ary_combination_size);
    len = RARRAY_LEN(ary);
    if (n < 0 || len < n) {
	/* yield nothing */
    }
    else if (n == 0) {
	rb_yield(rb_ary_new2(0));
    }
    else if (n == 1) {
	for (i = 0; i < RARRAY_LEN(ary); i++) {
	    rb_yield(rb_ary_new3(1, RARRAY_AREF(ary, i)));
	}
    }
    else {
	VALUE ary0 = ary_make_shared_copy(ary); /* private defensive copy of ary */
	volatile VALUE t0;
	long *stack = ALLOCV_N(long, t0, n+1);

	RBASIC_CLEAR_CLASS(ary0);
	combinate0(len, n, stack, ary0);
	ALLOCV_END(t0);
	RBASIC_SET_CLASS_RAW(ary0, rb_cArray);
    }
    return ary;
}