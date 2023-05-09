within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Gain gain1(k = 50) annotation(
    Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-96, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {1, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-158, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-192, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load2 annotation(
    Placement(visible = true, transformation(origin = {130, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load1 annotation(
    Placement(visible = true, transformation(origin = {130, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {32, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_2(y = if time < 60 then 50e6 else 100e6) annotation(
    Placement(visible = true, transformation(origin = {170, -10}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load4 annotation(
    Placement(visible = true, transformation(origin = {130, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {30, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load3 annotation(
    Placement(visible = true, transformation(origin = {130, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.RealExpression fo(y = 50) annotation(
    Placement(visible = true, transformation(origin = {-232, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_3(y = if time < 120 then 80e6 else 120e6) annotation(
    Placement(visible = true, transformation(origin = {170, -50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G3 annotation(
    Placement(visible = true, transformation(origin = {70, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2 annotation(
    Placement(visible = true, transformation(origin = {70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-54, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1 annotation(
    Placement(visible = true, transformation(origin = {70, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-138, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 150) annotation(
    Placement(visible = true, transformation(origin = {-28, 54}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression if_1(y = if time < 30 or time > 120 then 10e6 else 20e6) annotation(
    Placement(visible = true, transformation(origin = {170, 30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 100) annotation(
    Placement(visible = true, transformation(origin = {-126, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression if_4(y = if time < 90 then 30e6 else 10e6) annotation(
    Placement(visible = true, transformation(origin = {170, -90}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-164, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {30, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-188, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-102, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-6, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-84, -20}, {-66, -20}}, color = {0, 0, 127}));
  connect(G2.port, load1.port) annotation(
    Line(points = {{80, -10}, {102, -10}, {102, 30}, {120, 30}}, color = {0, 0, 255}));
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-153, 76}, {-126, 76}, {-126, 64}}, color = {0, 0, 127}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-178, 20}, {-170, 20}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-128, -20}, {-108, -20}}, color = {0, 0, 127}));
  connect(G3.port, load2.port) annotation(
    Line(points = {{80, -70}, {102, -70}, {102, -10}, {120, -10}}, color = {0, 0, 255}));
  connect(tf_g2.y, G2.fg) annotation(
    Line(points = {{42, -14}, {42, -12}, {70, -12}, {70, -20}}, color = {0, 0, 127}));
  connect(add.y, tf_g1.u) annotation(
    Line(points = {{-91, 26}, {20, 26}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-78, 41}, {-78, -8}, {-66, -8}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-101, -70}, {-82, -70}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-147, 20}, {-114, 20}}, color = {0, 0, 127}));
  connect(gain.u, integrator.y) annotation(
    Line(points = {{-28, 66}, {-28, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(G3.fg, feedback_g3.u2) annotation(
    Line(points = {{70, -80}, {70, -90}, {-110, -90}, {-110, -78}}, color = {0, 0, 127}));
  connect(if_2.y, load2.P) annotation(
    Line(points = {{159, -10}, {140, -10}}, color = {0, 0, 127}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-78, 64}, {-78, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(load1.P, if_1.y) annotation(
    Line(points = {{140, 30}, {159, 30}}, color = {0, 0, 127}));
  connect(if_3.y, load3.P) annotation(
    Line(points = {{159, -50}, {140, -50}}, color = {0, 0, 127}));
  connect(G3.port, load1.port) annotation(
    Line(points = {{80, -70}, {102, -70}, {102, 30}, {120, 30}}, color = {0, 0, 255}));
  connect(G2.port, load3.port) annotation(
    Line(points = {{80, -10}, {102, -10}, {102, -50}, {120, -50}}, color = {0, 0, 255}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-221, 76}, {-200, 76}}, color = {0, 0, 127}));
  connect(load4.port, G3.port) annotation(
    Line(points = {{120, -90}, {102, -90}, {102, -70}, {80, -70}}, color = {0, 0, 255}));
  connect(tf_g1.y, G1.fg) annotation(
    Line(points = {{44, 26}, {44, 28}, {70, 28}, {70, 20}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-59, -70}, {-38.5, -70}, {-38.5, -76}, {-18, -76}}, color = {0, 0, 127}));
  connect(load3.port, G3.port) annotation(
    Line(points = {{120, -50}, {102, -50}, {102, -70}, {80, -70}}, color = {0, 0, 255}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-183, 76}, {-176, 76}}, color = {0, 0, 127}));
  connect(G2.fg, feedback_g2.u2) annotation(
    Line(points = {{70, -20}, {70, -40}, {-138, -40}, {-138, -28}}, color = {0, 0, 127}));
  connect(add1.y, tf_g2.u) annotation(
    Line(points = {{-43, -14}, {18, -14}}, color = {0, 0, 127}));
  connect(add2.y, tf_g3.u) annotation(
    Line(points = {{5, -70}, {17, -70}}, color = {0, 0, 127}));
  connect(tf_g3.y, G3.fg) annotation(
    Line(points = {{41, -70}, {70, -70}, {70, -80}}, color = {0, 0, 127}));
  connect(G1.port, load4.port) annotation(
    Line(points = {{80, 30}, {102, 30}, {102, -90}, {120, -90}}, color = {0, 0, 255}));
  connect(G1.port, load3.port) annotation(
    Line(points = {{80, 30}, {102, 30}, {102, -50}, {120, -50}}, color = {0, 0, 255}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-28, 43}, {-28, -64}, {-18, -64}}, color = {0, 0, 127}));
  connect(G2.port, load2.port) annotation(
    Line(points = {{80, -10}, {120, -10}}, color = {0, 0, 255}));
  connect(G2.port, load4.port) annotation(
    Line(points = {{80, -10}, {102, -10}, {102, -90}, {120, -90}}, color = {0, 0, 255}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-126, 41}, {-126, 32}, {-114, 32}}, color = {0, 0, 127}));
  connect(G1.port, load1.port) annotation(
    Line(points = {{80, 30}, {120, 30}}, color = {0, 0, 255}));
  connect(if_4.y, load4.P) annotation(
    Line(points = {{159, -90}, {140, -90}}, color = {0, 0, 127}));
  connect(G1.port, load2.port) annotation(
    Line(points = {{80, 30}, {102, 30}, {102, -10}, {120, -10}}, color = {0, 0, 255}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-118, -70}, {-214, -70}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(G1.fg, feedback_g1.u2) annotation(
    Line(points = {{70, 20}, {70, 4}, {-188, 4}, {-188, 12}}, color = {0, 0, 127}));
  connect(feedback_g1.u1, fo.y) annotation(
    Line(points = {{-196, 20}, {-214, 20}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-146, -20}, {-214, -20}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(load1.fl, feedback_grid1.u2) annotation(
    Line(points = {{130, 40}, {130, 48}, {-192, 48}, {-192, 68}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}})));
end configurationB;
