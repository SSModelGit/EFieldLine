within EFieldLine.Components;
connector EField
  Modelica.SIunits.Position Px;
  Modelica.SIunits.Position Py;
  flow Modelica.SIunits.ElectricFieldStrength Ex;
  flow Modelica.SIunits.ElectricFieldStrength Ey;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end EField;