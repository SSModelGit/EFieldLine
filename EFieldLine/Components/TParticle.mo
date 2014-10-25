within EFieldLine.Components;

model TParticle "Component for the test particle in the system"
  parameter Modelica.SIunits.Velocity Vs = 0.2 "Constant speed of particle";
  parameter Modelica.SIunits.Position x0 = 4 "Starting position x coordinate of particle";
  parameter Modelica.SIunits.Position y0 = 0 "Starting position y coordinate of particle";
  parameter Modelica.SIunits.Distance xFrame = 200 "X length of frame";
  parameter Modelica.SIunits.Distance yFrame = 200 "Y length of frame";
  parameter Modelica.SIunits.Distance thresholdFrame = 1e-05 "threshold of acceptance to frame";
  Real cosTheta "Cos theta where tan theta is Ey/Ex";
  Real sinTheta "Cos theta where tan theta is Ey/Ex";
  Modelica.SIunits.ElectricFieldStrength SumEx "Sum of all e-fields acting upon particle in x dir";
  Modelica.SIunits.ElectricFieldStrength SumEy "Sum of all e-fields acting upon particle in y dir";
  EFieldLine.Components.EField E annotation(Placement(visible = true, transformation(origin = {0, -0}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  Modelica.SIunits.Position x "x coordinate of the position of the test particle" annotation(Placement(visible = true, transformation(origin = {24.37, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {24.37, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.SIunits.Position y "y coordinate of the position of the test particle" annotation(Placement(visible = true, transformation(origin = {30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {26.887, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
initial equation
  x = x0;
  y = y0;
equation
  E.Px = x;
  E.Py = y;
  E.Ex = -SumEx;
  E.Ey = -SumEy;
  cosTheta = SumEx / sqrt(SumEx ^ 2 + SumEy ^ 2);
  sinTheta = SumEy / sqrt(SumEx ^ 2 + SumEy ^ 2);
  der(x) = Vs * cosTheta;
  der(y) = Vs * sinTheta;
  when abs(x - xFrame) < thresholdFrame or abs(y - yFrame) < thresholdFrame then
    terminate("came to close to frame");
  end when;
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {255, 255, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
end TParticle;