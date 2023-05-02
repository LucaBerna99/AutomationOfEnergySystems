within AES_ElectricalProject;

model configurationA

  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2 annotation(
    Placement(visible = true, transformation(origin = {118, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-6, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2 annotation(
    Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = if time < 90 then 30e6 else 10e6) annotation(
    Placement(visible = true, transformation(origin = {236, -148}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-54, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time < 120 then 80e6 else 120e6) annotation(
    Placement(visible = true, transformation(origin = {236, -116}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1 annotation(
    Placement(visible = true, transformation(origin = {-120, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction3 annotation(
    Placement(visible = true, transformation(origin = {-20, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pe2(y = if time < 30 then 10e6 or time > 120 else 20e6) annotation(
    Placement(visible = true, transformation(origin = {220, 26}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 50.0) annotation(
    Placement(visible = true, transformation(origin = {-188, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {44, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {78, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback2 annotation(
    Placement(visible = true, transformation(origin = {-58, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1 annotation(
    Placement(visible = true, transformation(origin = {120, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator annotation(
    Placement(visible = true, transformation(origin = {-116, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction G3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {80, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction2 annotation(
    Placement(visible = true, transformation(origin = {-110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction4 annotation(
    Placement(visible = true, transformation(origin = {-48, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fe1 annotation(
    Placement(visible = true, transformation(origin = {-144, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain annotation(
    Placement(visible = true, transformation(origin = {-2, -96}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression realExpression3(y = if time < 60 then 50e6 else 100e6) annotation(
    Placement(visible = true, transformation(origin = {222, -14}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load1 annotation(
    Placement(visible = true, transformation(origin = {180, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Feedback feedback3 annotation(
    Placement(visible = true, transformation(origin = {-148, -76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load4 annotation(
    Placement(visible = true, transformation(origin = {178, -116}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.RealExpression fo(y = 50.0) annotation(
    Placement(visible = true, transformation(origin = {-184, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-140, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1 annotation(
    Placement(visible = true, transformation(origin = {-30, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load2 annotation(
    Placement(visible = true, transformation(origin = {180, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {80, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load3 annotation(
    Placement(visible = true, transformation(origin = {178, -148}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P Gen3 annotation(
    Placement(visible = true, transformation(origin = {120, -126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(realExpression3.y, load2.P) annotation(
    Line(points = {{211, -14}, {190, -14}}, color = {0, 0, 127}));
  connect(G2.fg, feedback1.u2) annotation(
    Line(points = {{118, -24}, {118, -40}, {-90, -40}, {-90, -28}}, color = {0, 0, 127}));
  connect(G1.port, load2.port) annotation(
    Line(points = {{130, 26}, {150, 26}, {150, -14}, {170, -14}}, color = {0, 0, 255}));
  connect(feedback3.y, integrator1.u) annotation(
    Line(points = {{-139, -76}, {-132, -76}}, color = {0, 0, 127}));
  connect(G1.fg, feedback.u2) annotation(
    Line(points = {{120, 16}, {120, 4}, {-140, 4}, {-140, 12}}, color = {0, 0, 127}));
  connect(realExpression.y, feedback3.u1) annotation(
    Line(points = {{-177, -76}, {-156, -76}}, color = {0, 0, 127}));
  connect(fe1.y, integrator.u) annotation(
    Line(points = {{-135, 76}, {-128, 76}}, color = {0, 0, 127}));
  connect(feedback2.u1, fo.y) annotation(
    Line(points = {{-66, -132}, {-166, -132}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
  connect(integrator.y, gain2.u) annotation(
    Line(points = {{-105, 76}, {-78, 76}, {-78, 64}}, color = {0, 0, 127}));
  connect(Gen3.port, load4.port) annotation(
    Line(points = {{130, -126}, {150, -126}, {150, -116}, {168, -116}}, color = {0, 0, 255}));
  connect(transferFunction4.y, add1.u2) annotation(
    Line(points = {{-37, -20}, {-19, -20}}, color = {0, 0, 127}));
  connect(G3.y, Gen3.fg) annotation(
    Line(points = {{91, -126}, {119, -126}, {119, -136}}, color = {0, 0, 127}));
  connect(add2.y, G3.u) annotation(
    Line(points = {{55, -126}, {67, -126}}, color = {0, 0, 127}));
  connect(feedback1.u1, fo.y) annotation(
    Line(points = {{-98, -20}, {-166, -20}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
  connect(load3.port, Gen3.port) annotation(
    Line(points = {{168, -148}, {150, -148}, {150, -126}, {130, -126}}, color = {0, 0, 255}));
  connect(Gen3.fg, feedback2.u2) annotation(
    Line(points = {{120, -136}, {120, -150}, {-58, -150}, {-58, -140}}, color = {0, 0, 127}));
  connect(transferFunction3.y, add2.u2) annotation(
    Line(points = {{-9, -132}, {32, -132}}, color = {0, 0, 127}));
  connect(gain.y, add2.u1) annotation(
    Line(points = {{-2, -107}, {-2, -120}, {32, -120}}, color = {0, 0, 127}));
  connect(gain1.u, integrator.y) annotation(
    Line(points = {{-30, 64}, {-30, 76}, {-105, 76}}, color = {0, 0, 127}));
  connect(Pe2.y, load1.P) annotation(
    Line(points = {{210, 26}, {190, 26}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-30, 41}, {-30, -8}, {-18, -8}}, color = {0, 0, 127}));
  connect(transferFunction.y, G2.fg) annotation(
    Line(points = {{89, -14}, {117, -14}, {117, -24}}, color = {0, 0, 127}));
  connect(transferFunction2.y, add.u2) annotation(
    Line(points = {{-99, 20}, {-66, 20}}, color = {0, 0, 127}));
  connect(integrator1.y, gain.u) annotation(
    Line(points = {{-108, -76}, {-2, -76}, {-2, -84}}, color = {0, 0, 127}));
  connect(load4.fl, feedback3.u2) annotation(
    Line(points = {{178, -106}, {-148, -106}, {-148, -84}}, color = {0, 0, 127}));
  connect(add.y, transferFunction1.u) annotation(
    Line(points = {{-43, 26}, {68, 26}}, color = {0, 0, 127}));
  connect(G2.port, load2.port) annotation(
    Line(points = {{128, -14}, {170, -14}}, color = {0, 0, 255}));
  connect(load1.port, G2.port) annotation(
    Line(points = {{170, 26}, {150, 26}, {150, -14}, {128, -14}}, color = {0, 0, 255}));
  connect(add1.y, transferFunction.u) annotation(
    Line(points = {{5, -14}, {66, -14}}, color = {0, 0, 127}));
  connect(feedback1.y, transferFunction4.u) annotation(
    Line(points = {{-81, -20}, {-61, -20}}, color = {0, 0, 127}));
  connect(feedback.y, transferFunction2.u) annotation(
    Line(points = {{-131, 20}, {-123, 20}}, color = {0, 0, 127}));
  connect(load4.P, realExpression1.y) annotation(
    Line(points = {{188, -116}, {225, -116}}, color = {0, 0, 127}));
  connect(load3.P, realExpression2.y) annotation(
    Line(points = {{188, -148}, {225, -148}}, color = {0, 0, 127}));
  connect(transferFunction1.y, G1.fg) annotation(
    Line(points = {{91, 26}, {119, 26}, {119, 16}}, color = {0, 0, 127}));
  connect(feedback2.y, transferFunction3.u) annotation(
    Line(points = {{-49, -132}, {-33, -132}}, color = {0, 0, 127}));
  connect(fo.y, fe1.u1) annotation(
    Line(points = {{-173, 76}, {-152, 76}}, color = {0, 0, 127}));
  connect(gain2.y, add.u1) annotation(
    Line(points = {{-78, 41}, {-78, 32}, {-66, 32}}, color = {0, 0, 127}));
  connect(feedback.u1, fo.y) annotation(
    Line(points = {{-148, 20}, {-166, 20}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
end configurationA;
