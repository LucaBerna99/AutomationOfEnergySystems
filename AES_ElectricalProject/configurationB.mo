within AES_ElectricalProject;

model configurationB
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {160, 0}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp_1(a = {5*0.1, 1}, b = {5.2071*10, 5.2071}, y_start = 0) annotation(
    Placement(visible = true, transformation(origin = {-170, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g3(a = {20, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {10, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_confB annotation(
    Placement(visible = true, transformation(origin = {-230, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression fo(y = 0) annotation(
    Placement(visible = true, transformation(origin = {-270, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g3 annotation(
    Placement(visible = true, transformation(origin = {-170, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta1(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-150, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction grid(a = {40*(2*2*Modelica.Math.asin(1.0)*50)^2, 0}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialOutput) annotation(
    Placement(visible = true, transformation(origin = {210, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback_g2 annotation(
    Placement(visible = true, transformation(origin = {-190, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator(k = 79/(416e4)*400, y_start = 0) annotation(
    Placement(visible = true, transformation(origin = {-190, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta2(k = 0.2) annotation(
    Placement(visible = true, transformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction kp_3(a = {10, 1}, b = {-3.2909*20, -3.2909}) annotation(
    Placement(visible = true, transformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp_2(a = {20*0.1, 1}, b = {0.055123*5, 0.055123}*30) annotation(
    Placement(visible = true, transformation(origin = {-130, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g2(a = {5, 1}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(visible = true, transformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain beta3(k = 0.4) annotation(
    Placement(visible = true, transformation(origin = {-50, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain Pn1(k = 100e6)  annotation(
    Placement(visible = true, transformation(origin = {50, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn2(k = 50e6)  annotation(
    Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Pn3(k = 150e6)  annotation(
    Placement(visible = true, transformation(origin = {50, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction tf_g1(a = {10, 1}, b = {1}, initType = Modelica.Blocks.Types.Init.InitialState)  annotation(
    Placement(visible = true, transformation(origin = {10, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback1 annotation(
    Placement(visible = true, transformation(origin = {-210, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_1 annotation(
    Placement(visible = true, transformation(origin = {-130, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_2 annotation(
    Placement(visible = true, transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add prim_sec_3 annotation(
    Placement(visible = true, transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp DPe(duration = 10, height = 5e6)  annotation(
    Placement(visible = true, transformation(origin = {130, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(feedback_g2.u1, fo.y) annotation(
    Line(points = {{-198, 0}, {-250, 0}, {-250, 100}, {-259, 100}}, color = {0, 0, 127}));
  connect(fo.y, feedback_confB.u1) annotation(
    Line(points = {{-259, 100}, {-238, 100}}, color = {0, 0, 127}));
  connect(feedback_g3.u1, fo.y) annotation(
    Line(points = {{-178, -40}, {-250, -40}, {-250, 100}, {-259, 100}}, color = {0, 0, 127}));
  connect(beta3.u, integrator.y) annotation(
    Line(points = {{-50, 92}, {-50, 100}, {-179, 100}}, color = {0, 0, 127}));
  connect(feedback_g2.y, kp_2.u) annotation(
    Line(points = {{-181, 0}, {-142, 0}}, color = {0, 0, 127}));
  connect(beta2.u, integrator.y) annotation(
    Line(points = {{-100, 92}, {-100, 100}, {-179, 100}}, color = {0, 0, 127}));
  connect(integrator.y, beta1.u) annotation(
    Line(points = {{-179, 100}, {-150, 100}, {-150, 92}}, color = {0, 0, 127}));
  connect(feedback_g3.y, kp_3.u) annotation(
    Line(points = {{-161, -40}, {-102, -40}}, color = {0, 0, 127}));
  connect(feedback_confB.y, integrator.u) annotation(
    Line(points = {{-221, 100}, {-202, 100}}, color = {0, 0, 127}));
  connect(add3.y, feedback.u1) annotation(
    Line(points = {{121, 0}, {152, 0}}, color = {0, 0, 127}));
  connect(feedback.y, grid.u) annotation(
    Line(points = {{169, 0}, {198, 0}}, color = {0, 0, 127}));
  connect(tf_g3.y, Pn3.u) annotation(
    Line(points = {{21, -40}, {37, -40}}, color = {0, 0, 127}));
  connect(tf_g2.y, Pn2.u) annotation(
    Line(points = {{21, 0}, {37, 0}}, color = {0, 0, 127}));
  connect(Pn1.y, add3.u1) annotation(
    Line(points = {{61, 40}, {79, 40}, {79, 8}, {97, 8}}, color = {0, 0, 127}));
  connect(Pn2.y, add3.u2) annotation(
    Line(points = {{61, 0}, {97, 0}}, color = {0, 0, 127}));
  connect(Pn3.y, add3.u3) annotation(
    Line(points = {{61, -40}, {79, -40}, {79, -8}, {97, -8}}, color = {0, 0, 127}));
  connect(grid.y, feedback_g3.u2) annotation(
    Line(points = {{221, 0}, {259, 0}, {259, -110}, {-171, -110}, {-171, -48}}, color = {0, 0, 127}));
  connect(grid.y, feedback_g2.u2) annotation(
    Line(points = {{221, 0}, {259, 0}, {259, -110}, {-191, -110}, {-191, -8}}, color = {0, 0, 127}));
  connect(grid.y, feedback_confB.u2) annotation(
    Line(points = {{221, 0}, {259, 0}, {259, -110}, {-231, -110}, {-231, 92}}, color = {0, 0, 127}));
  connect(tf_g1.y, Pn1.u) annotation(
    Line(points = {{21, 40}, {37, 40}}, color = {0, 0, 127}));
  connect(feedback1.y, kp_1.u) annotation(
    Line(points = {{-201, 40}, {-183, 40}}, color = {0, 0, 127}));
  connect(fo.y, feedback1.u1) annotation(
    Line(points = {{-259, 100}, {-251, 100}, {-251, 40}, {-219, 40}}, color = {0, 0, 127}));
  connect(grid.y, feedback1.u2) annotation(
    Line(points = {{221, 0}, {259, 0}, {259, -110}, {-211, -110}, {-211, 32}}, color = {0, 0, 127}));
  connect(beta1.y, prim_sec_1.u1) annotation(
    Line(points = {{-150, 69}, {-150, 45}, {-142, 45}}, color = {0, 0, 127}));
  connect(beta2.y, prim_sec_2.u1) annotation(
    Line(points = {{-100, 69}, {-100, 5}, {-82, 5}}, color = {0, 0, 127}));
  connect(beta3.y, prim_sec_3.u1) annotation(
    Line(points = {{-50, 69}, {-50, -35}, {-42, -35}}, color = {0, 0, 127}));
  connect(kp_3.y, prim_sec_3.u2) annotation(
    Line(points = {{-79, -40}, {-51, -40}, {-51, -46}, {-43, -46}}, color = {0, 0, 127}));
  connect(kp_2.y, prim_sec_2.u2) annotation(
    Line(points = {{-119, 0}, {-101, 0}, {-101, -6}, {-83, -6}}, color = {0, 0, 127}));
  connect(kp_1.y, prim_sec_1.u2) annotation(
    Line(points = {{-159, 40}, {-151, 40}, {-151, 34}, {-143, 34}}, color = {0, 0, 127}));
  connect(prim_sec_1.y, tf_g1.u) annotation(
    Line(points = {{-119, 40}, {-3, 40}}, color = {0, 0, 127}));
  connect(prim_sec_2.y, tf_g2.u) annotation(
    Line(points = {{-59, 0}, {-3, 0}}, color = {0, 0, 127}));
  connect(prim_sec_3.y, tf_g3.u) annotation(
    Line(points = {{-19, -40}, {-3, -40}}, color = {0, 0, 127}));
  connect(DPe.y, feedback.u2) annotation(
    Line(points = {{141, 40}, {159, 40}, {159, 8}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-280, -150}, {280, 150}})),
  Icon(coordinateSystem(extent = {{-280, -150}, {280, 150}})));
end configurationB;
