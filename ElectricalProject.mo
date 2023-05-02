class ElectricalProject
  extends AES;

  model configurationA
    Modelica.Blocks.Continuous.Integrator integrator annotation(
      Placement(visible = true, transformation(origin = {-116, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Feedback feedback annotation(
      Placement(visible = true, transformation(origin = {-140, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Feedback feedback2 annotation(
      Placement(visible = true, transformation(origin = {-60, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain2 annotation(
      Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Continuous.TransferFunction transferFunction1 annotation(
      Placement(visible = true, transformation(origin = {80, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction G3 annotation(
      Placement(visible = true, transformation(origin = {78, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load2 annotation(
      Placement(visible = true, transformation(origin = {180, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Blocks.Math.Feedback feedback1 annotation(
      Placement(visible = true, transformation(origin = {-90, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load4 annotation(
      Placement(visible = true, transformation(origin = {176, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1 annotation(
      Placement(visible = true, transformation(origin = {120, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add2 annotation(
      Placement(visible = true, transformation(origin = {42, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P Gen3 annotation(
      Placement(visible = true, transformation(origin = {118, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferFunction3 annotation(
      Placement(visible = true, transformation(origin = {-22, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add1 annotation(
      Placement(visible = true, transformation(origin = {-6, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain1 annotation(
      Placement(visible = true, transformation(origin = {-30, 52}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Continuous.TransferFunction transferFunction4 annotation(
      Placement(visible = true, transformation(origin = {-48, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.RealExpression fo(y = 50.0) annotation(
      Placement(visible = true, transformation(origin = {-184, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Continuous.TransferFunction transferFunction annotation(
      Placement(visible = true, transformation(origin = {78, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add annotation(
      Placement(visible = true, transformation(origin = {-54, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain annotation(
      Placement(visible = true, transformation(origin = {20, 54}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Math.Feedback fe1 annotation(
      Placement(visible = true, transformation(origin = {-144, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    AES.ProcessComponents.Electric.Loads_PAport.Load_prescribed_P load3 annotation(
      Placement(visible = true, transformation(origin = {176, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Blocks.Continuous.TransferFunction transferFunction2 annotation(
      Placement(visible = true, transformation(origin = {-110, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2 annotation(
      Placement(visible = true, transformation(origin = {118, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(feedback1.u1, fo.y) annotation(
      Line(points = {{-98, -20}, {-166, -20}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
    connect(add1.y, transferFunction.u) annotation(
      Line(points = {{5, -14}, {66, -14}}, color = {0, 0, 127}));
    connect(integrator.y, gain2.u) annotation(
      Line(points = {{-105, 76}, {-78, 76}, {-78, 64}}, color = {0, 0, 127}));
    connect(add2.y, G3.u) annotation(
      Line(points = {{53, -66}, {65, -66}}, color = {0, 0, 127}));
    connect(transferFunction.y, G2.fg) annotation(
      Line(points = {{89, -14}, {117, -14}, {117, -24}}, color = {0, 0, 127}));
    connect(feedback2.y, transferFunction3.u) annotation(
      Line(points = {{-51, -72}, {-35, -72}}, color = {0, 0, 127}));
    connect(feedback1.y, transferFunction4.u) annotation(
      Line(points = {{-81, -20}, {-61, -20}}, color = {0, 0, 127}));
    connect(gain2.y, add.u1) annotation(
      Line(points = {{-78, 41}, {-78, 32}, {-66, 32}}, color = {0, 0, 127}));
    connect(G1.fg, feedback.u2) annotation(
      Line(points = {{120, 16}, {120, 4}, {-140, 4}, {-140, 12}}, color = {0, 0, 127}));
    connect(gain1.u, integrator.y) annotation(
      Line(points = {{-30, 64}, {-30, 76}, {-105, 76}}, color = {0, 0, 127}));
    connect(transferFunction2.y, add.u2) annotation(
      Line(points = {{-99, 20}, {-66, 20}}, color = {0, 0, 127}));
    connect(feedback.y, transferFunction2.u) annotation(
      Line(points = {{-131, 20}, {-123, 20}}, color = {0, 0, 127}));
    connect(transferFunction4.y, add1.u2) annotation(
      Line(points = {{-37, -20}, {-19, -20}}, color = {0, 0, 127}));
    connect(G1.port, load2.port) annotation(
      Line(points = {{130, 26}, {150, 26}, {150, -14}, {170, -14}}, color = {0, 0, 255}));
    connect(G2.port, load2.port) annotation(
      Line(points = {{128, -14}, {170, -14}}, color = {0, 0, 255}));
    connect(Gen3.port, load4.port) annotation(
      Line(points = {{128, -66}, {148, -66}, {148, -56}, {166, -56}}, color = {0, 0, 255}));
    connect(gain.u, integrator.y) annotation(
      Line(points = {{20, 66}, {20, 76}, {-105, 76}}, color = {0, 0, 127}));
    connect(gain.y, add2.u1) annotation(
      Line(points = {{20, 43}, {20, -60}, {30, -60}}, color = {0, 0, 127}));
    connect(fe1.y, integrator.u) annotation(
      Line(points = {{-135, 76}, {-128, 76}}, color = {0, 0, 127}));
    connect(feedback.u1, fo.y) annotation(
      Line(points = {{-148, 20}, {-166, 20}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
    connect(transferFunction1.y, G1.fg) annotation(
      Line(points = {{91, 26}, {119, 26}, {119, 16}}, color = {0, 0, 127}));
    connect(feedback2.u1, fo.y) annotation(
      Line(points = {{-68, -72}, {-166, -72}, {-166, 76}, {-172, 76}}, color = {0, 0, 127}));
    connect(G2.fg, feedback1.u2) annotation(
      Line(points = {{118, -24}, {118, -40}, {-90, -40}, {-90, -28}}, color = {0, 0, 127}));
    connect(Gen3.fg, feedback2.u2) annotation(
      Line(points = {{118, -76}, {118, -90}, {-60, -90}, {-60, -80}}, color = {0, 0, 127}));
    connect(add.y, transferFunction1.u) annotation(
      Line(points = {{-43, 26}, {68, 26}}, color = {0, 0, 127}));
    connect(gain1.y, add1.u1) annotation(
      Line(points = {{-30, 41}, {-30, -8}, {-18, -8}}, color = {0, 0, 127}));
    connect(fo.y, fe1.u1) annotation(
      Line(points = {{-173, 76}, {-152, 76}}, color = {0, 0, 127}));
    connect(G3.y, Gen3.fg) annotation(
      Line(points = {{89, -66}, {117, -66}, {117, -76}}, color = {0, 0, 127}));
    connect(transferFunction3.y, add2.u2) annotation(
      Line(points = {{-11, -72}, {30, -72}}, color = {0, 0, 127}));
    connect(load3.port, Gen3.port) annotation(
      Line(points = {{166, -88}, {148, -88}, {148, -66}, {128, -66}}, color = {0, 0, 255}));
  end configurationA;

  model configurationB
  Modelica.Blocks.Sources.RealExpression f0(y = 50.0)  annotation(
      Placement(visible = true, transformation(origin = {-150, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
      Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  connect(f0.y, fb1.u1) annotation(
      Line(points = {{-138, 30}, {-118, 30}}, color = {0, 0, 127}));
  end configurationB;annotation(
    uses(Modelica(version = "4.0.0")));
end ElectricalProject;
