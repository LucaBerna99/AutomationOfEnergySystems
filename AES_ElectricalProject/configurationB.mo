within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {114, -40}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {5, 1}, b = {5.2071*10, 5.2071}) annotation(
    Placement(visible = true, transformation(origin = {-190, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {-2, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-228, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-270, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-86, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-142, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-38, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-158, 26}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction network(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {154, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-170, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 79/(416e4)*200) annotation(
    Placement(visible = true, transformation(origin = {-196, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-110, 26}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-102, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-214, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {20, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-128, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {-2, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6, startTime = 0) annotation(
    Placement(visible = true, transformation(origin = {114, 4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(visible = true, transformation(origin = {78, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-60, 28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-134, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-178, -46}, {-246, -46}, {-246, 50}, {-259, 50}}, color = {0, 0, 127}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-259, 50}, {-236, 50}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-150, -96}, {-246, -96}, {-246, 50}, {-259, 50}}, color = {0, 0, 127}));
  connect(gain3.u, integrator.y) annotation(
    Line(points = {{-60, 40}, {-60, 50}, {-185, 50}}, color = {0, 0, 127}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-205, -6}, {-202, -6}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-91, -96}, {-70.5, -96}, {-70.5, -102}, {-50, -102}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-161, -46}, {-141, -46}}, color = {0, 0, 127}));
  connect(add1.y, tf_g2.u) annotation(
    Line(points = {{-75, -40}, {-14, -40}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-179, -6}, {-146, -6}}, color = {0, 0, 127}));
  connect(gain2.u, integrator.y) annotation(
    Line(points = {{-110, 38}, {-110, 50}, {-185, 50}}, color = {0, 0, 127}));
  connect(integrator.y, gain1.u) annotation(
    Line(points = {{-185, 50}, {-158, 50}, {-158, 38}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-133, -96}, {-114, -96}}, color = {0, 0, 127}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-219, 50}, {-208, 50}}, color = {0, 0, 127}));
  connect(network.y, feedback_g3.u2) annotation(
    Line(points = {{165, -40}, {196, -40}, {196, -120}, {-142, -120}, {-142, -104}}, color = {0, 0, 127}));
  connect(tf_g3.y, add3.u3) annotation(
    Line(points = {{9, -96}, {37, -96}, {37, -48}, {65, -48}}, color = {0, 0, 127}));
  connect(gain1.y, add.u1) annotation(
    Line(points = {{-158, 15}, {-158, 6}, {-146, 6}}, color = {0, 0, 127}));
  connect(add2.y, tf_g3.u) annotation(
    Line(points = {{-27, -96}, {-15, -96}}, color = {0, 0, 127}));
  connect(feedback_g2.u2, network.y) annotation(
    Line(points = {{-170, -54}, {-170, -120}, {196, -120}, {196, -40}, {165, -40}}, color = {0, 0, 127}));
  connect(feedback_grid1.u2, network.y) annotation(
    Line(points = {{-228, 42}, {-228, -120}, {196, -120}, {196, -40}, {165, -40}}, color = {0, 0, 127}));
  connect(tf_g2.y, add3.u2) annotation(
    Line(points = {{9, -40}, {65, -40}}, color = {0, 0, 127}));
  connect(gain2.y, add1.u1) annotation(
    Line(points = {{-110, 15}, {-110, -34}, {-98, -34}}, color = {0, 0, 127}));
  connect(add.y, tf_g1.u) annotation(
    Line(points = {{-123, 0}, {-12, 0}}, color = {0, 0, 127}));
  connect(add3.y, feedback.u1) annotation(
    Line(points = {{89, -40}, {105, -40}}, color = {0, 0, 127}));
  connect(feedback_g1.u2, network.y) annotation(
    Line(points = {{-214, -14}, {-214, -120}, {196, -120}, {196, -40}, {165, -40}}, color = {0, 0, 127}));
  connect(feedback_g1.u1, fo.y) annotation(
    Line(points = {{-222, -6}, {-246, -6}, {-246, 50}, {-259, 50}}, color = {0, 0, 127}));
  connect(gain3.y, add2.u1) annotation(
    Line(points = {{-60, 17}, {-60, -90}, {-50, -90}}, color = {0, 0, 127}));
  connect(ramp.y, feedback.u2) annotation(
    Line(points = {{114, -7}, {114, -33}}, color = {0, 0, 127}));
  connect(tf_g1.y, add3.u1) annotation(
    Line(points = {{11, 0}, {35, 0}, {35, -32}, {65, -32}}, color = {0, 0, 127}));
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-117, -46}, {-99, -46}}, color = {0, 0, 127}));
  connect(feedback.y, network.u) annotation(
    Line(points = {{123, -40}, {141, -40}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 80}, {240, -160}})));
end configurationB;
