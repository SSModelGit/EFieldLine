within EFieldLine.Components;
model CParticle "Charged Particle"
  parameter Real K(unit = "N.m2/C2") = 9 * 10 ^ 9 "Coulomb's constant";
  parameter Modelica.SIunits.Position x "x coordinate of the particle";
  parameter Modelica.SIunits.Position y "y coordinate of the particle";
  parameter Modelica.SIunits.ElectricCharge q "charge of the particle";
  EField field;
equation
  field.Ex = q * K / (field.Px - x) ^ 2 "The electric field x component";
  field.Ey = q * K / (field.Py - y) ^ 2 "The electric field y component";
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end CParticle;