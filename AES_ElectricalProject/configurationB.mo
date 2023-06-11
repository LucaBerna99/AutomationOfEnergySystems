within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {122, -48}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {5*0.1, 1}, b = {5.2071*10, 5.2071}) annotation(
    Placement(visible = true, transformation(origin = {-182, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {6, -104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-220, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-262, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-78, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-134, -104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-30, -104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-150, 18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction network(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {162, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-162, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 79/(416e4)*200) annotation(
    Placement(visible = true, transformation(origin = {-188, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-102, 18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-94, -104}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-206, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {20*0.1, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-120, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {6, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {122, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(visible = true, transformation(origin = {86, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-52, 20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-126, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {8, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-170, -54}, {-238, -54}, {-238, 42}, {-251, 42}}, color = {0, 0, 127}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-251, 42}, {-228, 42}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-142, -104}, {-238, -104}, {-238, 42}, {-251, 42}}, color = {0, 0, 127}));
  connect(gain3.u, integrator.y) annotation(
    Line(points = {{-52, 32}, {-52, 42}, {-177, 42}}, color = {0, 0, 127}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-197, -14}, {-194, -14}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-83, -104}, {-62.5, -104}, {-62.5, -110}, {-42, -110}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-153, -54}, {-133, -54}}, color = {0, 0, 127}));
  connect(add1.y, tf_g2.u) annotation(
    Line(points = {{-67, -48}, {-6, -48}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-171, -14}, {-138, -14}}, color = {0, 0, 127}));
  connect(gain2.u, integrator.y) annotation(
    Line(points = {{-102, 30}, {-102, 42}, {-177, 42}}, color = {0, 0, 127}));
  connect(integrator.y, gain1.u) annotation(
    Line(points = {{-177, 42}, {-150, 42}, {-150, 30}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-125, -104}, {-106, -104}}, color = {0, 0, 127}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-211, 42}, {-200, 42}}, color = {0, 0, 127}));
  connect(network.y, feedback_g3.u2) annotation(
    Line(points = {{173, -48}, {204, -48}, {204, -128}, {-134, -128}, {-134, -112}}, color = {0, 0, 127}));
  connect(tf_g3.y, add3.u3) annotation(
    Line(points = {{17, -104}, {45, -104}, {45, -56}, {73, -56}}, color = {0, 0, 127}));
  connect(gain1.y, add.u1) annotation(
    Line(points = {{-150, 7}, {-150, -2}, {-138, -2}}, color = {0, 0, 127}));
  connect(add2.y, tf_g3.u) annotation(
    Line(points = {{-19, -104}, {-7, -104}}, color = {0, 0, 127}));
  connect(feedback_g2.u2, network.y) annotation(
    Line(points = {{-162, -62}, {-162, -128}, {204, -128}, {204, -48}, {173, -48}}, color = {0, 0, 127}));
  connect(feedback_grid1.u2, network.y) annotation(
    Line(points = {{-220, 34}, {-220, -128}, {204, -128}, {204, -48}, {173, -48}}, color = {0, 0, 127}));
  connect(tf_g2.y, add3.u2) annotation(
    Line(points = {{17, -48}, {73, -48}}, color = {0, 0, 127}));
  connect(gain2.y, add1.u1) annotation(
    Line(points = {{-102, 7}, {-102, -42}, {-90, -42}}, color = {0, 0, 127}));
  connect(add.y, tf_g1.u) annotation(
    Line(points = {{-115, -8}, {-4, -8}}, color = {0, 0, 127}));
  connect(add3.y, feedback.u1) annotation(
    Line(points = {{97, -48}, {113, -48}}, color = {0, 0, 127}));
  connect(feedback_g1.u2, network.y) annotation(
    Line(points = {{-206, -22}, {-206, -128}, {204, -128}, {204, -48}, {173, -48}}, color = {0, 0, 127}));
  connect(feedback_g1.u1, fo.y) annotation(
    Line(points = {{-214, -14}, {-238, -14}, {-238, 42}, {-251, 42}}, color = {0, 0, 127}));
  connect(gain3.y, add2.u1) annotation(
    Line(points = {{-52, 9}, {-52, -98}, {-42, -98}}, color = {0, 0, 127}));
  connect(ramp.y, feedback.u2) annotation(
    Line(points = {{122, -15}, {122, -41}}, color = {0, 0, 127}));
  connect(tf_g1.y, add3.u1) annotation(
    Line(points = {{19, -8}, {43, -8}, {43, -40}, {73, -40}}, color = {0, 0, 127}));
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-109, -54}, {-91, -54}}, color = {0, 0, 127}));
  connect(feedback.y, network.u) annotation(
    Line(points = {{131, -48}, {149, -48}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 80}, {240, -160}})));
end configurationB;
