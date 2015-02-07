#! nqp

# Test nqp::op pseudo-functions.

plan(124);


ok( nqp::add_i(5,2) == 7, 'nqp::add_i');
ok( nqp::sub_i(5,2) == 3, 'nqp::sub_i');
ok( nqp::mul_i(5,2) == 10, 'nqp::mul_i');
ok( nqp::div_i(5,2) == 2, 'nqp::div_i');

ok(nqp::bitshiftl_i(1, 30) == 1073741824, 'nqp::bitshiftl_i');
ok(nqp::bitshiftl_i(131, 3) == 1048, 'nqp::bitshiftl_i');

ok( nqp::add_n(5,2) == 7, 'nqp::add_n');
ok( nqp::sub_n(5,2) == 3, 'nqp::sub_n');
ok( nqp::mul_n(5,2) == 10, 'nqp::mul_n');
ok( nqp::div_n(5,2) == 2.5e0, 'nqp::div_n');

ok( nqp::chars('hello') == 5, 'nqp::chars');
ok( nqp::concat('hello ', 'world') eq 'hello world', 'nqp::concat');
ok( nqp::join(' ', ('abc', 'def', 'ghi')) eq 'abc def ghi', 'nqp::join');
ok( nqp::index('rakudo', 'do') == 4, 'nqp::index found');
ok( nqp::index('rakudo', 'dont') == -1, 'nqp::index not found');
ok( nqp::chr(120) eq 'x', 'nqp::chr');
ok( nqp::ord('xyz') eq 120, 'nqp::ord');
ok( nqp::ord('xyz',2) eq 122, '2 argument nqp::ord');
ok( nqp::ordat('xyz',2) eq 122, 'nqp::ordat');
ok( nqp::lc('Hello World') eq 'hello world', 'nqp::downcase');
ok( nqp::uc("Don't Panic") eq "DON'T PANIC", 'nqp::upcase');
ok( nqp::flip("foo") eq "oof", "nqp::flip");

my @items := nqp::split(' ', 'a little lamb');
ok( nqp::elems(@items) == 3 && @items[0] eq 'a' && @items[1] eq 'little' && @items[2] eq 'lamb', 'nqp::split');
ok( nqp::elems(nqp::split(' ', '')) == 0, 'nqp::split zero length string');
ok( nqp::elems(nqp::split('\\s', 'Mary had a little lamb')) == 1, 'nqp::split no match');
@items := nqp::split('', 'a man a plan');
ok( nqp::elems(@items) == 12, 'nqp::split zero length delimiter');
@items := nqp::split('a', 'a man a plan a canal panama');
ok( nqp::elems(@items) == 11 && @items[0] eq '' && @items[10] eq '', 'nqp::split delimiter at ends');
@items := nqp::split('', 'a little lamb');
ok( nqp::join('|', @items) eq 'a| |l|i|t|t|l|e| |l|a|m|b', 'nqp::split("", ...)');

ok( nqp::iseq_i(2, 2) == 1, 'nqp::iseq_i');

ok( nqp::cmp_i(2, 0) ==  1, 'nqp::cmp_i');
ok( nqp::cmp_i(2, 2) ==  0, 'nqp::cmp_i');
ok( nqp::cmp_i(2, 5) == -1, 'nqp::cmp_i');

ok( nqp::cmp_n(2.5, 0.5) ==  1, 'nqp::cmp_n');
ok( nqp::cmp_n(2.5, 2.5) ==  0, 'nqp::cmp_n');
ok( nqp::cmp_n(2.5, 5.0) == -1, 'nqp::cmp_n');

ok( nqp::cmp_s("c", "a") ==  1, 'nqp::cmp_s');
ok( nqp::cmp_s("c", "c") ==  0, 'nqp::cmp_s');
ok( nqp::cmp_s("c", "e") == -1, 'nqp::cmp_s');

my @array := ['zero', 'one', 'two'];
ok( nqp::elems(@array) == 3, 'nqp::elems');

ok( nqp::if(0, 'true', 'false') eq 'false', 'nqp::if(false)');
ok( nqp::if(1, 'true', 'false') eq 'true',  'nqp::if(true)');
ok( nqp::unless(0, 'true', 'false') eq 'true', 'nqp::unless(false)');
ok( nqp::unless(1, 'true', 'false') eq 'false',  'nqp::unless(true)');

my $a := 10;

ok( nqp::if(0, ($a++), ($a--)) == 10, 'nqp::if shortcircuit');
ok( $a == 9, 'nqp::if shortcircuit');

ok( nqp::pow_n(2.0, 4) == 16.0, 'nqp::pow_n');
ok( nqp::neg_i(5) == -5, 'nqp::neg_i');
ok( nqp::neg_i(-10) == 10, 'nqp::neg_i');
ok( nqp::neg_n(5.2) == -5.2, 'nqp::neg_n');
ok( nqp::neg_n(-10.3) == 10.3, 'nqp::neg_n');
ok( nqp::abs_i(5) == 5, 'nqp::abs_i');
ok( nqp::abs_i(-10) == 10, 'nqp::abs_i');
ok( nqp::abs_n(5.2) == 5.2, 'nqp::abs_n');
ok( nqp::abs_n(-10.3) == 10.3, 'nqp::abs_n');

ok( nqp::ceil_n(5.2) == 6.0, 'nqp::ceil_n');
ok( nqp::ceil_n(-5.2) == -5.0, 'nqp::ceil_n');
ok( nqp::ceil_n(5.0) == 5.0, 'nqp::ceil_n');
ok( nqp::ceil_n(-5.0) == -5.0, 'nqp::ceil_n');
ok( nqp::floor_n(5.2) == 5.0, 'nqp::floor_n');
ok( nqp::floor_n(-5.2) == -6.0, 'nqp::floor_n');
ok( nqp::floor_n(5.0) == 5.0, 'nqp::floor_n');
ok( nqp::floor_n(-5.0) == -5.0, 'nqp::floor_n');

ok( nqp::substr('rakudo', 1, 3) eq 'aku', 'nqp::substr');
ok( nqp::substr('rakudo', 1) eq 'akudo', 'nqp::substr');
ok( nqp::substr('rakudo', 6, 3) eq '', 'nqp::substr');
ok( nqp::substr('rakudo', 6) eq '', 'nqp::substr');
ok( nqp::substr('rakudo', 0, 4) eq 'raku', 'nqp::substr');
ok( nqp::substr('rakudo', 0) eq 'rakudo', 'nqp::substr');

ok( nqp::x('abc', 5) eq 'abcabcabcabcabc', 'nqp::x');
ok( nqp::x('abc', 0) eq '', 'nqp::x');

ok( nqp::not_i(0) == 1, 'nqp::not_i');
ok( nqp::not_i(1) == 0, 'nqp::not_i');
ok( nqp::not_i(-1) == 0, 'nqp::not_i');

ok(nqp::escape("\b \n \r \f \t \" \\ \e foo") eq '\\b \\n \\r \\f \\t \\" \\\\ \e foo','nqp::escape');
my $var := 'foo';
ok(nqp::escape($var) eq 'foo','nqp::escape works with literal');

ok( nqp::isnull(nqp::null()) == 1, 'nqp::isnull/nqp::null' );
ok( nqp::isnull("hello") == 0, '!nqp::isnull(string)' );
ok( nqp::isnull(13232) == 0, 'nqp::isnull(number)' );

ok( nqp::istrue(0) == 0, 'nqp::istrue');
ok( nqp::istrue(1) == 1, 'nqp::istrue');
ok( nqp::istrue('') == 0, 'nqp::istrue');
ok( nqp::istrue('0') == 0, 'nqp::istrue');
ok( nqp::istrue('no') == 1, 'nqp::istrue');
ok( nqp::istrue(0.0) == 0, 'nqp::istrue');
ok( nqp::istrue(0.1) == 1, 'nqp::istrue');
ok( nqp::istrue(nqp::list()) == 0, 'nqp::istrue on empty list');
ok( nqp::istrue(nqp::list(1,2,3)) == 1, 'nqp::istrue on nonempty list');

my $list := nqp::list(0, 'a', 'b', 3.0);
ok( nqp::elems($list) == 4, 'nqp::elems');
ok( nqp::atpos($list, 0) == 0, 'nqp::atpos');
ok( nqp::atpos($list, 2) eq 'b', 'nqp::atpos');
nqp::push($list, 'four');
ok( nqp::elems($list) == 5, 'nqp::push');
ok( nqp::shift($list) == 0, 'nqp::shift');
ok( nqp::pop($list) eq 'four', 'nqp::pop');
my $iter := nqp::iterator($list);
ok( nqp::shift($iter) eq 'a', 'nqp::iterator');
ok( nqp::shift($iter) eq 'b', 'nqp::iterator');
ok( nqp::shift($iter) == 3.0, 'nqp::iterator');
ok( nqp::elems($list) == 3, "iterator doesn't modify list");
ok( nqp::islist($list), "nqp::islist works");
nqp::unshift($list,'zero');
ok( nqp::elems($list) == 4, 'nqp::unshift adds 1 element');
ok( nqp::atpos($list,0) == 'zero', 'nqp::unshift the correct element');

my %hash;
%hash<foo> := 1;
ok( nqp::existskey(%hash,"foo"),"existskey with existing key");
ok( !nqp::existskey(%hash,"bar"),"existskey with missing key");

my @arr;
@arr[1] := 3;
ok(!nqp::existspos(@arr, 0), 'existspos with missing pos');
ok(nqp::existspos(@arr, 1), 'existspos with existing pos');
ok(!nqp::existspos(@arr, 2), 'existspos with missing pos');
ok(nqp::existspos(@arr, -1), 'existspos with existing pos');
ok(!nqp::existspos(@arr, -2), 'existspos with missing pos');
ok(!nqp::existspos(@arr, -100), 'existspos with absurd values');
@arr[1] := NQPMu;
ok(nqp::existspos(@arr, 1), 'existspos with still existing pos');

ok(!nqp::isnull_s("foo"), 'test for isnull_s with a normal string');
ok(nqp::isnull_s(nqp::null_s()), 'test for isnull_s with a null_s');

ok(nqp::time_n() != 0, 'time_n is not zero');
ok(nqp::time_i() != 0, 'time_i is not zero');

my $time_a := nqp::time_i();
my $time_b := nqp::time_n();
ok($time_b >= $time_a, "time_n >= time_i");

ok(nqp::eqat("foobar","foo", 0) == 1, "eqat with needle argument that matches at 0");
ok(nqp::eqat("foobar","oob", 1) == 1, "eqat with needle argument that matches at 1");
ok(nqp::eqat("foobar","foo", 1) == 0, "eqat with needle argument that matches");
ok(nqp::eqat("foobar","bar", -3) == 1, "eqat with a negative offset argument");
ok(nqp::eqat("foobar","foo", -9001) == 1, "eqat with a gigantic offset argument");
ok(nqp::eqat("foobar","foobarbaz", 0) == 0, "eqat with needle argument longer than haystack");

{
    my $source := nqp::list("100", "200", "300");
    my $a := nqp::list("1", "2", "3");
    nqp::splice($a, $source, 0, 0);
    ok(nqp::join(",", $a) eq '100,200,300,1,2,3', "splice");

    my $b := nqp::list("1", "2", "3", "4");
    nqp::splice($b, $source, 1, 2);
    ok(nqp::join(",", $b) eq '1,100,200,300,4', "splice");
}

{
    my $list := nqp::list("1","2","3","4","5");
    my $ret := nqp::setelems($list, 3);
    ok(nqp::join(",", $list) eq '1,2,3', 'nqp::setelems reduces list length properly');
    ok(nqp::join(",", $ret) eq '1,2,3', 'nqp::setelems return value');
}
