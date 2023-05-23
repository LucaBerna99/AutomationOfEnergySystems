model prova_B
  Modelica.Blocks.Sources.RealExpression fo(y = 50) annotation(
    Placement(visible = true, transformation(origin = {-238, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-138, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-196, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {30, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-102, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-158, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-54, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-28, 54}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-96, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-164, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-126, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-6, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-182, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {32, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(visible = true, transformation(origin = {110, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {40*2*2*Modelica.Math.asin(1.0)*50, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {184, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback2 annotation(
    Placement(visible = true, transformation(origin = {140, -14}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {138, 24}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-84, -20}, {-66, -20}}, color = {0, 0, 127}));
  connect(feedback_g1.u1, fo.y) annotation(
    Line(points = {{-190, 20}, {-214, 20}, {-214, 76}, {-227, 76}}, color = {0, 0, 127}));
  connect(gain.u, integrator.y) annotation(
    Line(points = {{-28, 66}, {-28, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-59, -70}, {-38.5, -70}, {-38.5, -76}, {-18, -76}}, color = {0, 0, 127}));
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-153, 76}, {-126, 76}, {-126, 64}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-101, -70}, {-82, -70}}, color = {0, 0, 127}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-78, 64}, {-78, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-128, -20}, {-108, -20}}, color = {0, 0, 127}));
  connect(add1.y, tf_g2.u) annotation(
    Line(points = {{-43, -14}, {18, -14}}, color = {0, 0, 127}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-227, 76}, {-204, 76}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-78, 41}, {-78, -8}, {-66, -8}}, color = {0, 0, 127}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-126, 41}, {-126, 32}, {-114, 32}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-147, 20}, {-114, 20}}, color = {0, 0, 127}));
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-146, -20}, {-214, -20}, {-214, 76}, {-227, 76}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-118, -70}, {-214, -70}, {-214, 76}, {-227, 76}}, color = {0, 0, 127}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-187, 76}, {-176, 76}}, color = {0, 0, 127}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-173, 20}, {-170, 20}}, color = {0, 0, 127}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-28, 43}, {-28, -64}, {-18, -64}}, color = {0, 0, 127}));
  connect(add.y, tf_g1.u) annotation(
    Line(points = {{-91, 26}, {20, 26}}, color = {0, 0, 127}));
  connect(add2.y, tf_g3.u) annotation(
    Line(points = {{5, -70}, {17, -70}}, color = {0, 0, 127}));
  connect(tf_g1.y, add3.u1) annotation(
    Line(points = {{44, 26}, {68, 26}, {68, -6}, {98, -6}}, color = {0, 0, 127}));
  connect(tf_g2.y, add3.u2) annotation(
    Line(points = {{42, -14}, {98, -14}}, color = {0, 0, 127}));
  connect(tf_g3.y, add3.u3) annotation(
    Line(points = {{42, -70}, {70, -70}, {70, -22}, {98, -22}}, color = {0, 0, 127}));
  connect(add3.y, feedback2.u1) annotation(
    Line(points = {{122, -14}, {132, -14}}, color = {0, 0, 127}));
  connect(ramp.y, feedback2.u2) annotation(
    Line(points = {{138, 14}, {140, 14}, {140, -6}}, color = {0, 0, 127}));
  connect(transferFunction1.u, feedback2.y) annotation(
    Line(points = {{172, -14}, {150, -14}}, color = {0, 0, 127}));
  connect(transferFunction1.y, feedback_g3.u2) annotation(
    Line(points = {{196, -14}, {228, -14}, {228, -94}, {-110, -94}, {-110, -78}}, color = {0, 0, 127}));
  connect(feedback_g2.u2, transferFunction1.y) annotation(
    Line(points = {{-138, -28}, {-138, -94}, {228, -94}, {228, -14}, {196, -14}}, color = {0, 0, 127}));
  connect(feedback_g1.u2, transferFunction1.y) annotation(
    Line(points = {{-182, 12}, {-182, -94}, {228, -94}, {228, -14}, {196, -14}}, color = {0, 0, 127}));
  connect(feedback_grid1.u2, transferFunction1.y) annotation(
    Line(points = {{-196, 68}, {-196, -94}, {228, -94}, {228, -14}, {196, -14}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-260, 100}, {260, -100}})),
    version = "");end prova_B;
