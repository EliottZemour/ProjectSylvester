function [C] = transformC(Ci, QA, QB)
    C = QA' * Ci * QB;
end

