within AES_ElectricalProject;

model configurationTot
  Modelica.Blocks.Math.Gain confA_sec3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-430, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {270, -450}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {190, -430}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator confA_integrator2(k = 0.00005922*40) annotation(
    Placement(visible = true, transformation(origin = {-430, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {190, -310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub1 annotation(
    Placement(visible = true, transformation(origin = {310, -450}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub2 annotation(
    Placement(visible = true, transformation(origin = {310, -560}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -430}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {190, -370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_OUT(a = {40*(2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {390, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31 annotation(
    Placement(visible = true, transformation(origin = {270, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {310, -172}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-710, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain confA_sec1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-510, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confA_sec2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-470, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confA_integrator1(k = 0.000568*10) annotation(
    Placement(visible = true, transformation(origin = {-490, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki2(k = 1/5) annotation(
    Placement(visible = true, transformation(origin = {-150, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki3(k = 2/5) annotation(
    Placement(visible = true, transformation(origin = {-110, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki1(k = 2/5) annotation(
    Placement(visible = true, transformation(origin = {-190, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confB_integrator(k = 79/(416e4)*200, use_reset = false) annotation(
    Placement(visible = true, transformation(origin = {-150, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction confA_prim1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-530, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_prim2(a = {1}, b = {0.469}*5) annotation(
    Placement(visible = true, transformation(origin = {-490, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_prim3(a = {0.025, 1}, b = {49.75, 1}*0.589244) annotation(
    Placement(visible = true, transformation(origin = {-450, -250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp1(a = {5*0.1, 1}, b = {5.2071*10, 5.2071}) annotation(
    Placement(visible = true, transformation(origin = {-210, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-130, -248}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp2(a = {20*0.1, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-170, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb1 annotation(
    Placement(visible = true, transformation(origin = {-570, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb2 annotation(
    Placement(visible = true, transformation(origin = {-610, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_fb annotation(
    Placement(visible = true, transformation(origin = {-330, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_1 annotation(
    Placement(visible = true, transformation(origin = {-590, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_2 annotation(
    Placement(visible = true, transformation(origin = {-550, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_3 annotation(
    Placement(visible = true, transformation(origin = {-510, -250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_2 annotation(
    Placement(visible = true, transformation(origin = {-230, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_1 annotation(
    Placement(visible = true, transformation(origin = {-270, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_3 annotation(
    Placement(visible = true, transformation(origin = {-190, -248}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression total(y = if time < 5000 then false else true) annotation(
    Placement(visible = true, transformation(origin = {50, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw1 annotation(
    Placement(visible = true, transformation(origin = {110, -310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw2 annotation(
    Placement(visible = true, transformation(origin = {110, -370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw3 annotation(
    Placement(visible = true, transformation(origin = {110, -430}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw3(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -430}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw2(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -370}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw1(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confB_Pe(y = if time <= 10e-100 then 0 elseif time <= 1800 then 170e6
   elseif time <= 3600 then 180e6
   elseif time <= 5400 then 230e6
   elseif time <= 7200 then 210e6
   elseif time <= 9000 then 240e6 else 190e6) annotation(
    Placement(visible = true, transformation(origin = {270, -130}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = if time <= 10e-100 then 0 elseif time <= 10e-100 then 0
   elseif time <= 1800 then 170e6
   elseif time <= 3600 then 180e6
   elseif time <= 5400 then 230e6
   elseif time <= 7200 then 210e6
   elseif time <= 9000 then 240e6 else 190e6) annotation(
    Placement(visible = true, transformation(origin = {270, -380}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time <= 10e-100 then 0 elseif time <= 5400 then 120e6
   elseif time <= 7200 then 90e6 else 130e6) annotation(
    Placement(visible = true, transformation(origin = {270, -530}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confA_prim_sec_terz1 annotation(
    Placement(visible = true, transformation(origin = {-490, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confA_prim_sec_terz2 annotation(
    Placement(visible = true, transformation(origin = {-450, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confA_prim_sec_terz3 annotation(
    Placement(visible = true, transformation(origin = {-410, -230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confA_terz1(y = 0.66) annotation(
    Placement(visible = true, transformation(origin = {-530, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confA_terz2(y = 0.34) annotation(
    Placement(visible = true, transformation(origin = {-490, -230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confA_terz3 annotation(
    Placement(visible = true, transformation(origin = {-450, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confB_prim_sec_terz1 annotation(
    Placement(visible = true, transformation(origin = {-170, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confB_prim_sec_terz2 annotation(
    Placement(visible = true, transformation(origin = {-130, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 confB_prim_sec_terz3 annotation(
    Placement(visible = true, transformation(origin = {-90, -230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confB_terz1(y = if time <= 1800 then 0.07 elseif time <= 3600 then 0.1
   elseif time <= 5400 then 0.24
   elseif time <= 7200 then 0.19
   elseif time <= 9000 then 0.26 else 0.19) annotation(
    Placement(visible = true, transformation(origin = {-210, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confB_terz2(y = if time <= 1800 then 0.29 elseif time <= 3600 then 0.28
   elseif time <= 5400 then 0.22
   elseif time <= 7200 then 0.24
   elseif time <= 9000 then 0.21 else 0.26) annotation(
    Placement(visible = true, transformation(origin = {-170, -230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confB_terz3(y = if time <= 1800 then 0.64 elseif time <= 3600 then 0.62
   elseif time <= 5400 then 0.54
   elseif time <= 7200 then 0.57
   elseif time <= 9000 then 0.53 else 0.60) annotation(
    Placement(visible = true, transformation(origin = {-130, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confB annotation(
    Placement(visible = true, transformation(origin = {290, -220}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confB(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {290, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch confB_switch_out annotation(
    Placement(visible = true, transformation(origin = {350, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch confA_switch_out1 annotation(
    Placement(visible = true, transformation(origin = {390, -440}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confA_sub1(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {330, -410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confA_sub1 annotation(
    Placement(visible = true, transformation(origin = {330, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA__sub1_OUT(a = {30e3*(2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {430, -440}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch confA_switch_out2 annotation(
    Placement(visible = true, transformation(origin = {386, -540}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confA_sub2 annotation(
    Placement(visible = true, transformation(origin = {330, -510}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confA_sub2(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {330, -530}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA__sub2_OUT(a = {10e3*(2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {430, -540}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(AddSub1.y, disturbanceSub1.u1) annotation(
    Line(points = {{281, -450}, {301, -450}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{161, -370}, {177, -370}}, color = {0, 0, 127}));
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{161, -310}, {177, -310}}, color = {0, 0, 127}));
  connect(g3.y, Pn3.u) annotation(
    Line(points = {{161, -430}, {178, -430}}, color = {0, 0, 127}));
  connect(add31.y, feedback.u1) annotation(
    Line(points = {{281, -172}, {302, -172}}, color = {0, 0, 127}));
  connect(confA_integrator2.y, confA_sec3.u) annotation(
    Line(points = {{-430, -81}, {-430, -99}}, color = {0, 0, 127}));
  connect(confA_integrator1.y, confA_sec1.u) annotation(
    Line(points = {{-490, -81}, {-490, -91}, {-510, -91}, {-510, -99}}, color = {0, 0, 127}));
  connect(confA_integrator1.y, confA_sec2.u) annotation(
    Line(points = {{-490, -81}, {-490, -91}, {-470, -91}, {-470, -99}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki2.u) annotation(
    Line(points = {{-150, -81}, {-150, -98}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki1.u) annotation(
    Line(points = {{-150, -81}, {-150, -93}, {-190, -93}, {-190, -98}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki3.u) annotation(
    Line(points = {{-150, -81}, {-150, -93}, {-110, -93}, {-110, -98}}, color = {0, 0, 127}));
  connect(confA_fb1.y, confA_integrator1.u) annotation(
    Line(points = {{-561, -30}, {-491, -30}, {-491, -58}}, color = {0, 0, 127}));
  connect(confA_fb2.y, confA_integrator2.u) annotation(
    Line(points = {{-601, 10}, {-430, 10}, {-430, -58}}, color = {0, 0, 127}));
  connect(confB_fb.y, confB_integrator.u) annotation(
    Line(points = {{-321, 50}, {-150, 50}, {-150, -58}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{201, -430}, {251, -430}, {251, -560}, {302, -560}}, color = {0, 0, 127}));
  connect(f0.y, confB_fb.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 50}, {-338, 50}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb2.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 10}, {-618, 10}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb1.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -30}, {-578, -30}}, color = {0, 0, 127}));
  connect(confA_1.y, confA_prim1.u) annotation(
    Line(points = {{-581, -170}, {-542, -170}}, color = {0, 0, 127}));
  connect(confA_3.y, confA_prim3.u) annotation(
    Line(points = {{-501, -250}, {-463, -250}}, color = {0, 0, 127}));
  connect(confA_2.y, confA_prim2.u) annotation(
    Line(points = {{-541, -210}, {-503, -210}}, color = {0, 0, 127}));
  connect(confB_1.y, confB_kp1.u) annotation(
    Line(points = {{-260, -170}, {-222, -170}}, color = {0, 0, 127}));
  connect(confB_2.y, confB_kp2.u) annotation(
    Line(points = {{-221, -210}, {-183, -210}}, color = {0, 0, 127}));
  connect(confB_3.y, confB_kp3.u) annotation(
    Line(points = {{-181, -248}, {-143, -248}}, color = {0, 0, 127}));
  connect(f0.y, confA_1.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -170}, {-598, -170}}, color = {0, 0, 127}));
  connect(f0.y, confA_2.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -210}, {-558, -210}}, color = {0, 0, 127}));
  connect(f0.y, confA_3.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -250}, {-518, -250}}, color = {0, 0, 127}));
  connect(f0.y, confB_1.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -170}, {-278, -170}}, color = {0, 0, 127}));
  connect(f0.y, confB_2.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -210}, {-238, -210}}, color = {0, 0, 127}));
  connect(f0.y, confB_3.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -248}, {-198, -248}}, color = {0, 0, 127}));
  connect(boolSw3.y, sw3.u2) annotation(
    Line(points = {{61, -430}, {98, -430}}, color = {255, 0, 255}));
  connect(boolSw1.y, sw1.u2) annotation(
    Line(points = {{61, -310}, {98, -310}}, color = {255, 0, 255}));
  connect(boolSw2.y, sw2.u2) annotation(
    Line(points = {{61, -370}, {97, -370}}, color = {255, 0, 255}));
  connect(sw1.y, g1.u) annotation(
    Line(points = {{121, -310}, {137, -310}}, color = {0, 0, 127}));
  connect(sw2.y, g2.u) annotation(
    Line(points = {{121, -370}, {137, -370}}, color = {0, 0, 127}));
  connect(sw3.y, g3.u) annotation(
    Line(points = {{121, -430}, {137, -430}}, color = {0, 0, 127}));
  connect(confA_sec1.y, confA_prim_sec_terz1.u1) annotation(
    Line(points = {{-510, -120}, {-510, -142}, {-502, -142}}, color = {0, 0, 127}));
  connect(confA_prim1.y, confA_prim_sec_terz1.u2) annotation(
    Line(points = {{-518, -170}, {-510, -170}, {-510, -150}, {-502, -150}}, color = {0, 0, 127}));
  connect(confA_terz1.y, confA_prim_sec_terz1.u3) annotation(
    Line(points = {{-518, -190}, {-510, -190}, {-510, -158}, {-502, -158}}, color = {0, 0, 127}));
  connect(confA_terz2.y, confA_prim_sec_terz2.u3) annotation(
    Line(points = {{-478, -230}, {-470, -230}, {-470, -198}, {-462, -198}}, color = {0, 0, 127}));
  connect(confA_prim2.y, confA_prim_sec_terz2.u2) annotation(
    Line(points = {{-478, -210}, {-470, -210}, {-470, -190}, {-462, -190}}, color = {0, 0, 127}));
  connect(confA_sec2.y, confA_prim_sec_terz2.u1) annotation(
    Line(points = {{-470, -120}, {-470, -182}, {-462, -182}}, color = {0, 0, 127}));
  connect(confA_sec3.y, confA_prim_sec_terz3.u1) annotation(
    Line(points = {{-430, -120}, {-430, -222}, {-422, -222}}, color = {0, 0, 127}));
  connect(confA_prim3.y, confA_prim_sec_terz3.u2) annotation(
    Line(points = {{-438, -250}, {-430, -250}, {-430, -230}, {-422, -230}}, color = {0, 0, 127}));
  connect(confA_terz3.y, confA_prim_sec_terz3.u3) annotation(
    Line(points = {{-438, -270}, {-430, -270}, {-430, -238}, {-422, -238}}, color = {0, 0, 127}));
  connect(confA_prim_sec_terz1.y, sw1.u3) annotation(
    Line(points = {{-478, -150}, {-360, -150}, {-360, -318}, {98, -318}}, color = {0, 0, 127}));
  connect(confA_prim_sec_terz2.y, sw2.u3) annotation(
    Line(points = {{-438, -190}, {-360, -190}, {-360, -378}, {98, -378}}, color = {0, 0, 127}));
  connect(confA_prim_sec_terz3.y, sw3.u3) annotation(
    Line(points = {{-398, -230}, {-360, -230}, {-360, -438}, {98, -438}}, color = {0, 0, 127}));
  connect(confB_kp1.y, confB_prim_sec_terz1.u2) annotation(
    Line(points = {{-198, -170}, {-190, -170}, {-190, -150}, {-182, -150}}, color = {0, 0, 127}));
  connect(confB_ki1.y, confB_prim_sec_terz1.u1) annotation(
    Line(points = {{-190, -120}, {-190, -142}, {-182, -142}}, color = {0, 0, 127}));
  connect(confB_ki2.y, confB_prim_sec_terz2.u1) annotation(
    Line(points = {{-150, -120}, {-150, -182}, {-142, -182}}, color = {0, 0, 127}));
  connect(confB_ki3.y, confB_prim_sec_terz3.u1) annotation(
    Line(points = {{-110, -120}, {-110, -222}, {-102, -222}}, color = {0, 0, 127}));
  connect(confB_kp2.y, confB_prim_sec_terz2.u2) annotation(
    Line(points = {{-158, -210}, {-150, -210}, {-150, -190}, {-142, -190}}, color = {0, 0, 127}));
  connect(confB_kp3.y, confB_prim_sec_terz3.u2) annotation(
    Line(points = {{-118, -248}, {-110, -248}, {-110, -230}, {-102, -230}}, color = {0, 0, 127}));
  connect(confB_terz1.y, confB_prim_sec_terz1.u3) annotation(
    Line(points = {{-198, -190}, {-190, -190}, {-190, -158}, {-182, -158}}, color = {0, 0, 127}));
  connect(confB_terz2.y, confB_prim_sec_terz2.u3) annotation(
    Line(points = {{-158, -230}, {-150, -230}, {-150, -198}, {-142, -198}}, color = {0, 0, 127}));
  connect(confB_terz3.y, confB_prim_sec_terz3.u3) annotation(
    Line(points = {{-118, -270}, {-110, -270}, {-110, -238}, {-102, -238}}, color = {0, 0, 127}));
  connect(confB_prim_sec_terz1.y, sw1.u1) annotation(
    Line(points = {{-158, -150}, {0, -150}, {0, -302}, {98, -302}}, color = {0, 0, 127}));
  connect(confB_prim_sec_terz2.y, sw2.u1) annotation(
    Line(points = {{-118, -190}, {0, -190}, {0, -362}, {98, -362}}, color = {0, 0, 127}));
  connect(confB_prim_sec_terz3.y, sw3.u1) annotation(
    Line(points = {{-78, -230}, {0, -230}, {0, -422}, {98, -422}}, color = {0, 0, 127}));
  connect(Pn1.y, AddSub1.u1) annotation(
    Line(points = {{202, -310}, {240, -310}, {240, -444}, {258, -444}}, color = {0, 0, 127}));
  connect(Pn2.y, AddSub1.u2) annotation(
    Line(points = {{202, -370}, {240, -370}, {240, -456}, {258, -456}}, color = {0, 0, 127}));
  connect(Pn1.y, add31.u1) annotation(
    Line(points = {{202, -310}, {220, -310}, {220, -164}, {258, -164}}, color = {0, 0, 127}));
  connect(Pn2.y, add31.u2) annotation(
    Line(points = {{202, -370}, {220, -370}, {220, -172}, {258, -172}}, color = {0, 0, 127}));
  connect(Pn3.y, add31.u3) annotation(
    Line(points = {{202, -430}, {220, -430}, {220, -180}, {258, -180}}, color = {0, 0, 127}));
  connect(realExpression.y, disturbanceSub1.u2) annotation(
    Line(points = {{282, -380}, {310, -380}, {310, -442}}, color = {0, 0, 127}));
  connect(expr_boolSw_confB.y, confB_switch_out.u2) annotation(
    Line(points = {{301, -200}, {320, -200}, {320, -180}, {338, -180}}, color = {255, 0, 255}));
  connect(zero_confB.y, confB_switch_out.u3) annotation(
    Line(points = {{301, -220}, {320, -220}, {320, -188}, {338, -188}}, color = {0, 0, 127}));
  connect(feedback.y, confB_switch_out.u1) annotation(
    Line(points = {{320, -172}, {338, -172}}, color = {0, 0, 127}));
  connect(confB_switch_out.y, confB_OUT.u) annotation(
    Line(points = {{362, -180}, {378, -180}}, color = {0, 0, 127}));
  connect(confB_OUT.y, confB_3.u2) annotation(
    Line(points = {{402, -180}, {440, -180}, {440, -280}, {-190, -280}, {-190, -256}}, color = {0, 0, 127}));
  connect(confB_OUT.y, confB_2.u2) annotation(
    Line(points = {{402, -180}, {440, -180}, {440, -280}, {-230, -280}, {-230, -218}}, color = {0, 0, 127}));
  connect(confB_OUT.y, confB_1.u2) annotation(
    Line(points = {{402, -180}, {440, -180}, {440, -280}, {-270, -280}, {-270, -178}}, color = {0, 0, 127}));
  connect(confB_OUT.y, confB_fb.u2) annotation(
    Line(points = {{402, -180}, {440, -180}, {440, -280}, {-330, -280}, {-330, 42}}, color = {0, 0, 127}));
  connect(zero_confA_sub1.y, confA_switch_out1.u1) annotation(
    Line(points = {{341, -390}, {359, -390}, {359, -432}, {377, -432}}, color = {0, 0, 127}));
  connect(expr_boolSw_confA_sub1.y, confA_switch_out1.u2) annotation(
    Line(points = {{341, -410}, {359, -410}, {359, -440}, {377, -440}}, color = {255, 0, 255}));
  connect(disturbanceSub1.y, confA_switch_out1.u3) annotation(
    Line(points = {{320, -450}, {359, -450}, {359, -448}, {378, -448}}, color = {0, 0, 127}));
  connect(confA_switch_out1.y, confA__sub1_OUT.u) annotation(
    Line(points = {{401, -440}, {418, -440}}, color = {0, 0, 127}));
  connect(expr_boolSw_confA_sub2.y, confA_switch_out2.u2) annotation(
    Line(points = {{341, -530}, {355, -530}, {355, -540}, {373, -540}}, color = {255, 0, 255}));
  connect(zero_confA_sub2.y, confA_switch_out2.u1) annotation(
    Line(points = {{341, -510}, {355, -510}, {355, -532}, {373, -532}}, color = {0, 0, 127}));
  connect(confA_switch_out2.y, confA__sub2_OUT.u) annotation(
    Line(points = {{397, -540}, {417, -540}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, confA_switch_out2.u3) annotation(
    Line(points = {{320, -560}, {354, -560}, {354, -548}, {374, -548}}, color = {0, 0, 127}));
  connect(confA__sub1_OUT.y, confA_2.u2) annotation(
    Line(points = {{442, -440}, {460, -440}, {460, -480}, {-550, -480}, {-550, -218}}, color = {0, 0, 127}));
  connect(confA__sub1_OUT.y, confA_1.u2) annotation(
    Line(points = {{442, -440}, {460, -440}, {460, -480}, {-590, -480}, {-590, -178}}, color = {0, 0, 127}));
  connect(confA__sub2_OUT.y, confA_3.u2) annotation(
    Line(points = {{442, -540}, {460, -540}, {460, -580}, {-510, -580}, {-510, -258}}, color = {0, 0, 127}));
  connect(confA__sub2_OUT.y, confA_fb2.u2) annotation(
    Line(points = {{442, -540}, {460, -540}, {460, -580}, {-610, -580}, {-610, 2}}, color = {0, 0, 127}));
  connect(confA__sub1_OUT.y, confA_fb1.u2) annotation(
    Line(points = {{442, -440}, {460, -440}, {460, -480}, {-570, -480}, {-570, -38}}, color = {0, 0, 127}));
  connect(realExpression1.y, disturbanceSub2.u2) annotation(
    Line(points = {{282, -530}, {310, -530}, {310, -552}}, color = {0, 0, 127}));
  connect(confB_Pe.y, feedback.u2) annotation(
    Line(points = {{282, -130}, {310, -130}, {310, -164}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-720, 80}, {460, -580}})),
  Icon(coordinateSystem(extent = {{-820, -580}, {460, 80}})));
end configurationTot;
