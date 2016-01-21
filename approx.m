t0 = 0.0;
tf = 0.1;
dt = 0.1;
x0 = 0

% create arrays for x and t;
tvec = t0: dt: tf;
xvec = zeros(length(tvec),1);
xvec(1) = x0;

for i = 1:length(tvec)-1;
    xvec(i+1) = xvec(i) - dt*cos(xvec(i))
end

plot(tvec,xvec)

grid on



    