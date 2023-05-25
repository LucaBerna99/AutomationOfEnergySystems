within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Gain gain1(k = 50) annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-70, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-150, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-230, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-110, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {30, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 50) annotation(
    Placement(visible = true, transformation(origin = {-290, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-50, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-150, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 150) annotation(
    Placement(visible = true, transformation(origin = {-30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain gain2(k = 100) annotation(
    Placement(visible = true, transformation(origin = {-110, 50}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-150, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {30, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-190, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-10, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6)  annotation(
    Placement(visible = true, transformation(origin = {70, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6)  annotation(
    Placement(visible = true, transformation(origin = {70, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6)  annotation(
    Placement(visible = true, transformation(origin = {70, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 Add annotation(
    Placement(visible = true, transformation(origin = {112, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbance annotation(
    Placement(visible = true, transformation(origin = {150, -40}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp D_Pe(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {150, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator J(k = 1/(40e3*(2*Modelica.Math.asin(1.0)*50)^2))  annotation(
    Placement(visible = true, transformation(origin = {190, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-139, 70}, {-110, 70}, {-110, 62}}, color = {0, 0, 127}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-181, 10}, {-162, 10}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-141, -50}, {-122, -50}}, color = {0, 0, 127}));
  connect(add.y, g1.u) annotation(
    Line(points = {{-79, 20}, {18, 20}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-70, 39}, {-70, -34}, {-62, -34}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-101, -110}, {-82, -110}}, color = {0, 0, 127}));
  connect(gain.u, integrator.y) annotation(
    Line(points = {{-30, 62}, {-30, 70}, {-139, 70}}, color = {0, 0, 127}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-70, 62}, {-70, 70}, {-139, 70}}, color = {0, 0, 127}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-279, 70}, {-238, 70}}, color = {0, 0, 127}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-221, 70}, {-162, 70}}, color = {0, 0, 127}));
  connect(add1.y, g2.u) annotation(
    Line(points = {{-39, -40}, {18, -40}}, color = {0, 0, 127}));
  connect(add2.y, g3.u) annotation(
    Line(points = {{1, -100}, {18, -100}}, color = {0, 0, 127}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-30, 39}, {-30, -94}, {-22, -94}}, color = {0, 0, 127}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-110, 39}, {-110, 26}, {-102, 26}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-138, 10}, {-120, 10}, {-120, 14}, {-102, 14}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-58, -110}, {-40, -110}, {-40, -106}, {-22, -106}}, color = {0, 0, 127}));
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-98, -50}, {-80, -50}, {-80, -46}, {-62, -46}}, color = {0, 0, 127}));
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{42, 20}, {58, 20}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{42, -40}, {58, -40}}, color = {0, 0, 127}));
  connect(g3.y, Pn3.u) annotation(
    Line(points = {{42, -100}, {58, -100}}, color = {0, 0, 127}));
  connect(Pn2.y, Add.u2) annotation(
    Line(points = {{82, -40}, {100, -40}}, color = {0, 0, 127}));
  connect(Pn1.y, Add.u1) annotation(
    Line(points = {{82, 20}, {90, 20}, {90, -32}, {100, -32}}, color = {0, 0, 127}));
  connect(Pn3.y, Add.u3) annotation(
    Line(points = {{82, -100}, {90, -100}, {90, -48}, {100, -48}}, color = {0, 0, 127}));
  connect(Add.y, disturbance.u1) annotation(
    Line(points = {{124, -40}, {142, -40}}, color = {0, 0, 127}));
  connect(D_Pe.y, disturbance.u2) annotation(
    Line(points = {{150, -1}, {150, -32}}, color = {0, 0, 127}));
  connect(fo.y, feedback_g1.u1) annotation(
    Line(points = {{-278, 70}, {-260, 70}, {-260, 10}, {-198, 10}}, color = {0, 0, 127}));
  connect(fo.y, feedback_g2.u1) annotation(
    Line(points = {{-278, 70}, {-260, 70}, {-260, -50}, {-158, -50}}, color = {0, 0, 127}));
  connect(fo.y, feedback_g3.u1) annotation(
    Line(points = {{-278, 70}, {-260, 70}, {-260, -110}, {-118, -110}}, color = {0, 0, 127}));
  connect(disturbance.y, J.u) annotation(
    Line(points = {{160, -40}, {178, -40}}, color = {0, 0, 127}));
  connect(J.y, feedback_g3.u2) annotation(
    Line(points = {{202, -40}, {240, -40}, {240, -160}, {-110, -160}, {-110, -118}}, color = {0, 0, 127}));
  connect(J.y, feedback_g2.u2) annotation(
    Line(points = {{202, -40}, {240, -40}, {240, -160}, {-150, -160}, {-150, -58}}, color = {0, 0, 127}));
  connect(J.y, feedback_g1.u2) annotation(
    Line(points = {{202, -40}, {240, -40}, {240, -160}, {-190, -160}, {-190, 2}}, color = {0, 0, 127}));
  connect(J.y, feedback_grid1.u2) annotation(
    Line(points = {{202, -40}, {240, -40}, {240, -160}, {-230, -160}, {-230, 62}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 80}, {240, -160}})));
end configurationB;
