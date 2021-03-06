within EFieldLine.Components;

model CParticle "Charged Particle"
  parameter Real K(unit = "N.m2/C2") = 9 * 10 ^ 9 "Coulomb's constant";
  parameter Modelica.SIunits.Position x = 0 "x coordinate of the particle";
  parameter Modelica.SIunits.Position y = 0 "y coordinate of the particle";
  parameter Modelica.SIunits.ElectricCharge q = 1 "charge of the particle";
  parameter Modelica.SIunits.Distance threshold = 1e-05 "threshold of proximity to charged particle";
  Modelica.SIunits.Distance l "Distance between charged particle and test particle";
  EField field annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
protected
  Modelica.SIunits.Distance dx = field.Px - x;
  Modelica.SIunits.Distance dy = field.Py - y;
equation
  l = sqrt(dx ^ 2 + dy ^ 2);
  field.Ex = q * K * dx / l ^ 3 "The electric field x component";
  field.Ey = q * K * dy / l ^ 3 "The electric field y component";
  when abs(l - threshold) < 0.001 then
    terminate("came close enough");
  end when;
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {255, 255, 200}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid)}));
end CParticle;