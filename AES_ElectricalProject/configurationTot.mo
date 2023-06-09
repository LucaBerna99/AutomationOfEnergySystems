within AES_ElectricalProject;

model configurationTot
  Modelica.Blocks.Math.Gain confA_ki3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-430, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add AddSub1 annotation(
    Placement(visible = true, transformation(origin = {270, -450}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6) annotation(
    Placement(visible = true, transformation(origin = {190, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator confA_integrator2(k = 0.0000592*100) annotation(
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
    Placement(visible = true, transformation(origin = {310, -540}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {150, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6) annotation(
    Placement(visible = true, transformation(origin = {190, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_net(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1*total.k}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31 annotation(
    Placement(visible = true, transformation(origin = {270, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {310, -172}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-710, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain confA_ki1(k = 1/3) annotation(
    Placement(visible = true, transformation(origin = {-510, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confA_ki2(k = 2/3) annotation(
    Placement(visible = true, transformation(origin = {-470, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confA_integrator1(k = 0.000568*10) annotation(
    Placement(visible = true, transformation(origin = {-490, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-150, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-110, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain confB_ki1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-190, -110}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.Integrator confB_integrator(k = 79/(416e4)*200) annotation(
    Placement(visible = true, transformation(origin = {-150, -70}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp1(a = {1}, b = {0.003788}*10) annotation(
    Placement(visible = true, transformation(origin = {-530, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp2(a = {1}, b = {0.469}*5) annotation(
    Placement(visible = true, transformation(origin = {-490, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_kp3(a = {1}, b = {0.05922}*55) annotation(
    Placement(visible = true, transformation(origin = {-450, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp1(a = {5, 1}, b = {5.2071*10, 5.2071}) annotation(
    Placement(visible = true, transformation(origin = {-210, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-130, -210}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confB_kp2(a = {20, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-170, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add ADD_controller1(k1 = total.k, k2 = (1 - total.k))  annotation(
    Placement(visible = true, transformation(origin = {110, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add ADD_controller2(k1 = total.k, k2 = (1 - total.k))  annotation(
    Placement(visible = true, transformation(origin = {110, -330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add ADD_controller3(k1 = total.k, k2 = (1 - total.k))  annotation(
    Placement(visible = true, transformation(origin = {110, -390}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-490, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-450, -172}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(visible = true, transformation(origin = {-410, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add1 annotation(
    Placement(visible = true, transformation(origin = {-170, -150}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add2 annotation(
    Placement(visible = true, transformation(origin = {-130, -170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add confB_add3 annotation(
    Placement(visible = true, transformation(origin = {-90, -190}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb1 annotation(
    Placement(visible = true, transformation(origin = {-550, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confA_fb2 annotation(
    Placement(visible = true, transformation(origin = {-610, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback confB_fb annotation(
    Placement(visible = true, transformation(origin = {-330, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confB_DPe(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confA_DPe_sub1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp confA_DPe_sub2(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {270, -510}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  Modelica.Blocks.Continuous.TransferFunction confA_net_sub1(a = {30e3*(2*Modelica.Math.asin(1.0)*50)^2}, b = {1*(1 - total.k)}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -450}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction confA_net_sub2(a = {10e3*(2*Modelica.Math.asin(1.0)*50)^2}, b = {1*(1 - total.k)}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {350, -540}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.IntegerConstant total(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {-790, -270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
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
  connect(ADD_controller1.y, g1.u) annotation(
    Line(points = {{121, -270}, {137, -270}}, color = {0, 0, 127}));
  connect(ADD_controller3.y, g3.u) annotation(
    Line(points = {{121, -390}, {137, -390}}, color = {0, 0, 127}));
  connect(ADD_controller2.y, g2.u) annotation(
    Line(points = {{121, -330}, {137, -330}}, color = {0, 0, 127}));
  connect(confA_kp3.y, add3.u2) annotation(
    Line(points = {{-439, -210}, {-430, -210}, {-430, -196}, {-422, -196}}, color = {0, 0, 127}));
  connect(confA_kp2.y, add2.u2) annotation(
    Line(points = {{-479, -190}, {-473, -190}, {-473, -178}, {-463, -178}}, color = {0, 0, 127}));
  connect(confA_kp1.y, add1.u2) annotation(
    Line(points = {{-519, -170}, {-511, -170}, {-511, -156}, {-503, -156}}, color = {0, 0, 127}));
  connect(confA_ki1.y, add1.u1) annotation(
    Line(points = {{-510, -121}, {-510, -145}, {-502, -145}}, color = {0, 0, 127}));
  connect(confA_ki2.y, add2.u1) annotation(
    Line(points = {{-470, -121}, {-470, -167}, {-462, -167}}, color = {0, 0, 127}));
  connect(confA_ki3.y, add3.u1) annotation(
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
    Line(points = {{-541, -30}, {-491, -30}, {-491, -58}}, color = {0, 0, 127}));
  connect(confA_fb2.y, confA_integrator2.u) annotation(
    Line(points = {{-601, 10}, {-430, 10}, {-430, -58}}, color = {0, 0, 127}));
  connect(confB_fb.y, confB_integrator.u) annotation(
    Line(points = {{-321, 50}, {-150, 50}, {-150, -58}}, color = {0, 0, 127}));
  connect(add1.y, ADD_controller1.u2) annotation(
    Line(points = {{-479, -150}, {-380, -150}, {-380, -276}, {98, -276}}, color = {0, 0, 127}));
  connect(add2.y, ADD_controller2.u2) annotation(
    Line(points = {{-439, -172}, {-380, -172}, {-380, -336}, {98, -336}}, color = {0, 0, 127}));
  connect(add3.y, ADD_controller3.u2) annotation(
    Line(points = {{-399, -190}, {-380, -190}, {-380, -396}, {98, -396}}, color = {0, 0, 127}));
  connect(confB_add1.y, ADD_controller1.u1) annotation(
    Line(points = {{-159, -150}, {-20, -150}, {-20, -264}, {98, -264}}, color = {0, 0, 127}));
  connect(confB_add2.y, ADD_controller2.u1) annotation(
    Line(points = {{-119, -170}, {-20, -170}, {-20, -324}, {98, -324}}, color = {0, 0, 127}));
  connect(confB_add3.y, ADD_controller3.u1) annotation(
    Line(points = {{-79, -190}, {-20, -190}, {-20, -384}, {98, -384}}, color = {0, 0, 127}));
  connect(Pn3.y, disturbanceSub2.u1) annotation(
    Line(points = {{201, -390}, {251, -390}, {251, -540}, {302, -540}}, color = {0, 0, 127}));
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
  connect(confB_DPe.y, feedback.u2) annotation(
    Line(points = {{281, -122}, {309, -122}, {309, -164}}, color = {0, 0, 127}));
  connect(confA_DPe_sub1.y, disturbanceSub1.u2) annotation(
    Line(points = {{281, -410}, {309, -410}, {309, -442}}, color = {0, 0, 127}));
  connect(confA_DPe_sub2.y, disturbanceSub2.u2) annotation(
    Line(points = {{281, -510}, {309, -510}, {309, -532}}, color = {0, 0, 127}));
  connect(f0.y, confB_fb.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 50}, {-338, 50}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb2.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, 10}, {-618, 10}}, color = {0, 0, 127}));
  connect(f0.y, confA_fb1.u1) annotation(
    Line(points = {{-699, 70}, {-660, 70}, {-660, -30}, {-558, -30}}, color = {0, 0, 127}));
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
  connect(disturbanceSub1.y, confA_net_sub1.u) annotation(
    Line(points = {{319, -450}, {337, -450}}, color = {0, 0, 127}));
  connect(disturbanceSub2.y, confA_net_sub2.u) annotation(
    Line(points = {{319, -540}, {337, -540}}, color = {0, 0, 127}));
  connect(confA_net_sub1.y, confA_2.u2) annotation(
    Line(points = {{362, -450}, {380, -450}, {380, -480}, {-550, -480}, {-550, -198}}, color = {0, 0, 127}));
  connect(confA_net_sub1.y, confA_1.u2) annotation(
    Line(points = {{362, -450}, {380, -450}, {380, -480}, {-590, -480}, {-590, -178}}, color = {0, 0, 127}));
  connect(confA_net_sub2.y, confA_3.u2) annotation(
    Line(points = {{362, -540}, {380, -540}, {380, -580}, {-510, -580}, {-510, -218}}, color = {0, 0, 127}));
  connect(confA_net_sub1.y, confA_fb1.u2) annotation(
    Line(points = {{362, -450}, {380, -450}, {380, -480}, {-570, -480}, {-570, -80}, {-550, -80}, {-550, -38}}, color = {0, 0, 127}));
  connect(confA_net_sub2.y, confA_fb2.u2) annotation(
    Line(points = {{362, -540}, {380, -540}, {380, -580}, {-610, -580}, {-610, 2}}, color = {0, 0, 127}));
  connect(confB_net.y, confB_3.u2) annotation(
    Line(points = {{362, -172}, {380, -172}, {380, -240}, {-190, -240}, {-190, -218}}, color = {0, 0, 127}));
  connect(confB_net.y, confB_2.u2) annotation(
    Line(points = {{362, -172}, {380, -172}, {380, -240}, {-230, -240}, {-230, -198}}, color = {0, 0, 127}));
  connect(confB_net.y, confB_1.u2) annotation(
    Line(points = {{362, -172}, {380, -172}, {380, -240}, {-270, -240}, {-270, -178}}, color = {0, 0, 127}));
  connect(confB_net.y, confB_fb.u2) annotation(
    Line(points = {{362, -172}, {380, -172}, {380, -240}, {-330, -240}, {-330, 42}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-820, 80}, {380, -580}})));

end configurationTot;
