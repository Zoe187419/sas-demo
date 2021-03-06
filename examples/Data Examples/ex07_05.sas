proc iml;
use sasuser.ex07_05;
read all var {homework} into x1;
read all var {commute} into x2;
read all var {final} into y;
n = nrow(y);
intercept = j(n,1,1);
x = intercept||x1||x2;
print x, y;
b = inv(x`*x)*x`*y;
invxpx = inv(x`*x);
diaghat = diag(x*inv(x`*x)*x`);
print b, invxpx, diaghat;
*Ex. 7.5.2;
yhat = x*b;
yhat_ybar = yhat - y[:];
residual = y - yhat;
yhat_ybar2 = yhat_ybar##2;
residual2 = residual##2;
print x1 x2 y yhat yhat_ybar residual yhat_ybar2 residual2;
ssmodel = yhat_ybar2[+];
sserror = residual2[+];
print ssmodel, sserror;
*Ex. 7.5.9;
mult_ex_7_5_09 = {1 65 10}*invxpx*{1, 65, 10};
print mult_ex_7_5_09;
*Ex. 7.5.10;
mult_ex_7_5_10 = 1 + {1 65 10}*invxpx*{1, 65, 10};
print mult_ex_7_5_10;
*Ex. 7.5.12;
xsub1 = (j(n-1,1,0)||i(n-1))*x;
ysub1 = (j(n-1,1,0)||i(n-1))*y;
bsub1 = inv(xsub1`*xsub1)*xsub1`*ysub1;
mserrorsub1 = (ysub1 - xsub1*bsub1)[##]/(n-4);
print mserrorsub1;
yhatsub1 = x*bsub1;
yhat_yhatsub1 = yhat - yhatsub1;
yhat_yhatsub12 = yhat_yhatsub1##2;
print x1 x2 y yhat yhatsub1 yhat_yhatsub1 yhat_yhatsub12;
sumyhat_yhatsub12 = yhat_yhatsub12[+]; 
print sumyhat_yhatsub12;
quit;
