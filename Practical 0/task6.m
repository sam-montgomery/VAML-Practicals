ma = ones(3,3);
ma = ma +10;

mb = ones(3,3)+2;
mc = mb + ma;

ma;
mc;
ma*mc;

ma .* mc;

mat = ma';

ima=inv(ma);
