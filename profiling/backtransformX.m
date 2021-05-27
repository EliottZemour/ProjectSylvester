function [Xi] = backtransformX(X, QA, QB)
    Xi = QA * X * QB';
end