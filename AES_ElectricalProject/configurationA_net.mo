within AES_ElectricalProject;

model configurationA_net
  Modelica.Blocks.Sources.RealExpression TimeVaryingL1(y = if time <= 30*60 or time > 120*60 then 10e6 else 20e6) annotation(
    Placement(visible = true, transformation(origin = {130, 330}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression TimeVaryingL2(y = if time <= 60*60 or time > 150*60 then 50e6 else 100e6)  annotation(
    Placement(visible = true, transformation(origin = {130, 270}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression TimeVaryingL3(y = if time <= 120*60 then 80e6 else 120e6) annotation(
    Placement(visible = true, transformation(origin = {130, 130}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression TimeVaryingL4(y = if time <= 90*60 then 30e6 else 10e6) annotation(
    Placement(visible = true, transformation(origin = {130, 50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
    Placement(visible = true, transformation(origin = {-250, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb3 annotation(
    Placement(visible = true, transformation(origin = {-250, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki1(k = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-190, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain ki2(k = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-230, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain ki3(k = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-190, 130}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator integrator1(k = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-250, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 0.25)  annotation(
    Placement(visible = true, transformation(origin = {-250, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp3(a = {1}, b = {2})  annotation(
    Placement(visible = true, transformation(origin = {-210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp2(a = {1}, b = {2})  annotation(
    Placement(visible = true, transformation(origin = {-210, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp1(a = {1}, b = {2})  annotation(
    Placement(visible = true, transformation(origin = {-210, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {50e6})  annotation(
    Placement(visible = true, transformation(origin = {-110, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {100e6})  annotation(
    Placement(visible = true, transformation(origin = {-110, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {150e6})  annotation(
    Placement(visible = true, transformation(origin = {-110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub2 annotation(
    Placement(visible = true, transformation(origin = {-290, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub1 annotation(
    Placement(visible = true, transformation(origin = {-290, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 50)  annotation(
    Placement(visible = true, transformation(origin = {-370, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb2 annotation(
    Placement(visible = true, transformation(origin = {-250, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_linear_droop Load1(Pnom = 20e6)  annotation(
    Placement(visible = true, transformation(origin = {30, 330}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_linear_droop Load2(Pnom = 100e6)  annotation(
    Placement(visible = true, transformation(origin = {30, 270}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_linear_droop Load3(Pnom = 120e6)  annotation(
    Placement(visible = true, transformation(origin = {30, 130}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Loads_PAport.Load_linear_droop Load4(Pnom = 30e6)  annotation(
    Placement(visible = true, transformation(origin = {30, 50}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G1(Prated = 100e6, dnom = 10)  annotation(
    Placement(visible = true, transformation(origin = {-70, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G3(Prated = 150e6, dnom = 10)  annotation(
    Placement(visible = true, transformation(origin = {-70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  AES.ProcessComponents.Electric.Generators_PAport.Generator_order0_prescribed_P G2(Prated = 50e6, dnom = 10)  annotation(
    Placement(visible = true, transformation(origin = {-70, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-150, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-150, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(visible = true, transformation(origin = {-150, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(integrator1.y, ki1.u) annotation(
    Line(points = {{-239, 410}, {-189, 410}, {-189, 382}, {-191, 382}}, color = {0, 0, 127}));
  connect(integrator1.y, ki2.u) annotation(
    Line(points = {{-239, 410}, {-229, 410}, {-229, 382}, {-231, 382}}, color = {0, 0, 127}));
  connect(integrator2.y, ki3.u) annotation(
    Line(points = {{-239, 170}, {-189, 170}, {-189, 142}, {-190, 142}}, color = {0, 0, 127}));
  connect(fb3.y, kp3.u) annotation(
    Line(points = {{-240, 70}, {-222, 70}}, color = {0, 0, 127}));
  connect(fb1.y, kp1.u) annotation(
    Line(points = {{-240, 310}, {-222, 310}}, color = {0, 0, 127}));
  connect(fbsub2.y, integrator2.u) annotation(
    Line(points = {{-281, 170}, {-263, 170}}, color = {0, 0, 127}));
  connect(fbsub1.y, integrator1.u) annotation(
    Line(points = {{-281, 410}, {-262, 410}}, color = {0, 0, 127}));
  connect(f0.y, fbsub1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 410}, {-298, 410}}, color = {0, 0, 127}));
  connect(f0.y, fbsub2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 170}, {-298, 170}}, color = {0, 0, 127}));
  connect(f0.y, fb1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 310}, {-258, 310}}, color = {0, 0, 127}));
  connect(f0.y, fb3.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 70}, {-258, 70}}, color = {0, 0, 127}));
  connect(f0.y, fb2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 250}, {-258, 250}}, color = {0, 0, 127}));
  connect(fb2.y, kp2.u) annotation(
    Line(points = {{-240, 250}, {-222, 250}}, color = {0, 0, 127}));
  connect(Load1.Preq, TimeVaryingL1.y) annotation(
    Line(points = {{40, 330}, {120, 330}}, color = {0, 0, 127}));
  connect(Load2.Preq, TimeVaryingL2.y) annotation(
    Line(points = {{40, 270}, {120, 270}}, color = {0, 0, 127}));
  connect(Load3.Preq, TimeVaryingL3.y) annotation(
    Line(points = {{40, 130}, {119, 130}}, color = {0, 0, 127}));
  connect(Load4.Preq, TimeVaryingL4.y) annotation(
    Line(points = {{40, 50}, {120, 50}}, color = {0, 0, 127}));
  connect(Load1.port, Load2.port) annotation(
    Line(points = {{20, 330}, {-20, 330}, {-20, 270}, {20, 270}}, color = {0, 0, 255}));
  connect(Load2.fl, fbsub1.u2) annotation(
    Line(points = {{30, 260}, {30, 200}, {-290, 200}, {-290, 402}}, color = {0, 0, 127}));
  connect(Load4.fl, fbsub2.u2) annotation(
    Line(points = {{30, 40}, {30, 0}, {-290, 0}, {-290, 162}}, color = {0, 0, 127}));
  connect(g1.y, G1.Pcmd) annotation(
    Line(points = {{-98, 330}, {-80, 330}}, color = {0, 0, 127}));
  connect(G1.port, Load1.port) annotation(
    Line(points = {{-60, 330}, {20, 330}}, color = {0, 0, 255}));
  connect(G1.port, Load2.port) annotation(
    Line(points = {{-60, 330}, {-20, 330}, {-20, 270}, {20, 270}}, color = {0, 0, 255}));
  connect(G1.fg, fb1.u2) annotation(
    Line(points = {{-70, 320}, {-70, 290}, {-250, 290}, {-250, 302}}, color = {0, 0, 127}));
  connect(g3.y, G3.Pcmd) annotation(
    Line(points = {{-98, 90}, {-80, 90}}, color = {0, 0, 127}));
  connect(G3.port, Load3.port) annotation(
    Line(points = {{-60, 90}, {-20, 90}, {-20, 130}, {20, 130}}, color = {0, 0, 255}));
  connect(G3.port, Load4.port) annotation(
    Line(points = {{-60, 90}, {-20, 90}, {-20, 50}, {20, 50}}, color = {0, 0, 255}));
  connect(G3.fg, fb3.u2) annotation(
    Line(points = {{-70, 80}, {-70, 40}, {-250, 40}, {-250, 62}}, color = {0, 0, 127}));
  connect(g2.y, G2.Pcmd) annotation(
    Line(points = {{-98, 270}, {-80, 270}}, color = {0, 0, 127}));
  connect(G2.port, Load2.port) annotation(
    Line(points = {{-60, 270}, {20, 270}}, color = {0, 0, 255}));
  connect(G2.port, Load1.port) annotation(
    Line(points = {{-60, 270}, {-20, 270}, {-20, 330}, {20, 330}}, color = {0, 0, 255}));
  connect(G2.fg, fb2.u2) annotation(
    Line(points = {{-70, 260}, {-70, 220}, {-250, 220}, {-250, 242}}, color = {0, 0, 127}));
  connect(add3.y, g3.u) annotation(
    Line(points = {{-138, 90}, {-122, 90}}, color = {0, 0, 127}));
  connect(ki3.y, add3.u1) annotation(
    Line(points = {{-190, 120}, {-190, 96}, {-162, 96}}, color = {0, 0, 127}));
  connect(kp3.y, add3.u2) annotation(
    Line(points = {{-198, 70}, {-190, 70}, {-190, 84}, {-162, 84}}, color = {0, 0, 127}));
  connect(add2.y, g2.u) annotation(
    Line(points = {{-138, 270}, {-122, 270}}, color = {0, 0, 127}));
  connect(add1.y, g1.u) annotation(
    Line(points = {{-138, 330}, {-122, 330}}, color = {0, 0, 127}));
  connect(ki1.y, add1.u1) annotation(
    Line(points = {{-190, 360}, {-190, 336}, {-162, 336}}, color = {0, 0, 127}));
  connect(kp1.y, add1.u2) annotation(
    Line(points = {{-198, 310}, {-190, 310}, {-190, 324}, {-162, 324}}, color = {0, 0, 127}));
  connect(ki2.y, add2.u1) annotation(
    Line(points = {{-230, 360}, {-230, 276}, {-162, 276}}, color = {0, 0, 127}));
  connect(kp2.y, add2.u2) annotation(
    Line(points = {{-198, 250}, {-190, 250}, {-190, 264}, {-162, 264}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(coordinateSystem(extent = {{-380, 420}, {160, 0}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})));
end configurationA_net;
