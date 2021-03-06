%
% Copyright (c) 2014, Ross Adelman, Nail A. Gumerov, and Ramani Duraiswami
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%
% 1. Redistributions of source code must retain the above copyright notice,
% this list of conditions and the following disclaimer.
%
% 2. Redistributions in binary form must reproduce the above copyright notice,
% this list of conditions and the following disclaimer in the documentation
% and/or other materials provided with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%

function D = pro_calculate_D(a, pro)
	eta = pro(1);
	xi = pro(2);
	phi = pro(3);
	D = zeros(3, 3);
	D(1, 1) = -a * ((1.0 - (eta ^ 2)) ^ (-1.0 / 2.0)) * eta * sqrt((xi ^ 2) - 1.0) * cos(phi);
	D(1, 2) = -a * ((1.0 - (eta ^ 2)) ^ (-1.0 / 2.0)) * eta * sqrt((xi ^ 2) - 1.0) * sin(phi);
	D(1, 3) = a * xi;
	D(2, 1) = a * sqrt(1.0 - (eta ^ 2)) * (((xi ^ 2) - 1.0) ^ (-1.0 / 2.0)) * xi * cos(phi);
	D(2, 2) = a * sqrt(1.0 - (eta ^ 2)) * (((xi ^ 2) - 1.0) ^ (-1.0 / 2.0)) * xi * sin(phi);
	D(2, 3) = a * eta;
	D(3, 1) = -a * sqrt(1.0 - (eta ^ 2)) * sqrt((xi ^ 2) - 1.0) * sin(phi);
	D(3, 2) = a * sqrt(1.0 - (eta ^ 2)) * sqrt((xi ^ 2) - 1.0) * cos(phi);
	D(3, 3) = 0.0;
end
