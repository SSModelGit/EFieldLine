within EFieldLine.Components;

connector EField
  Modelica.SIunits.Position Px;
  Modelica.SIunits.Position Py;
  flow Modelica.SIunits.ElectricFieldStrength Ex;
  flow Modelica.SIunits.ElectricFieldStrength Ey;
  annotation(Icon(graphics = {Polygon(points = {{0, -100}, {0, 100}, {100, 0}}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, pattern = LinePattern.None, lineColor = {0, 0, 0}), Polygon(points = {{0, -100}, {0, 100}, {-100, 0}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, pattern = LinePattern.Solid, lineColor = {255, 255, 0})}));
end EField;