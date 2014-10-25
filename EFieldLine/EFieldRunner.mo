within EFieldLine;

model EFieldRunner
  EFieldLine.Components.TParticle tparticle1 annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle1 annotation(Placement(visible = true, transformation(origin = {-60, 60}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  EFieldLine.Components.CParticle cparticle2(x = 0, y = 2, q = -1) annotation(Placement(visible = true, transformation(origin = {-45, -55}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput xField annotation(Placement(visible = true, transformation(origin = {36, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {46, 24}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput yField annotation(Placement(visible = true, transformation(origin = {42, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {53, -49}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
equation
  connect(cparticle2.field, tparticle1.E) annotation(Line(points = {{-45, -55}, {1.14504, -55}, {1.14504, 0.381679}, {1.14504, 0.381679}}));
  connect(cparticle1.field, tparticle1.E) annotation(Line(points = {{-60, 60}, {0.763, 60}, {0.763, 0.382}, {0, 0}}, visible = true));
  xField = tparticle1.x;
  yField = tparticle1.y;
  annotation(experiment(StartTime = 0, StopTime = 100, Interval = 0.0662626, Tolerance = 1e-06), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Ellipse(visible = true, origin = {3, 1}, lineColor = {255, 203, 0}, fillColor = {255, 255, 255}, extent = {{-65, -63}, {65, 63}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end EFieldRunner;