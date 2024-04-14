%MRPRODS EG1 GROUP 6

x1 = optimvar('x1', 'Type', 'integer', 'LowerBound', 0, 'UpperBound',Inf);
x2 = optimvar('x2', 'Type', 'integer', 'LowerBound', 0, 'UpperBound',Inf);
x3 = optimvar('x3', 'Type', 'integer', 'LowerBound', 0, 'UpperBound',Inf);
x4 = optimvar('x4', 'Type', 'integer', 'LowerBound', 0, 'UpperBound',Inf);
x5 = optimvar('x5', 'Type', 'integer', 'LowerBound', 0, 'UpperBound',Inf);

prob = optimproblem('Objective', (12 * x1) + (12 * x2) + (12 * x3) + (10 * x4), 'ObjectiveSense','min');

prob.Constraints.c1 = x1 + x2 + x3 <= 25000;
prob.Constraints.c2 = x1 + x2 >= 11000;
prob.Constraints.c3 = x2 >= 3000;
prob.Constraints.c4 = x3 >= 3100;
prob.Constraints.c5 = x4 >= 11000;

problem = prob2struct(prob);
[sol,fval,exitflag,output] = intlinprog(problem);

disp('Optimal values of x1, x2, x3, x4:');
disp(sol);
disp('Objective function value of z: ');
disp(fval);

