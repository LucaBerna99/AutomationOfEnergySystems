within AES_ElectricalProject;

model configurationA
  Modelica.Blocks.Continuous.TransferFunction tf_C3(a = {1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-32, -112}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_3(y = if time < 120*60 then 80e6 else 120e6) annotation(
    Placement(visible = true, transformation(origin = {224, -96}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {68, -106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = 100) annotation(
    Placement(visible = true, transformation(origin = {-90, 82}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load1 annotation(
    Placement(visible = true, transformation(origin = {168, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load2 annotation(
    Placement(visible = true, transformation(origin = {168, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load3 annotation(
    Placement(visible = true, transformation(origin = {166, -128}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction tf_C2(a = {1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-60, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_4(y = if time < 90*60 then 30e6 else 10e6) annotation(
    Placement(visible = true, transformation(origin = {224, -128}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-70, -112}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2 annotation(
    Placement(visible = true, transformation(origin = {106, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 50) annotation(
    Placement(visible = true, transformation(origin = {-42, 82}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-128, 106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-18, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G3 annotation(
    Placement(visible = true, transformation(origin = {108, -106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-66, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 50.0) annotation(
    Placement(visible = true, transformation(origin = {-226, 106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_2(y = if time < 60*60 then 50e6 else 100e6) annotation(
    Placement(visible = true, transformation(origin = {210, 16}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1 annotation(
    Placement(visible = true, transformation(origin = {-132, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load4 annotation(
    Placement(visible = true, transformation(origin = {166, -96}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-102, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {68, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 50.0) annotation(
    Placement(visible = true, transformation(origin = {-230, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g1 annotation(
    Placement(visible = true, transformation(origin = {-152, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 150) annotation(
    Placement(visible = true, transformation(origin = {-14, -66}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {66, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid2 annotation(
    Placement(visible = true, transformation(origin = {-160, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression if_1(y = if time < 30*60 or time > 120*60 then 10e6 else 20e6) annotation(
    Placement(visible = true, transformation(origin = {208, 56}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_C1(a = {1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-122, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_grid1 annotation(
    Placement(visible = true, transformation(origin = {-156, 106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {32, -106}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1 annotation(
    Placement(visible = true, transformation(origin = {108, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(if_2.y, load2.P) annotation(
    Line(points = {{199, 16}, {178, 16}}, color = {0, 0, 127}));
  connect(feedback_grid1.y, integrator.u) annotation(
    Line(points = {{-147, 106}, {-140, 106}}, color = {0, 0, 127}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-90, 71}, {-90, 62}, {-78, 62}}, color = {0, 0, 127}));
  connect(gain3.y, add2.u1) annotation(
    Line(points = {{-14, -77}, {-14, -100}, {20, -100}}, color = {0, 0, 127}));
  connect(feedback_g3.y, tf_C3.u) annotation(
    Line(points = {{-61, -112}, {-45, -112}}, color = {0, 0, 127}));
  connect(feedback_g2.y, tf_C2.u) annotation(
    Line(points = {{-93, 10}, {-73, 10}}, color = {0, 0, 127}));
  connect(tf_C3.y, add2.u2) annotation(
    Line(points = {{-21, -112}, {20, -112}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-42, 71}, {-42, 22}, {-30, 22}}, color = {0, 0, 127}));
  connect(integrator1.y, gain3.u) annotation(
    Line(points = {{-121, -50}, {-15, -50}, {-15, -54}}, color = {0, 0, 127}));
  connect(G3.port, load4.port) annotation(
    Line(points = {{118, -106}, {138, -106}, {138, -96}, {156, -96}}, color = {0, 0, 255}));
  connect(add.y, tf_g1.u) annotation(
    Line(points = {{-55, 56}, {56, 56}}, color = {0, 0, 127}));
  connect(if_1.y, load1.P) annotation(
    Line(points = {{197, 56}, {177, 56}}, color = {0, 0, 127}));
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-117, 106}, {-90, 106}, {-90, 94}}, color = {0, 0, 127}));
  connect(tf_g2.y, G2.fg) annotation(
    Line(points = {{77, 16}, {105, 16}, {105, 6}}, color = {0, 0, 127}));
  connect(feedback_grid2.y, integrator1.u) annotation(
    Line(points = {{-151, -50}, {-144, -50}}, color = {0, 0, 127}));
  connect(tf_C1.y, add.u2) annotation(
    Line(points = {{-111, 50}, {-78, 50}}, color = {0, 0, 127}));
  connect(G1.port, load2.port) annotation(
    Line(points = {{118, 56}, {134, 56}, {134, 16}, {158, 16}}, color = {0, 0, 255}));
  connect(tf_g1.y, G1.fg) annotation(
    Line(points = {{79, 56}, {107, 56}, {107, 46}}, color = {0, 0, 127}));
  connect(G1.port, load1.port) annotation(
    Line(points = {{118, 56}, {158, 56}}, color = {0, 0, 255}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-42, 94}, {-42, 106}, {-117, 106}}, color = {0, 0, 127}));
  connect(G1.fg, feedback_g1.u2) annotation(
    Line(points = {{108, 46}, {108, 34}, {-152, 34}, {-152, 42}}, color = {0, 0, 127}));
  connect(f0.y, feedback_grid2.u1) annotation(
    Line(points = {{-219, -50}, {-168, -50}}, color = {0, 0, 127}));
  connect(load4.fl, feedback_grid2.u2) annotation(
    Line(points = {{166, -86}, {166, -72}, {-160, -72}, {-160, -58}}, color = {0, 0, 127}));
  connect(load1.fl, feedback_grid1.u2) annotation(
    Line(points = {{168, 66}, {168, 74}, {-156, 74}, {-156, 98}}, color = {0, 0, 127}));
  connect(G2.port, load2.port) annotation(
    Line(points = {{116, 16}, {158, 16}}, color = {0, 0, 255}));
  connect(tf_C2.y, add1.u2) annotation(
    Line(points = {{-49, 10}, {-31, 10}}, color = {0, 0, 127}));
  connect(G2.fg, feedback_g2.u2) annotation(
    Line(points = {{106, 6}, {106, -10}, {-102, -10}, {-102, 2}}, color = {0, 0, 127}));
  connect(G3.fg, feedback_g3.u2) annotation(
    Line(points = {{108, -116}, {108, -130}, {-70, -130}, {-70, -120}}, color = {0, 0, 127}));
  connect(add2.y, tf_g3.u) annotation(
    Line(points = {{43, -106}, {55, -106}}, color = {0, 0, 127}));
  connect(load4.P, if_3.y) annotation(
    Line(points = {{176, -96}, {213, -96}}, color = {0, 0, 127}));
  connect(add1.y, tf_g2.u) annotation(
    Line(points = {{-7, 16}, {54, 16}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, f0.y) annotation(
    Line(points = {{-78, -112}, {-182, -112}, {-182, -50}, {-219, -50}}, color = {0, 0, 127}));
  connect(load3.port, G3.port) annotation(
    Line(points = {{156, -128}, {138, -128}, {138, -106}, {118, -106}}, color = {0, 0, 255}));
  connect(tf_g3.y, G3.fg) annotation(
    Line(points = {{79, -106}, {107, -106}, {107, -116}}, color = {0, 0, 127}));
  connect(load3.P, if_4.y) annotation(
    Line(points = {{176, -128}, {213, -128}}, color = {0, 0, 127}));
  connect(fo.y, feedback_grid1.u1) annotation(
    Line(points = {{-215, 106}, {-164, 106}}, color = {0, 0, 127}));
  connect(G2.port, load1.port) annotation(
    Line(points = {{116, 16}, {134, 16}, {134, 56}, {158, 56}}, color = {0, 0, 255}));
  connect(feedback_g1.y, tf_C1.u) annotation(
    Line(points = {{-143, 50}, {-135, 50}}, color = {0, 0, 127}));
  connect(feedback_g1.u1, fo.y) annotation(
    Line(points = {{-160, 50}, {-200, 50}, {-200, 106}, {-214, 106}}, color = {0, 0, 127}));
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-110, 10}, {-200, 10}, {-200, 106}, {-214, 106}}, color = {0, 0, 127}));
end configurationA;
