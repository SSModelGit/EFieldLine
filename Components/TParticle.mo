within EFieldLine.Components;

model TParticle "Component for the test particle in the system"
  parameter Modelica.SIunits.Velocity Vs "Constant speed of particle";
  parameter Modelica.SIunits.Position x0 "Starting position x coordinate of particle";
  parameter Modelica.SIunits.Position y0 "Starting position y coordinate of particle";
  parameter Modelica.SIunits.Velocity Vx0 "Starting position x velocity of particle";
  parameter Modelica.SIunits.Velocity Vy0 "Starting position y velocity of particle";
  Modelica.SIunits.Position x "x coordinate of particle";
  Modelica.SIunits.Position y "y coordinate of particle";
  Modelica.SIunits.ElectricFieldStrength SumEx "Sum of all e-fields acting upon particle in x dir";
  Modelica.SIunits.ElectricFieldStrength SumEy "Sum of all e-fields acting upon particle in y dir";
  EFieldLine.Components.EField E annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
initial equation
  x = x0;
  y = y0;
  der(x) = Vx0;
  der(y) = Vy0;
equation
  E.Px = x;
  E.Py = y;
  E.Ex = -SumEx;
  E.Ey = -SumEy;
  der(y) / der(x) = SumEx / SumEy;
  Vs = sqrt(der(x) ^ 2 + der(y) ^ 2);
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {255, 255, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}));
end TParticle;