within EFieldLine.Components;

model TParticle "Component for the test particle in the system"
  parameter Modelica.SIunits.Velocity Vs "Constant speed of particle";
  parameter Modelica.SIunits.Position x0 "Starting position x coordinate of particle";
  parameter Modelica.SIunits.Position y0 "Starting position y coordinate of particle";
  Modelica.SIunits.Position x "x coordinate of particle";
  Modelica.SIunits.Position y "y coordinate of particle";
  Real cosTheta "Cos theta where tan theta is Ey/Ex";
  Real sinTheta "Cos theta where tan theta is Ey/Ex";
  Modelica.SIunits.ElectricFieldStrength SumEx "Sum of all e-fields acting upon particle in x dir";
  Modelica.SIunits.ElectricFieldStrength SumEy "Sum of all e-fields acting upon particle in y dir";
  EFieldLine.Components.EField E annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
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
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {255, 255, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
end TParticle;