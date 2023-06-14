within AES_ElectricalProject;

model configurationA_net
  Modelica.Blocks.Sources.Ramp DPe_sub2(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {70, 150}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-230, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {-70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator network_2(k = 1/(10e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {70, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp3(a = {0.025, 1}, b = {49.75, 1}*0.589244) annotation(
    Placement(visible = true, transformation(origin = {-210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub1 annotation(
    Placement(visible = true, transformation(origin = {30, 300}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub2 annotation(
    Placement(visible = true, transformation(origin = {-290, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {-70, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 0.00005922*80) annotation(
    Placement(visible = true, transformation(origin = {-250, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator network_1(k = 1/(30e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {70, 300}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {-10, 300}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb3 annotation(
    Placement(visible = true, transformation(origin = {-250, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
    Placement(visible = true, transformation(origin = {-250, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb2 annotation(
    Placement(visible = true, transformation(origin = {-250, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-370, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub2 annotation(
    Placement(visible = true, transformation(origin = {30, 90}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp2(a = {1}, b = {0.469}*5) annotation(
    Placement(visible = true, transformation(origin = {-210, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {-70, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1(k = 0.000568*20) annotation(
    Placement(visible = true, transformation(origin = {-250, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub1 annotation(
    Placement(visible = true, transformation(origin = {-290, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-190, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction kp1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-210, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-190, 130}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pe_sub1(y = if time <= 10e-100 then 0 elseif time <= 1800 then 170e6
   elseif time <= 3600 then 180e6
   elseif time <= 5400 then 230e6
  elseif time <= 7200 then 210e6
  elseif time <= 9000 then 240e6 else 190e6)  annotation(
    Placement(visible = true, transformation(origin = {-10, 370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp DPe_sub1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {70, 370}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pe_sub2(y = if time <= 5400 then 120e6 elseif time <= 7200 then 90e6 else 130e6) annotation(
    Placement(visible = true, transformation(origin = {-10, 150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub2(k3 = 0)  annotation(
    Placement(visible = true, transformation(origin = {-150, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub2(y = 0)  annotation(
    Placement(visible = true, transformation(origin = {-210, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub1_1(k3 = 0)  annotation(
    Placement(visible = true, transformation(origin = {-150, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub1_2(k3 = 0)  annotation(
    Placement(visible = true, transformation(origin = {-150, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub1_2(y = 0.34)  annotation(
    Placement(visible = true, transformation(origin = {-210, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub1_1(y = 0.66) annotation(
    Placement(visible = true, transformation(origin = {-210, 290}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(AddSub1.y, disturbanceSub1.u1) annotation(
    Line(points = {{2, 300}, {22, 300}}, color = {0, 0, 127}));
  connect(network_2.y, fb3.u2) annotation(
    Line(points = {{82, 90}, {120, 90}, {120, 20}, {-250, 20}, {-250, 62}}, color = {0, 0, 127}));
  connect(fbsub1.y, integrator1.u) annotation(
    Line(points = {{-281, 410}, {-262, 410}}, color = {0, 0, 127}));
  connect(integrator1.y, ki1.u) annotation(
    Line(points = {{-239, 410}, {-189, 410}, {-189, 382}, {-191, 382}}, color = {0, 0, 127}));
  connect(network_1.y, fb1.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-290, 220}, {-290, 280}, {-250, 280}, {-250, 302}}, color = {0, 0, 127}));
  connect(Pn2.y, AddSub1.u2) annotation(
    Line(points = {{-58, 270}, {-40, 270}, {-40, 294}, {-22, 294}}, color = {0, 0, 127}));
  connect(network_1.y, fbsub1.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-290, 220}, {-290, 402}}, color = {0, 0, 127}));
  connect(network_2.y, fbsub2.u2) annotation(
    Line(points = {{82, 90}, {120, 90}, {120, 20}, {-290, 20}, {-290, 162}}, color = {0, 0, 127}));
  connect(fb3.y, kp3.u) annotation(
    Line(points = {{-240, 70}, {-222, 70}}, color = {0, 0, 127}));
  connect(fb2.y, kp2.u) annotation(
    Line(points = {{-240, 250}, {-222, 250}}, color = {0, 0, 127}));
  connect(network_1.y, fb2.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-250, 220}, {-250, 242}}, color = {0, 0, 127}));
  connect(f0.y, fb1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 310}, {-258, 310}}, color = {0, 0, 127}));
  connect(f0.y, fbsub2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 170}, {-298, 170}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, network_2.u) annotation(
    Line(points = {{40, 90}, {58, 90}}, color = {0, 0, 127}));
  connect(integrator2.y, ki3.u) annotation(
    Line(points = {{-239, 170}, {-189, 170}, {-189, 142}, {-190, 142}}, color = {0, 0, 127}));
  connect(f0.y, fb3.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 70}, {-258, 70}}, color = {0, 0, 127}));
  connect(Pn1.y, AddSub1.u1) annotation(
    Line(points = {{-58, 330}, {-40, 330}, {-40, 306}, {-22, 306}}, color = {0, 0, 127}));
  connect(f0.y, fb2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 250}, {-258, 250}}, color = {0, 0, 127}));
  connect(fb1.y, kp1.u) annotation(
    Line(points = {{-240, 310}, {-222, 310}}, color = {0, 0, 127}));
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{-98, 330}, {-82, 330}}, color = {0, 0, 127}));
  connect(f0.y, fbsub1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 410}, {-298, 410}}, color = {0, 0, 127}));
  connect(g3.y, Pn3.u) annotation(
    Line(points = {{-98, 90}, {-82, 90}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{-58, 90}, {22, 90}}, color = {0, 0, 127}));
  connect(fbsub2.y, integrator2.u) annotation(
    Line(points = {{-281, 170}, {-263, 170}}, color = {0, 0, 127}));
  connect(integrator1.y, ki2.u) annotation(
    Line(points = {{-239, 410}, {-229, 410}, {-229, 382}, {-231, 382}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{-98, 270}, {-82, 270}}, color = {0, 0, 127}));
  connect(disturbanceSub1.y, network_1.u) annotation(
    Line(points = {{40, 300}, {58, 300}}, color = {0, 0, 127}));
  connect(kp3.y, prim_sec_terz_sub2.u2) annotation(
    Line(points = {{-198, 70}, {-180, 70}, {-180, 90}, {-162, 90}}, color = {0, 0, 127}));
  connect(ki3.y, prim_sec_terz_sub2.u1) annotation(
    Line(points = {{-190, 120}, {-190, 98}, {-162, 98}}, color = {0, 0, 127}));
  connect(terz_sub2.y, prim_sec_terz_sub2.u3) annotation(
    Line(points = {{-199, 50}, {-172, 50}, {-172, 82}, {-162, 82}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub2.y, g3.u) annotation(
    Line(points = {{-138, 90}, {-122, 90}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub1_2.y, g2.u) annotation(
    Line(points = {{-138, 270}, {-122, 270}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub1_1.y, g1.u) annotation(
    Line(points = {{-138, 330}, {-122, 330}}, color = {0, 0, 127}));
  connect(ki1.y, prim_sec_terz_sub1_1.u1) annotation(
    Line(points = {{-190, 360}, {-190, 338}, {-162, 338}}, color = {0, 0, 127}));
  connect(ki2.y, prim_sec_terz_sub1_2.u1) annotation(
    Line(points = {{-230, 360}, {-230, 278}, {-162, 278}}, color = {0, 0, 127}));
  connect(kp1.y, prim_sec_terz_sub1_1.u2) annotation(
    Line(points = {{-198, 310}, {-190, 310}, {-190, 330}, {-162, 330}}, color = {0, 0, 127}));
  connect(kp2.y, prim_sec_terz_sub1_2.u2) annotation(
    Line(points = {{-198, 250}, {-190, 250}, {-190, 270}, {-162, 270}}, color = {0, 0, 127}));
  connect(DPe_sub2.y, disturbanceSub2.u2) annotation(
    Line(points = {{60, 150}, {30, 150}, {30, 98}}, color = {0, 0, 127}));
  connect(terz_sub1_2.y, prim_sec_terz_sub1_2.u3) annotation(
    Line(points = {{-198, 230}, {-170, 230}, {-170, 262}, {-162, 262}}, color = {0, 0, 127}));
  connect(terz_sub1_1.y, prim_sec_terz_sub1_1.u3) annotation(
    Line(points = {{-198, 290}, {-170, 290}, {-170, 322}, {-162, 322}}, color = {0, 0, 127}));
  connect(DPe_sub1.y, disturbanceSub1.u2) annotation(
    Line(points = {{60, 370}, {30, 370}, {30, 308}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(coordinateSystem(extent = {{-480, 420}, {120, 20}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    experiment(StartTime = 0, StopTime = 2000, Tolerance = 1e-6, Interval = 4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end configurationA_net;
