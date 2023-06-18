within AES_ElectricalProject;

model configurationA
  Modelica.Blocks.Sources.Ramp DPe_sub2(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-130, 150}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {30, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator subgrid_2(k = 1/(10e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {170, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp3(a = {0.025, 1}, b = {49.75, 1}*0.589244) annotation(
    Placement(visible = true, transformation(origin = {-110, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub1 annotation(
    Placement(visible = true, transformation(origin = {130, 80}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub2 annotation(
    Placement(visible = true, transformation(origin = {-190, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 0.00005922*80) annotation(
    Placement(visible = true, transformation(origin = {-150, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator subgrid_1(k = 1/(30e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {170, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {90, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb3 annotation(
    Placement(visible = true, transformation(origin = {-150, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
    Placement(visible = true, transformation(origin = {-150, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb2 annotation(
    Placement(visible = true, transformation(origin = {-150, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-270, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub2 annotation(
    Placement(visible = true, transformation(origin = {130, -110}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp2(a = {1}, b = {0.469}*5) annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-10, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {30, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1(k = 0.000568*20) annotation(
    Placement(visible = true, transformation(origin = {-150, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub1 annotation(
    Placement(visible = true, transformation(origin = {-190, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-90, 150}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction kp1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-90, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-10, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_1 annotation(
    Placement(visible = true, transformation(origin = {-70, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_2 annotation(
    Placement(visible = true, transformation(origin = {-70, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_3 annotation(
    Placement(visible = true, transformation(origin = {-70, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp DPe_sub1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {90, 130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(AddSub1.y, disturbanceSub1.u1) annotation(
    Line(points = {{101, 80}, {121, 80}}, color = {0, 0, 127}));
  connect(subgrid_2.y, fb3.u2) annotation(
    Line(points = {{181, -110}, {219, -110}, {219, -180}, {-151, -180}, {-151, -138}}, color = {0, 0, 127}));
  connect(fbsub1.y, integrator1.u) annotation(
    Line(points = {{-181, 190}, {-162, 190}}, color = {0, 0, 127}));
  connect(integrator1.y, beta1.u) annotation(
    Line(points = {{-139, 190}, {-89, 190}, {-89, 162}, {-91, 162}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fb1.u2) annotation(
    Line(points = {{181, 80}, {219, 80}, {219, 0}, {-191, 0}, {-191, 60}, {-151, 60}, {-151, 82}}, color = {0, 0, 127}));
  connect(Pn2.y, AddSub1.u2) annotation(
    Line(points = {{41, 50}, {59, 50}, {59, 74}, {77, 74}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fbsub1.u2) annotation(
    Line(points = {{181, 80}, {219, 80}, {219, 0}, {-191, 0}, {-191, 182}}, color = {0, 0, 127}));
  connect(subgrid_2.y, fbsub2.u2) annotation(
    Line(points = {{181, -110}, {219, -110}, {219, -180}, {-191, -180}, {-191, -38}}, color = {0, 0, 127}));
  connect(fb3.y, kp3.u) annotation(
    Line(points = {{-141, -130}, {-123, -130}}, color = {0, 0, 127}));
  connect(fb2.y, kp2.u) annotation(
    Line(points = {{-141, 30}, {-123, 30}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fb2.u2) annotation(
    Line(points = {{181, 80}, {219, 80}, {219, 0}, {-151, 0}, {-151, 22}}, color = {0, 0, 127}));
  connect(f0.y, fb1.u1) annotation(
    Line(points = {{-259, 10}, {-241, 10}, {-241, 90}, {-159, 90}}, color = {0, 0, 127}));
  connect(f0.y, fbsub2.u1) annotation(
    Line(points = {{-259, 10}, {-241, 10}, {-241, -30}, {-198, -30}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, subgrid_2.u) annotation(
    Line(points = {{139, -110}, {157, -110}}, color = {0, 0, 127}));
  connect(integrator2.y, beta3.u) annotation(
    Line(points = {{-139, -30}, {-89, -30}, {-89, -58}, {-90, -58}}, color = {0, 0, 127}));
  connect(f0.y, fb3.u1) annotation(
    Line(points = {{-259, 10}, {-241, 10}, {-241, -130}, {-158, -130}}, color = {0, 0, 127}));
  connect(Pn1.y, AddSub1.u1) annotation(
    Line(points = {{41, 110}, {59, 110}, {59, 86}, {77, 86}}, color = {0, 0, 127}));
  connect(f0.y, fb2.u1) annotation(
    Line(points = {{-259, 10}, {-241, 10}, {-241, 30}, {-159, 30}}, color = {0, 0, 127}));
  connect(fb1.y, kp1.u) annotation(
    Line(points = {{-141, 90}, {-123, 90}}, color = {0, 0, 127}));
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{1, 110}, {17, 110}}, color = {0, 0, 127}));
  connect(f0.y, fbsub1.u1) annotation(
    Line(points = {{-259, 10}, {-241, 10}, {-241, 190}, {-199, 190}}, color = {0, 0, 127}));
  connect(g3.y, Pn3.u) annotation(
    Line(points = {{1, -110}, {17, -110}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{41, -110}, {121, -110}}, color = {0, 0, 127}));
  connect(fbsub2.y, integrator2.u) annotation(
    Line(points = {{-181, -30}, {-163, -30}}, color = {0, 0, 127}));
  connect(integrator1.y, beta2.u) annotation(
    Line(points = {{-139, 190}, {-129, 190}, {-129, 162}, {-131, 162}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{1, 50}, {17, 50}}, color = {0, 0, 127}));
  connect(disturbanceSub1.y, subgrid_1.u) annotation(
    Line(points = {{139, 80}, {157, 80}}, color = {0, 0, 127}));
  connect(DPe_sub2.y, disturbanceSub2.u2) annotation(
    Line(points = {{101, -70}, {129, -70}, {129, -102}}, color = {0, 0, 127}));
  connect(prim_sec_3.y, g3.u) annotation(
    Line(points = {{-59, -110}, {-23, -110}}, color = {0, 0, 127}));
  connect(prim_sec_1.y, g1.u) annotation(
    Line(points = {{-59, 110}, {-23, 110}}, color = {0, 0, 127}));
  connect(prim_sec_2.y, g2.u) annotation(
    Line(points = {{-59, 50}, {-23, 50}}, color = {0, 0, 127}));
  connect(beta3.y, prim_sec_3.u1) annotation(
    Line(points = {{-90, -81}, {-90, -105}, {-82, -105}}, color = {0, 0, 127}));
  connect(kp3.y, prim_sec_3.u2) annotation(
    Line(points = {{-99, -130}, {-91, -130}, {-91, -116}, {-83, -116}}, color = {0, 0, 127}));
  connect(kp2.y, prim_sec_2.u2) annotation(
    Line(points = {{-99, 30}, {-91, 30}, {-91, 44}, {-83, 44}}, color = {0, 0, 127}));
  connect(beta2.y, prim_sec_2.u1) annotation(
    Line(points = {{-130, 139}, {-130, 55}, {-82, 55}}, color = {0, 0, 127}));
  connect(beta1.y, prim_sec_1.u1) annotation(
    Line(points = {{-90, 139}, {-90, 115}, {-82, 115}}, color = {0, 0, 127}));
  connect(kp1.y, prim_sec_1.u2) annotation(
    Line(points = {{-99, 90}, {-91, 90}, {-91, 104}, {-83, 104}}, color = {0, 0, 127}));
  connect(DPe_sub1.y, disturbanceSub1.u2) annotation(
    Line(points = {{101, 130}, {129, 130}, {129, 88}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(coordinateSystem(extent = {{-280, 200}, {220, -180}})),
    Icon(coordinateSystem(extent = {{-640, -330}, {640, 330}})),
    experiment(StartTime = 0, StopTime = 2000, Tolerance = 1e-6, Interval = 4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end configurationA;
