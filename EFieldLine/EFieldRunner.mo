within EFieldLine;

model EFieldRunner
  EFieldLine.Components.TParticle tparticle1(Vs = 0.2, x0 = 4, y0 = 0, xFrame = 100, yFrame = 100, thresholdFrame = 1e-05) annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle1(x = 0, y = 0, q = 1, threshold = 1e-05) annotation(Placement(visible = true, transformation(origin = {-60, 60}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle2(x = 0, y = 2, q = -1, threshold = 1e-05) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
equation
  connect(cparticle2.field, tparticle1.E) annotation(Line(points = {{-45, -55}, {1.14504, -55}, {1.14504, 0.381679}, {1.14504, 0.381679}}));
  connect(cparticle1.field, tparticle1.E) annotation(Line(points = {{-60, 60}, {0.763359, 60}, {0.763359, 0.381679}, {0.763359, 0.381679}}));
  annotation(experiment(StartTime = 0, StopTime = 100, Interval = 0.0662626, Tolerance = 1e-06), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Ellipse(visible = true, origin = {3, 1}, lineColor = {255, 203, 0}, fillColor = {255, 255, 255}, extent = {{-65, -63}, {65, 63}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end EFieldRunner;