within EFieldLine.Components;

model CParticle "Charged Particle"
  parameter Real K(unit = "N.m2/C2") = 9 * 10 ^ 9 "Coulomb's constant";
  parameter Modelica.SIunits.Position x "x coordinate of the particle";
  parameter Modelica.SIunits.Position y "y coordinate of the particle";
  parameter Modelica.SIunits.ElectricCharge q "charge of the particle";
  EField field annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
equation
  field.Ex = q * K / (field.Px - x) ^ 2 "The electric field x component";
  field.Ey = q * K / (field.Py - y) ^ 2 "The electric field y component";
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {255, 255, 200}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid)}));
end CParticle;