within EFieldLine;

model EFieldRunner
  EFieldLine.Components.TParticle tparticle1(Vs = 2, x0 = 1, y0 = 1) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle1(x = 0, y = 0, q = 1) annotation(Placement(visible = true, transformation(origin = {-60, 60}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
equation
  connect(cparticle1.field, tparticle1.E) annotation(Line(points = {{-60, 60}, {0.763359, 60}, {0.763359, 0.381679}, {0.763359, 0.381679}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end EFieldRunner;