within AES_ElectricalProject;

model configurationA_load
  Modelica.Blocks.Math.Gain beta2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-230, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {-70, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator subgrid_2(k = 1/(10e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {70, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp3(a = {0.025, 1}, b = {49.75, 1}*0.589244) annotation(
    Placement(visible = true, transformation(origin = {-210, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub1 annotation(
    Placement(visible = true, transformation(origin = {30, 300}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub2 annotation(
    Placement(visible = true, transformation(origin = {-290, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {-70, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 0.00005922*80) annotation(
    Placement(visible = true, transformation(origin = {-250, 190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator subgrid_1(k = 1/(30e3*(2*Modelica.Math.asin(1.0)*50)^2)) annotation(
    Placement(visible = true, transformation(origin = {70, 300}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {-10, 300}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb3 annotation(
    Placement(visible = true, transformation(origin = {-250, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
    Placement(visible = true, transformation(origin = {-250, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb2 annotation(
    Placement(visible = true, transformation(origin = {-250, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-370, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub2 annotation(
    Placement(visible = true, transformation(origin = {30, 110}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
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
  Modelica.Blocks.Math.Gain beta1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-190, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction kp1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-210, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-190, 150}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-110, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pe_sub1(y = if time <= 10e-100 then 0 elseif time <= 1800 then 170e6
   elseif time <= 3600 then 180e6
   elseif time <= 5400 then 230e6
  elseif time <= 7200 then 210e6
  elseif time <= 9000 then 240e6 else 190e6)  annotation(
    Placement(visible = true, transformation(origin = {-10, 370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Pe_sub2(y = if time <= 5400 then 120e6 elseif time <= 7200 then 90e6 else 130e6) annotation(
    Placement(visible = true, transformation(origin = {-10, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub2 annotation(
    Placement(visible = true, transformation(origin = {-150, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub2(y = 0)  annotation(
    Placement(visible = true, transformation(origin = {-210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub1_1 annotation(
    Placement(visible = true, transformation(origin = {-150, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 prim_sec_terz_sub1_2 annotation(
    Placement(visible = true, transformation(origin = {-150, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub1_2(y = 0.34)  annotation(
    Placement(visible = true, transformation(origin = {-210, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression terz_sub1_1(y = 0.66) annotation(
    Placement(visible = true, transformation(origin = {-210, 290}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(AddSub1.y, disturbanceSub1.u1) annotation(
    Line(points = {{2, 300}, {22, 300}}, color = {0, 0, 127}));
  connect(subgrid_2.y, fb3.u2) annotation(
    Line(points = {{81, 110}, {119, 110}, {119, 40}, {-251, 40}, {-251, 82}}, color = {0, 0, 127}));
  connect(fbsub1.y, integrator1.u) annotation(
    Line(points = {{-281, 410}, {-262, 410}}, color = {0, 0, 127}));
  connect(integrator1.y, beta1.u) annotation(
    Line(points = {{-239, 410}, {-189, 410}, {-189, 382}, {-191, 382}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fb1.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-290, 220}, {-290, 280}, {-250, 280}, {-250, 302}}, color = {0, 0, 127}));
  connect(Pn2.y, AddSub1.u2) annotation(
    Line(points = {{-58, 270}, {-40, 270}, {-40, 294}, {-22, 294}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fbsub1.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-290, 220}, {-290, 402}}, color = {0, 0, 127}));
  connect(subgrid_2.y, fbsub2.u2) annotation(
    Line(points = {{81, 110}, {119, 110}, {119, 40}, {-291, 40}, {-291, 182}}, color = {0, 0, 127}));
  connect(fb3.y, kp3.u) annotation(
    Line(points = {{-241, 90}, {-223, 90}}, color = {0, 0, 127}));
  connect(fb2.y, kp2.u) annotation(
    Line(points = {{-240, 250}, {-222, 250}}, color = {0, 0, 127}));
  connect(subgrid_1.y, fb2.u2) annotation(
    Line(points = {{82, 300}, {120, 300}, {120, 220}, {-250, 220}, {-250, 242}}, color = {0, 0, 127}));
  connect(f0.y, fb1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 310}, {-258, 310}}, color = {0, 0, 127}));
  connect(f0.y, fbsub2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 190}, {-298, 190}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, subgrid_2.u) annotation(
    Line(points = {{39, 110}, {57, 110}}, color = {0, 0, 127}));
  connect(integrator2.y, beta3.u) annotation(
    Line(points = {{-239, 190}, {-189, 190}, {-189, 162}, {-190, 162}}, color = {0, 0, 127}));
  connect(f0.y, fb3.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 90}, {-258, 90}}, color = {0, 0, 127}));
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
    Line(points = {{-99, 110}, {-83, 110}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{-59, 110}, {21, 110}}, color = {0, 0, 127}));
  connect(fbsub2.y, integrator2.u) annotation(
    Line(points = {{-281, 190}, {-263, 190}}, color = {0, 0, 127}));
  connect(integrator1.y, beta2.u) annotation(
    Line(points = {{-239, 410}, {-229, 410}, {-229, 382}, {-231, 382}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{-98, 270}, {-82, 270}}, color = {0, 0, 127}));
  connect(disturbanceSub1.y, subgrid_1.u) annotation(
    Line(points = {{40, 300}, {58, 300}}, color = {0, 0, 127}));
  connect(kp3.y, prim_sec_terz_sub2.u2) annotation(
    Line(points = {{-199, 90}, {-181, 90}, {-181, 110}, {-163, 110}}, color = {0, 0, 127}));
  connect(beta3.y, prim_sec_terz_sub2.u1) annotation(
    Line(points = {{-190, 139}, {-190, 117}, {-162, 117}}, color = {0, 0, 127}));
  connect(terz_sub2.y, prim_sec_terz_sub2.u3) annotation(
    Line(points = {{-199, 70}, {-172, 70}, {-172, 102}, {-162, 102}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub2.y, g3.u) annotation(
    Line(points = {{-139, 110}, {-123, 110}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub1_2.y, g2.u) annotation(
    Line(points = {{-138, 270}, {-122, 270}}, color = {0, 0, 127}));
  connect(prim_sec_terz_sub1_1.y, g1.u) annotation(
    Line(points = {{-138, 330}, {-122, 330}}, color = {0, 0, 127}));
  connect(beta1.y, prim_sec_terz_sub1_1.u1) annotation(
    Line(points = {{-190, 360}, {-190, 338}, {-162, 338}}, color = {0, 0, 127}));
  connect(beta2.y, prim_sec_terz_sub1_2.u1) annotation(
    Line(points = {{-230, 360}, {-230, 278}, {-162, 278}}, color = {0, 0, 127}));
  connect(kp1.y, prim_sec_terz_sub1_1.u2) annotation(
    Line(points = {{-198, 310}, {-190, 310}, {-190, 330}, {-162, 330}}, color = {0, 0, 127}));
  connect(kp2.y, prim_sec_terz_sub1_2.u2) annotation(
    Line(points = {{-198, 250}, {-190, 250}, {-190, 270}, {-162, 270}}, color = {0, 0, 127}));
  connect(terz_sub1_2.y, prim_sec_terz_sub1_2.u3) annotation(
    Line(points = {{-198, 230}, {-170, 230}, {-170, 262}, {-162, 262}}, color = {0, 0, 127}));
  connect(terz_sub1_1.y, prim_sec_terz_sub1_1.u3) annotation(
    Line(points = {{-198, 290}, {-170, 290}, {-170, 322}, {-162, 322}}, color = {0, 0, 127}));
  connect(Pe_sub2.y, disturbanceSub2.u2) annotation(
    Line(points = {{1, 170}, {29, 170}, {29, 118}}, color = {0, 0, 127}));
  connect(Pe_sub1.y, disturbanceSub1.u2) annotation(
    Line(points = {{2, 370}, {30, 370}, {30, 308}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(coordinateSystem(extent = {{-380, 420}, {120, 40}})),
    Icon(coordinateSystem(extent = {{-1000, -1000}, {1000, 1000}})),
    experiment(StartTime = 0, StopTime = 2000, Tolerance = 1e-6, Interval = 4),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STATS", s = "dassl"));
end configurationA_load;
