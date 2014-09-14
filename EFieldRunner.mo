within EFieldLine;

model EFieldRunner
  EFieldLine.Components.TParticle tparticle1(Vs = 0.2, x0 = 4, y0 = 0) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle1(x = 0, y = 0, q = 1) annotation(Placement(visible = true, transformation(origin = {-60, 60}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle2(x = 0, y = 2, q = -1) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
equation
  connect(cparticle2.field, tparticle1.E) annotation(Line(points = {{-45, -55}, {1.14504, -55}, {1.14504, 0.381679}, {1.14504, 0.381679}}));
  connect(cparticle1.field, tparticle1.E) annotation(Line(points = {{-60, 60}, {0.763359, 60}, {0.763359, 0.381679}, {0.763359, 0.381679}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 32.8, Tolerance = 1e-06, Interval = 0.0662626));
end EFieldRunner;