% Real-time convolution
% Code from Haji
function y = conv_rt(x,h)
    Lx = length(x);
    Lh = length(h);
    y = [];
    h_hat = h;
    h_hat = h(end:-1:1);
    x_hat = [zeros(1,Lh-1) x zeros(1,Lh-1)];
    for i=1:(Lx+Lh-1)
        string(i) + ') x_hat ' + string(i) + ' to ' + string(Lh+i-1)
        newVal = sum(h_hat.*x_hat(i:Lh+i-1));
        y=[y newVal];
        plot(i,newVal,'ro');
        hold on;
        pause(1);
    end
end

% Notes
% 
%                                               [ 1 2 1 0 1 2 1 ]   h[n]
%                                                       <-- [ 0 0 0 0 0 0 9 8 7 1 2 ]   x[n]
% N=1