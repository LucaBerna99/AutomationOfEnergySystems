within AES_ElectricalProject;

model configurationB
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load3 annotation(
    Placement(visible = true, transformation(origin = {128, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load1(fnom = 50) annotation(
    Placement(visible = true, transformation(origin = {130, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = if time < 5400 then 30e6 else 10e6) annotation(
    Placement(visible = true, transformation(origin = {170, -88}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction3 annotation(
    Placement(visible = true, transformation(origin = {-70, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback2 annotation(
    Placement(visible = true, transformation(origin = {-108, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction2 annotation(
    Placement(visible = true, transformation(origin = {-158, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-138, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2(Prated(displayUnit = "MW") = 50000000)  annotation(
    Placement(visible = true, transformation(origin = {70, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain annotation(
    Placement(visible = true, transformation(origin = {-28, 54}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-102, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction G3 annotation(
    Placement(visible = true, transformation(origin = {30, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fe1 annotation(
    Placement(visible = true, transformation(origin = {-192, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load2 annotation(
    Placement(visible = true, transformation(origin = {132, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-164, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 50) annotation(
    Placement(visible = true, transformation(origin = {-232, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2 annotation(
    Placement(visible = true, transformation(origin = {-126, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-6, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time < 7200 then 80e6 else 120e6) annotation(
    Placement(visible = true, transformation(origin = {170, -56}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction annotation(
    Placement(visible = true, transformation(origin = {30, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load4 annotation(
    Placement(visible = true, transformation(origin = {128, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-54, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1 annotation(
    Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression Pe2(y = if time < 1800 or time > 7200 then 10e6 else 20e6) annotation(
    Placement(visible = true, transformation(origin = {170, 26}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-188, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1(Prated(displayUnit = "MW") = 100)  annotation(
    Placement(visible = true, transformation(origin = {70, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = if time < 3600 then 50e6 else 100e6) annotation(
    Placement(visible = true, transformation(origin = {170, -14}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P Gen3(Prated(displayUnit = "MW") = 150000000)  annotation(
    Placement(visible = true, transformation(origin = {70, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1 annotation(
    Placement(visible = true, transformation(origin = {32, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction4 annotation(
    Placement(visible = true, transformation(origin = {-96, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(feedback1.u1, fo.y) annotation(
    Line(points = {{-146, -20}, {-214, -20}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(load1.P, Pe2.y) annotation(
    Line(points = {{140, 26}, {159, 26}}, color = {0, 0, 127}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-28, 43}, {-28, -60}, {-18, -60}}, color = {0, 0, 127}));
  connect(transferFunction1.y, G1.fg) annotation(
    Line(points = {{44, 26}, {72, 26}, {72, 16}, {70, 16}}, color = {0, 0, 127}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-78, 64}, {-78, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(gain.u, integrator.y) annotation(
    Line(points = {{-28, 66}, {-28, 76}, {-153, 76}}, color = {0, 0, 127}));
  connect(realExpression.y, load2.P) annotation(
    Line(points = {{159, -14}, {142, -14}}, color = {0, 0, 127}));
  connect(feedback2.y, transferFunction3.u) annotation(
    Line(points = {{-98, -72}, {-82, -72}}, color = {0, 0, 127}));
  connect(G3.y, Gen3.fg) annotation(
    Line(points = {{42, -66}, {70, -66}, {70, -76}}, color = {0, 0, 127}));
  connect(load2.port, G1.port) annotation(
    Line(points = {{122, -14}, {102, -14}, {102, 26}, {80, 26}}, color = {0, 0, 255}));
  connect(G2.port, load2.port) annotation(
    Line(points = {{80, -14}, {122, -14}}, color = {0, 0, 255}));
  connect(transferFunction3.y, add2.u2) annotation(
    Line(points = {{-59, -72}, {-18, -72}}, color = {0, 0, 127}));
  connect(transferFunction2.y, add.u2) annotation(
    Line(points = {{-147, 20}, {-114, 20}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-78, 41}, {-78, -8}, {-66, -8}}, color = {0, 0, 127}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-126, 41}, {-126, 32}, {-114, 32}}, color = {0, 0, 127}));
  connect(load4.port, Gen3.port) annotation(
    Line(points = {{118, -56}, {102, -56}, {102, -66}, {80, -66}}, color = {0, 0, 255}));
  connect(load1.port, G2.port) annotation(
    Line(points = {{120, 26}, {102, 26}, {102, -14}, {80, -14}}, color = {0, 0, 255}));
  connect(Gen3.fg, feedback2.u2) annotation(
    Line(points = {{70, -76}, {70, -90}, {-108, -90}, {-108, -80}}, color = {0, 0, 127}));
  connect(feedback.y, transferFunction2.u) annotation(
    Line(points = {{-178, 20}, {-170, 20}}, color = {0, 0, 127}));
  connect(feedback2.u1, fo.y) annotation(
    Line(points = {{-116, -72}, {-214, -72}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(G1.fg, feedback.u2) annotation(
    Line(points = {{70, 16}, {70, 4}, {-188, 4}, {-188, 12}}, color = {0, 0, 127}));
  connect(load2.port, Gen3.port) annotation(
    Line(points = {{122, -14}, {102, -14}, {102, -66}, {80, -66}}, color = {0, 0, 255}));
  connect(realExpression1.y, load4.P) annotation(
    Line(points = {{159, -56}, {138, -56}}, color = {0, 0, 127}));
  connect(load3.port, Gen3.port) annotation(
    Line(points = {{118, -88}, {102, -88}, {102, -66}, {80, -66}}, color = {0, 0, 255}));
  connect(transferFunction.y, G2.fg) annotation(
    Line(points = {{42, -14}, {70, -14}, {70, -24}}, color = {0, 0, 127}));
  connect(add1.y, transferFunction.u) annotation(
    Line(points = {{-43, -14}, {18, -14}}, color = {0, 0, 127}));
  connect(G2.fg, feedback1.u2) annotation(
    Line(points = {{70, -24}, {70, -40}, {-138, -40}, {-138, -28}}, color = {0, 0, 127}));
  connect(fe1.y, integrator.u) annotation(
    Line(points = {{-183, 76}, {-176, 76}}, color = {0, 0, 127}));
  connect(load1.port, Gen3.port) annotation(
    Line(points = {{120, 26}, {102, 26}, {102, -66}, {80, -66}}, color = {0, 0, 255}));
  connect(feedback1.y, transferFunction4.u) annotation(
    Line(points = {{-128, -20}, {-108, -20}}, color = {0, 0, 127}));
  connect(transferFunction4.y, add1.u2) annotation(
    Line(points = {{-84, -20}, {-66, -20}}, color = {0, 0, 127}));
  connect(realExpression2.y, load3.P) annotation(
    Line(points = {{159, -88}, {138, -88}}, color = {0, 0, 127}));
  connect(add.y, transferFunction1.u) annotation(
    Line(points = {{-91, 26}, {20, 26}}, color = {0, 0, 127}));
  connect(fo.y, fe1.u1) annotation(
    Line(points = {{-221, 76}, {-200, 76}}, color = {0, 0, 127}));
  connect(feedback.u1, fo.y) annotation(
    Line(points = {{-196, 20}, {-214, 20}, {-214, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(add2.y, G3.u) annotation(
    Line(points = {{6, -66}, {18, -66}}, color = {0, 0, 127}));
  connect(G1.port, load1.port) annotation(
    Line(points = {{80, 26}, {120, 26}}, color = {0, 0, 255}));
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-153, 76}, {-126, 76}, {-126, 64}}, color = {0, 0, 127}));
  connect(fe1.u2, load1.fl) annotation(
    Line(points = {{-192, 68}, {130, 68}, {130, 36}}, color = {0, 0, 127}));
  annotation(
    Diagram);
end configurationB;
