addpath 'C:\Users\Eliott\Desktop\cla\ProjectSylvester'

%% Creating the matrices
M = 2048;
N = 2048;

rng('default')
Ai = rand(M);
rng('default')
Bi = rand(N);
rng('default')
Ci = rand(M,N);

%% Schur real decomposition + transformation of C

[QA, A] = schur(Ai, 'real');
[QB, B] = schur(Bi, 'real');

C = transformC(Ci,QA,QB);

%% Solve for X using rtrsyct

X = rtrsyst(A, B, C, 64, 64);

%% Recover true Xi solution of Ai*Xi + Xi*Bi = Ci

Xi = backtransformX(X,QA,QB);