within AES_ElectricalProject;

model configurationTot
  Modelica.Blocks.Math.Gain confA_ki3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-430, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {270, -450}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {190, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator confA_integrator2(k = 0.00005922*40) annotation(
    Placement(visible = true, transformation(origin = {-430, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6) annotation(
    Placement(visible = true, transformation(origin = {190, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub1 annotation(
    Placement(visible = true, transformation(origin = {310, -450}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback disturbanceSub2 annotation(
    Placement(visible = true, transformation(origin = {310, -560}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {190, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_net(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31 annotation(
    Placement(visible = true, transformation(origin = {270, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {310, -172}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-710, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain confA_ki1(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-510, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confA_ki2(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-470, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confA_integrator1(k = 0.000568*10) annotation(
    Placement(visible = true, transformation(origin = {-490, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki2(k = 1/5) annotation(
    Placement(visible = true, transformation(origin = {-150, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki3(k = 2/5) annotation(
    Placement(visible = true, transformation(origin = {-110, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki1(k = 2/5) annotation(
    Placement(visible = true, transformation(origin = {-190, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confB_integrator(k = 79/(416e4)*200) annotation(
    Placement(visible = true, transformation(origin = {-150, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-530, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp2(a = {1}, b = {0.469}*5) annotation(
    Placement(visible = true, transformation(origin = {-490, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp3(a = {0.025, 1}, b = {49.75, 1}*0.589244) annotation(
    Placement(visible = true, transformation(origin = {-450, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp1(a = {5*0.1, 1}, b = {5.2071*10, 5.2071}) annotation(
    Placement(visible = true, transformation(origin = {-210, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-130, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp2(a = {20*0.1, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-170, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confA_add1 annotation(
    Placement(visible = true, transformation(origin = {-490, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confA_add2 annotation(
    Placement(visible = true, transformation(origin = {-450, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confA_add3 annotation(
    Placement(visible = true, transformation(origin = {-410, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add1 annotation(
    Placement(visible = true, transformation(origin = {-170, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add2 annotation(
    Placement(visible = true, transformation(origin = {-130, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add3 annotation(
    Placement(visible = true, transformation(origin = {-90, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb1 annotation(
    Placement(visible = true, transformation(origin = {-570, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb2 annotation(
    Placement(visible = true, transformation(origin = {-610, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_fb annotation(
    Placement(visible = true, transformation(origin = {-330, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confB_DPe(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confA_DPe_sub1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confA_DPe_sub2(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -530}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_1 annotation(
    Placement(visible = true, transformation(origin = {-590, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_2 annotation(
    Placement(visible = true, transformation(origin = {-550, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_3 annotation(
    Placement(visible = true, transformation(origin = {-510, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_2 annotation(
    Placement(visible = true, transformation(origin = {-230, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_1 annotation(
    Placement(visible = true, transformation(origin = {-270, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_3 annotation(
    Placement(visible = true, transformation(origin = {-190, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_net_sub2(a = {10e3*(2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -560}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_net_sub1(a = {30e3*(2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -450}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression total(y = false)  annotation(
    Placement(visible = true, transformation(origin = {-790, -250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw1 annotation(
    Placement(visible = true, transformation(origin = {110, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw2 annotation(
    Placement(visible = true, transformation(origin = {110, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch sw3 annotation(
    Placement(visible = true, transformation(origin = {110, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw3(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw2(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression boolSw1(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {50, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch boolSw_confB annotation(
    Placement(visible = true, transformation(origin = {410, -180}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confB(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {350, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch boolSw_confA_sub1 annotation(
    Placement(visible = true, transformation(origin = {410, -440}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confA_sub1(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {350, -410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression expr_boolSw_confA_sub2(y = total.y) annotation(
    Placement(visible = true, transformation(origin = {350, -530}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch boolSw_confA_sub2 annotation(
    Placement(visible = true, transformation(origin = {410, -540}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confB annotation(
    Placement(visible = true, transformation(origin = {350, -220}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confA_sub1 annotation(
    Placement(visible = true, transformation(origin = {350, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression zero_confA_sub2 annotation(
    Placement(visible = true, transformation(origin = {350, -510}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression confB_Pe(y = if time <= 1800 then 60e6 elseif time <= 3600 then 70e6
   elseif time <= 7200 then 120e6
   elseif time <= 9000 then 110e6 else 60e6)  annotation(
    Placement(visible = true, transformation(origin = {270, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression(y = if time <= 1800 then 60e60 else 60e6)  annotation(
    Placement(visible = true, transformation(origin = {270, -380}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = if time <= 5400 then 120e6 elseif time <= 7200 then 90e6 else 130e6)  annotation(
    Placement(visible = true, transformation(origin = {270, -500}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(AddSub1.y, disturbanceSub1.u1) annotation(
    Line(points = {{281, -450}, {301, -450}}, color = {0, 0, 127}));
  connect(g2.y, Pn2.u) annotation(
    Line(points = {{161, -330}, {177, -330}}, color = {0, 0, 127}));
  connect(g1.y, Pn1.u) annotation(
    Line(points = {{161, -270}, {177, -270}}, color = {0, 0, 127}));
  connect(g3.y, Pn3.u) annotation(
    Line(points = {{161, -390}, {178, -390}}, color = {0, 0, 127}));
  connect(add31.y, feedback.u1) annotation(
    Line(points = {{281, -172}, {302, -172}}, color = {0, 0, 127}));
  connect(feedback.y, confB_net.u) annotation(
    Line(points = {{319, -172}, {338, -172}}, color = {0, 0, 127}));
  connect(confA_integrator2.y, confA_ki3.u) annotation(
    Line(points = {{-430, -81}, {-430, -99}}, color = {0, 0, 127}));
  connect(confA_integrator1.y, confA_ki1.u) annotation(
    Line(points = {{-490, -81}, {-490, -91}, {-510, -91}, {-510, -99}}, color = {0, 0, 127}));
  connect(confA_integrator1.y, confA_ki2.u) annotation(
    Line(points = {{-490, -81}, {-490, -91}, {-470, -91}, {-470, -99}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki2.u) annotation(
    Line(points = {{-150, -81}, {-150, -98}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki1.u) annotation(
    Line(points = {{-150, -81}, {-150, -93}, {-190, -93}, {-190, -98}}, color = {0, 0, 127}));
  connect(confB_integrator.y, confB_ki3.u) annotation(
    Line(points = {{-150, -81}, {-150, -93}, {-110, -93}, {-110, -98}}, color = {0, 0, 127}));
  connect(confA_kp3.y, confA_add3.u2) annotation(
    Line(points = {{-439, -210}, {-430, -210}, {-430, -196}, {-422, -196}}, color = {0, 0, 127}));
  connect(confA_kp2.y, confA_add2.u2) annotation(
    Line(points = {{-479, -190}, {-473, -190}, {-473, -178}, {-463, -178}}, color = {0, 0, 127}));
  connect(confA_kp1.y, confA_add1.u2) annotation(
    Line(points = {{-519, -170}, {-511, -170}, {-511, -156}, {-503, -156}}, color = {0, 0, 127}));
  connect(confA_ki1.y, confA_add1.u1) annotation(
    Line(points = {{-510, -121}, {-510, -145}, {-502, -145}}, color = {0, 0, 127}));
  connect(confA_ki2.y, confA_add2.u1) annotation(
    Line(points = {{-470, -121}, {-470, -167}, {-462, -167}}, color = {0, 0, 127}));
  connect(confA_ki3.y, confA_add3.u1) annotation(
    Line(points = {{-430, -121}, {-430, -185}, {-422, -185}}, color = {0, 0, 127}));
  connect(confB_ki1.y, confB_add1.u1) annotation(
    Line(points = {{-190, -121}, {-190, -145}, {-182, -145}}, color = {0, 0, 127}));
  connect(confB_kp1.y, confB_add1.u2) annotation(
    Line(points = {{-199, -170}, {-191, -170}, {-191, -156}, {-183, -156}}, color = {0, 0, 127}));
  connect(confB_ki2.y, confB_add2.u1) annotation(
    Line(points = {{-150, -121}, {-150, -165}, {-142, -165}}, color = {0, 0, 127}));
  connect(confB_kp2.y, confB_add2.u2) annotation(
    Line(points = {{-159, -190}, {-151, -190}, {-151, -176}, {-143, -176}}, color = {0, 0, 127}));
  connect(confB_ki3.y, confB_add3.u1) annotation(
    Line(points = {{-110, -121}, {-110, -185}, {-102, -185}}, color = {0, 0, 127}));
  connect(confB_kp3.y, confB_add3.u2) annotation(
    Line(points = {{-119, -210}, {-111, -210}, {-111, -196}, {-103, -196}}, color = {0, 0, 127}));
  connect(confA_fb1.y, confA_integrator1.u) annotation(
    Line(points = {{-561, -30}, {-491, -30}, {-491, -58}}, color = {0, 0, 127}));
  connect(confA_fb2.y, confA_integrator2.u) annotation(
    Line(points = {{-601, 10}, {-430, 10}, {-430, -58}}, color = {0, 0, 127}));
  connect(confB_fb.y, confB_integrator.u) annotation(
    Line(points = {{-321, 50}, {-150, 50}, {-150, -58}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{201, -390}, {251, -390}, {251, -560}, {302, -560}}, color = {0, 0, 127}));
  connect(Pn2.y, AddSub1.u2) annotation(
    Line(points = {{201, -330}, {229.5, -330}, {229.5, -456}, {258, -456}}, color = {0, 0, 127}));
  connect(Pn1.y, AddSub1.u1) annotation(
    Line(points = {{201, -270}, {229, -270}, {229, -444}, {258, -444}}, color = {0, 0, 127}));
  connect(Pn3.y, add31.u3) annotation(
    Line(points = {{201, -390}, {219, -390}, {219, -180}, {258, -180}}, color = {0, 0, 127}));
  connect(Pn2.y, add31.u2) annotation(
    Line(points = {{201, -330}, {219, -330}, {219, -172}, {258, -172}}, color = {0, 0, 127}));
  connect(Pn1.y, add31.u1) annotation(
    Line(points = {{201, -270}, {219, -270}, {219, -164}, {258, -164}}, color = {0, 0, 127}));
  connect(f0.y, confB_fb.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 50}, {-338, 50}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb2.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 10}, {-618, 10}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb1.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -30}, {-578, -30}}, color = {0, 0, 127}));
  connect(confA_1.y, confA_kp1.u) annotation(
    Line(points = {{-581, -170}, {-542, -170}}, color = {0, 0, 127}));
  connect(confA_3.y, confA_kp3.u) annotation(
    Line(points = {{-501, -210}, {-463, -210}}, color = {0, 0, 127}));
  connect(confA_2.y, confA_kp2.u) annotation(
    Line(points = {{-541, -190}, {-503, -190}}, color = {0, 0, 127}));
  connect(confB_1.y, confB_kp1.u) annotation(
    Line(points = {{-260, -170}, {-222, -170}}, color = {0, 0, 127}));
  connect(confB_2.y, confB_kp2.u) annotation(
    Line(points = {{-220, -190}, {-182, -190}}, color = {0, 0, 127}));
  connect(confB_3.y, confB_kp3.u) annotation(
    Line(points = {{-180, -210}, {-142, -210}}, color = {0, 0, 127}));
  connect(f0.y, confA_1.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -170}, {-598, -170}}, color = {0, 0, 127}));
  connect(f0.y, confA_2.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -190}, {-558, -190}}, color = {0, 0, 127}));
  connect(f0.y, confA_3.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -210}, {-518, -210}}, color = {0, 0, 127}));
  connect(f0.y, confB_1.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -170}, {-278, -170}}, color = {0, 0, 127}));
  connect(f0.y, confB_2.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -190}, {-238, -190}}, color = {0, 0, 127}));
  connect(f0.y, confB_3.u1) annotation(
    Line(points = {{-698, 70}, {-308, 70}, {-308, -210}, {-198, -210}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, confA_net_sub2.u) annotation(
    Line(points = {{319, -560}, {337, -560}}, color = {0, 0, 127}));
  connect(disturbanceSub1.y, confA_net_sub1.u) annotation(
    Line(points = {{319, -450}, {337, -450}}, color = {0, 0, 127}));
  connect(boolSw3.y, sw3.u2) annotation(
    Line(points = {{61, -390}, {98, -390}}, color = {255, 0, 255}));
  connect(boolSw1.y, sw1.u2) annotation(
    Line(points = {{61, -270}, {97, -270}}, color = {255, 0, 255}));
  connect(boolSw2.y, sw2.u2) annotation(
    Line(points = {{61, -330}, {97, -330}}, color = {255, 0, 255}));
  connect(sw1.y, g1.u) annotation(
    Line(points = {{122, -270}, {138, -270}}, color = {0, 0, 127}));
  connect(sw1.u1, confB_add1.y) annotation(
    Line(points = {{98, -262}, {80, -262}, {80, -150}, {-158, -150}}, color = {0, 0, 127}));
  connect(sw1.u3, confA_add1.y) annotation(
    Line(points = {{98, -278}, {-380, -278}, {-380, -150}, {-478, -150}}, color = {0, 0, 127}));
  connect(sw2.y, g2.u) annotation(
    Line(points = {{122, -330}, {138, -330}}, color = {0, 0, 127}));
  connect(sw2.u1, confB_add2.y) annotation(
    Line(points = {{98, -322}, {20, -322}, {20, -170}, {-118, -170}}, color = {0, 0, 127}));
  connect(sw2.u3, confA_add2.y) annotation(
    Line(points = {{98, -338}, {-380, -338}, {-380, -172}, {-438, -172}}, color = {0, 0, 127}));
  connect(sw3.y, g3.u) annotation(
    Line(points = {{122, -390}, {138, -390}}, color = {0, 0, 127}));
  connect(sw3.u1, confB_add3.y) annotation(
    Line(points = {{98, -382}, {-40, -382}, {-40, -190}, {-78, -190}}, color = {0, 0, 127}));
  connect(sw3.u3, confA_add3.y) annotation(
    Line(points = {{98, -398}, {-380, -398}, {-380, -190}, {-398, -190}}, color = {0, 0, 127}));
  connect(confB_net.y, boolSw_confB.u1) annotation(
    Line(points = {{362, -172}, {398, -172}}, color = {0, 0, 127}));
  connect(expr_boolSw_confB.y, boolSw_confB.u2) annotation(
    Line(points = {{361, -200}, {380, -200}, {380, -180}, {398, -180}}, color = {255, 0, 255}));
  connect(confA_net_sub1.y, boolSw_confA_sub1.u3) annotation(
    Line(points = {{362, -450}, {380, -450}, {380, -448}, {398, -448}}, color = {0, 0, 127}));
  connect(expr_boolSw_confA_sub1.y, boolSw_confA_sub1.u2) annotation(
    Line(points = {{362, -410}, {380, -410}, {380, -440}, {398, -440}}, color = {255, 0, 255}));
  connect(boolSw_confB.y, confB_3.u2) annotation(
    Line(points = {{422, -180}, {460, -180}, {460, -240}, {-190, -240}, {-190, -218}}, color = {0, 0, 127}));
  connect(boolSw_confB.y, confB_2.u2) annotation(
    Line(points = {{422, -180}, {460, -180}, {460, -240}, {-230, -240}, {-230, -198}}, color = {0, 0, 127}));
  connect(boolSw_confB.y, confB_1.u2) annotation(
    Line(points = {{422, -180}, {460, -180}, {460, -240}, {-270, -240}, {-270, -178}}, color = {0, 0, 127}));
  connect(boolSw_confB.y, confB_fb.u2) annotation(
    Line(points = {{422, -180}, {460, -180}, {460, -240}, {-330, -240}, {-330, 42}}, color = {0, 0, 127}));
  connect(expr_boolSw_confA_sub2.y, boolSw_confA_sub2.u2) annotation(
    Line(points = {{362, -530}, {380, -530}, {380, -540}, {398, -540}}, color = {255, 0, 255}));
  connect(confA_net_sub2.y, boolSw_confA_sub2.u3) annotation(
    Line(points = {{362, -560}, {380, -560}, {380, -548}, {398, -548}}, color = {0, 0, 127}));
  connect(boolSw_confA_sub1.y, confA_2.u2) annotation(
    Line(points = {{422, -440}, {460, -440}, {460, -480}, {-550, -480}, {-550, -198}}, color = {0, 0, 127}));
  connect(boolSw_confA_sub1.y, confA_1.u2) annotation(
    Line(points = {{422, -440}, {460, -440}, {460, -480}, {-590, -480}, {-590, -178}}, color = {0, 0, 127}));
  connect(boolSw_confA_sub2.y, confA_3.u2) annotation(
    Line(points = {{422, -540}, {460, -540}, {460, -600}, {-510, -600}, {-510, -218}}, color = {0, 0, 127}));
  connect(boolSw_confA_sub1.y, confA_fb1.u2) annotation(
    Line(points = {{422, -440}, {460, -440}, {460, -480}, {-570, -480}, {-570, -38}}, color = {0, 0, 127}));
  connect(boolSw_confA_sub2.y, confA_fb2.u2) annotation(
    Line(points = {{422, -540}, {460, -540}, {460, -600}, {-610, -600}, {-610, 2}}, color = {0, 0, 127}));
  connect(zero_confB.y, boolSw_confB.u3) annotation(
    Line(points = {{361, -220}, {380, -220}, {380, -188}, {398, -188}}, color = {0, 0, 127}));
  connect(zero_confA_sub1.y, boolSw_confA_sub1.u1) annotation(
    Line(points = {{362, -390}, {380, -390}, {380, -432}, {398, -432}}, color = {0, 0, 127}));
  connect(zero_confA_sub2.y, boolSw_confA_sub2.u1) annotation(
    Line(points = {{362, -510}, {380, -510}, {380, -532}, {398, -532}}, color = {0, 0, 127}));
  connect(confA_DPe_sub2.y, disturbanceSub2.u2) annotation(
    Line(points = {{282, -530}, {310, -530}, {310, -552}}, color = {0, 0, 127}));
  connect(confB_DPe.y, feedback.u2) annotation(
    Line(points = {{282, -122}, {310, -122}, {310, -164}}, color = {0, 0, 127}));
  connect(realExpression.y, disturbanceSub1.u2) annotation(
    Line(points = {{282, -380}, {310, -380}, {310, -442}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-800, 80}, {460, -600}})));
end configurationTot;
