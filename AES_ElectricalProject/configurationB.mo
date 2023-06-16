within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {160, -50}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {5*0.1, 1}, b = {5.2071*10, 5.2071}, y_start = 0) annotation(
    Placement(visible = true, transformation(origin = {-170, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {10, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_confB annotation(
    Placement(visible = true, transformation(origin = {-230, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-270, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-170, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-150, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction grid(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {210, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-190, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 79/(416e4)*400, y_start = 0) annotation(
    Placement(visible = true, transformation(origin = {-190, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-100, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-90, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {20*0.1, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-130, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {10, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(visible = true, transformation(origin = {110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6)  annotation(
    Placement(visible = true, transformation(origin = {50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6)  annotation(
    Placement(visible = true, transformation(origin = {50, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6)  annotation(
    Placement(visible = true, transformation(origin = {50, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialState)  annotation(
    Placement(visible = true, transformation(origin = {10, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-210, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_1 annotation(
    Placement(visible = true, transformation(origin = {-130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_2 annotation(
    Placement(visible = true, transformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_3 annotation(
    Placement(visible = true, transformation(origin = {-30, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp DPe_sub1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {-10, 350}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp DPe(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-198, -50}, {-250, -50}, {-250, 50}, {-259, 50}}, color = {0, 0, 127}));
  connect(fo.y, feedback_confB.u1) annotation(
    Line(points = {{-259, 50}, {-238, 50}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-178, -90}, {-250, -90}, {-250, 50}, {-259, 50}}, color = {0, 0, 127}));
  connect(gain3.u, integrator.y) annotation(
    Line(points = {{-50, 42}, {-50, 50}, {-179, 50}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-181, -50}, {-142, -50}}, color = {0, 0, 127}));
  connect(gain2.u, integrator.y) annotation(
    Line(points = {{-100, 42}, {-100, 50}, {-179, 50}}, color = {0, 0, 127}));
  connect(integrator.y, gain1.u) annotation(
    Line(points = {{-179, 50}, {-150, 50}, {-150, 42}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-161, -90}, {-102, -90}}, color = {0, 0, 127}));
  connect(feedback_confB.y, integrator.u) annotation(
    Line(points = {{-221, 50}, {-202, 50}}, color = {0, 0, 127}));
  connect(add3.y, feedback.u1) annotation(
    Line(points = {{121, -50}, {152, -50}}, color = {0, 0, 127}));
  connect(feedback.y, grid.u) annotation(
    Line(points = {{169, -50}, {198, -50}}, color = {0, 0, 127}));
  connect(tf_g3.y, Pn3.u) annotation(
    Line(points = {{22, -90}, {38, -90}}, color = {0, 0, 127}));
  connect(tf_g2.y, Pn2.u) annotation(
    Line(points = {{22, -50}, {38, -50}}, color = {0, 0, 127}));
  connect(Pn1.y, add3.u1) annotation(
    Line(points = {{62, -10}, {80, -10}, {80, -42}, {98, -42}}, color = {0, 0, 127}));
  connect(Pn2.y, add3.u2) annotation(
    Line(points = {{62, -50}, {98, -50}}, color = {0, 0, 127}));
  connect(Pn3.y, add3.u3) annotation(
    Line(points = {{62, -90}, {80, -90}, {80, -58}, {98, -58}}, color = {0, 0, 127}));
  connect(grid.y, feedback_g3.u2) annotation(
    Line(points = {{222, -50}, {260, -50}, {260, -160}, {-170, -160}, {-170, -98}}, color = {0, 0, 127}));
  connect(grid.y, feedback_g2.u2) annotation(
    Line(points = {{222, -50}, {260, -50}, {260, -160}, {-190, -160}, {-190, -58}}, color = {0, 0, 127}));
  connect(grid.y, feedback_confB.u2) annotation(
    Line(points = {{222, -50}, {260, -50}, {260, -160}, {-230, -160}, {-230, 42}}, color = {0, 0, 127}));
  connect(tf_g1.y, Pn1.u) annotation(
    Line(points = {{22, -10}, {38, -10}}, color = {0, 0, 127}));
  connect(feedback1.y, tf_C1.u) annotation(
    Line(points = {{-200, -10}, {-182, -10}}, color = {0, 0, 127}));
  connect(fo.y, feedback1.u1) annotation(
    Line(points = {{-258, 50}, {-250, 50}, {-250, -10}, {-218, -10}}, color = {0, 0, 127}));
  connect(grid.y, feedback1.u2) annotation(
    Line(points = {{222, -50}, {260, -50}, {260, -160}, {-210, -160}, {-210, -18}}, color = {0, 0, 127}));
  connect(gain1.y, prim_sec_1.u1) annotation(
    Line(points = {{-150, 20}, {-150, -4}, {-142, -4}}, color = {0, 0, 127}));
  connect(gain2.y, prim_sec_2.u1) annotation(
    Line(points = {{-100, 20}, {-100, -44}, {-82, -44}}, color = {0, 0, 127}));
  connect(gain3.y, prim_sec_3.u1) annotation(
    Line(points = {{-50, 20}, {-50, -84}, {-42, -84}}, color = {0, 0, 127}));
  connect(tf_C3.y, prim_sec_3.u2) annotation(
    Line(points = {{-78, -90}, {-50, -90}, {-50, -96}, {-42, -96}}, color = {0, 0, 127}));
  connect(tf_C2.y, prim_sec_2.u2) annotation(
    Line(points = {{-118, -50}, {-100, -50}, {-100, -56}, {-82, -56}}, color = {0, 0, 127}));
  connect(tf_C1.y, prim_sec_1.u2) annotation(
    Line(points = {{-158, -10}, {-150, -10}, {-150, -16}, {-142, -16}}, color = {0, 0, 127}));
  connect(prim_sec_1.y, tf_g1.u) annotation(
    Line(points = {{-118, -10}, {-2, -10}}, color = {0, 0, 127}));
  connect(prim_sec_2.y, tf_g2.u) annotation(
    Line(points = {{-58, -50}, {-2, -50}}, color = {0, 0, 127}));
  connect(prim_sec_3.y, tf_g3.u) annotation(
    Line(points = {{-18, -90}, {-2, -90}}, color = {0, 0, 127}));
  connect(DPe.y, feedback.u2) annotation(
    Line(points = {{142, -10}, {160, -10}, {160, -42}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-280, 60}, {260, -160}})));
end configurationB;
