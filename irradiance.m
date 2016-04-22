h = 6.626e-34; % Planck's Constant
c = 3e8; % speed of light
T = 6000; % absolute temperature
k = 1.38066e-23; % Boltzmann constant in J/K
lambda = 0:20e-9:3200e-9; % wavelength

% spectral radiance
p = 2*h*c*c./(lambda.^5);
b6000 = p./(exp(h*c./(lambda*k*T))-1);
b6000 = (1e-9).*b6000;

% multiply by the square of the ratio of the solar radius of earth's
% orbital radius
b6000 = b6000.*(2.177e-5);

% apply Lambert's cosine law
b6000 = b6000.*pi;

% convert units for lambda
lambda = lambda.*1e6;

% print result
fh = figure(1);
plot(lambda,b6000)
xlabel('Wavelength [\mu{m}]');
ylabel('Irradiance [W m^{-2} nm^{-1}]');