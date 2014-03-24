function p(exp) {
  print(exp + '\n');
}

p(10);

p(5 + 3 + 4);

p(9-1);

p(6/2);

p((2 * 4) + (4 - 6));

var a = 3;
print('a = ' + a + '\n');

var b =  a + 1;
print('b = ' + b + '\n');

p(a + b + a * b);

p(a == b);

p((b > a) && (b < (a * b)) ? b : a);

p( (function() {if (a == 4) return 6; else if (b == 4) return 6 + 7 + a; else return 25; })() );

p((b > a ? b : a) + 2);

p( (function() {if (a > b) return a; else if (a < b) return b; else return -1; })() * (a + 1) );