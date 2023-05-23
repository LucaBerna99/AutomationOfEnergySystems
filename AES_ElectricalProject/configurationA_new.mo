model prova_A
  Modelica.Blocks.Continuous.TransferFunction g1(a = {10, 1}, b = {100e6}) annotation(
    Placement(visible = true, transformation(origin = {-110, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp2(a = {1}, b = {2}) annotation(
    Placement(visible = true, transformation(origin = {-210, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1(k = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-250, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki3(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-190, 130}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Gain ki1(k = 0.75) annotation(
    Placement(visible = true, transformation(origin = {-190, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction kp1(a = {1}, b = {2}) annotation(
    Placement(visible = true, transformation(origin = {-210, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb3 annotation(
    Placement(visible = true, transformation(origin = {-250, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb1 annotation(
    Placement(visible = true, transformation(origin = {-250, 310}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression f0(y = 50) annotation(
    Placement(visible = true, transformation(origin = {-370, 230}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(visible = true, transformation(origin = {-150, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g2(a = {5, 1}, b = {50e6}) annotation(
    Placement(visible = true, transformation(origin = {-110, 270}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction g3(a = {20, 1}, b = {150e6}) annotation(
    Placement(visible = true, transformation(origin = {-110, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction kp3(a = {1}, b = {2}) annotation(
    Placement(visible = true, transformation(origin = {-210, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub1 annotation(
    Placement(visible = true, transformation(origin = {-290, 410}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 0.02) annotation(
    Placement(visible = true, transformation(origin = {-250, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(visible = true, transformation(origin = {-150, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fb2 annotation(
    Placement(visible = true, transformation(origin = {-268, 250}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {-150, 330}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback fbsub2 annotation(
    Placement(visible = true, transformation(origin = {-290, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ki2(k = 0.25) annotation(
    Placement(visible = true, transformation(origin = {-230, 370}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-52, 302}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback2 annotation(
    Placement(visible = true, transformation(origin = {-2, 302}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {30*2*2*Modelica.Math.asin(1.0)*50, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {42, 302}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {-4, 340}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(visible = true, transformation(origin = {-66, 90}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.Ramp ramp1(duration = 10, height = 5e6) annotation(
    Placement(visible = true, transformation(origin = {-68, 128}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {10*2*2*Modelica.Math.asin(1.0)*50, 0}, b = {1}) annotation(
    Placement(visible = true, transformation(origin = {-22, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ki3.y, add3.u1) annotation(
    Line(points = {{-190, 120}, {-190, 96}, {-162, 96}}, color = {0, 0, 127}));
  connect(fb1.y, kp1.u) annotation(
    Line(points = {{-240, 310}, {-222, 310}}, color = {0, 0, 127}));
  connect(integrator2.y, ki3.u) annotation(
    Line(points = {{-239, 170}, {-189, 170}, {-189, 142}, {-190, 142}}, color = {0, 0, 127}));
  connect(f0.y, fb2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 250}, {-276, 250}}, color = {0, 0, 127}));
  connect(kp2.y, add2.u2) annotation(
    Line(points = {{-198, 250}, {-190, 250}, {-190, 264}, {-162, 264}}, color = {0, 0, 127}));
  connect(f0.y, fb1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 310}, {-258, 310}}, color = {0, 0, 127}));
  connect(fbsub1.y, integrator1.u) annotation(
    Line(points = {{-281, 410}, {-262, 410}}, color = {0, 0, 127}));
  connect(add2.y, g2.u) annotation(
    Line(points = {{-138, 270}, {-122, 270}}, color = {0, 0, 127}));
  connect(f0.y, fb3.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 70}, {-258, 70}}, color = {0, 0, 127}));
  connect(integrator1.y, ki2.u) annotation(
    Line(points = {{-239, 410}, {-229, 410}, {-229, 382}, {-231, 382}}, color = {0, 0, 127}));
  connect(kp1.y, add1.u2) annotation(
    Line(points = {{-198, 310}, {-190, 310}, {-190, 324}, {-162, 324}}, color = {0, 0, 127}));
  connect(kp3.y, add3.u2) annotation(
    Line(points = {{-198, 70}, {-190, 70}, {-190, 84}, {-162, 84}}, color = {0, 0, 127}));
  connect(ki1.y, add1.u1) annotation(
    Line(points = {{-190, 360}, {-190, 336}, {-162, 336}}, color = {0, 0, 127}));
  connect(f0.y, fbsub2.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 170}, {-298, 170}}, color = {0, 0, 127}));
  connect(fb2.y, kp2.u) annotation(
    Line(points = {{-259, 250}, {-222, 250}}, color = {0, 0, 127}));
  connect(add1.y, g1.u) annotation(
    Line(points = {{-138, 330}, {-122, 330}}, color = {0, 0, 127}));
  connect(fb3.y, kp3.u) annotation(
    Line(points = {{-240, 70}, {-222, 70}}, color = {0, 0, 127}));
  connect(fbsub2.y, integrator2.u) annotation(
    Line(points = {{-281, 170}, {-263, 170}}, color = {0, 0, 127}));
  connect(ki2.y, add2.u1) annotation(
    Line(points = {{-230, 360}, {-230, 276}, {-162, 276}}, color = {0, 0, 127}));
  connect(add3.y, g3.u) annotation(
    Line(points = {{-138, 90}, {-122, 90}}, color = {0, 0, 127}));
  connect(integrator1.y, ki1.u) annotation(
    Line(points = {{-239, 410}, {-189, 410}, {-189, 382}, {-191, 382}}, color = {0, 0, 127}));
  connect(f0.y, fbsub1.u1) annotation(
    Line(points = {{-358, 230}, {-340, 230}, {-340, 410}, {-298, 410}}, color = {0, 0, 127}));
  connect(g1.y, add.u1) annotation(
    Line(points = {{-98, 330}, {-80, 330}, {-80, 308}, {-64, 308}}, color = {0, 0, 127}));
  connect(g2.y, add.u2) annotation(
    Line(points = {{-98, 270}, {-80, 270}, {-80, 296}, {-64, 296}}, color = {0, 0, 127}));
  connect(ramp.y, feedback2.u2) annotation(
    Line(points = {{-4, 329}, {-2, 329}, {-2, 309}}, color = {0, 0, 127}));
  connect(transferFunction1.u, feedback2.y) annotation(
    Line(points = {{30, 302}, {8, 302}}, color = {0, 0, 127}));
  connect(add.y, feedback2.u1) annotation(
    Line(points = {{-40, 302}, {-10, 302}}, color = {0, 0, 127}));
  connect(transferFunction1.y, fb2.u2) annotation(
    Line(points = {{54, 302}, {92, 302}, {92, 220}, {-268, 220}, {-268, 242}}, color = {0, 0, 127}));
  connect(fb1.u2, transferFunction1.y) annotation(
    Line(points = {{-250, 302}, {-250, 220}, {92, 220}, {92, 302}, {54, 302}}, color = {0, 0, 127}));
  connect(fbsub1.u2, transferFunction1.y) annotation(
    Line(points = {{-290, 402}, {-290, 220}, {92, 220}, {92, 302}, {54, 302}}, color = {0, 0, 127}));
  connect(transferFunction.u, feedback.y) annotation(
    Line(points = {{-34, 90}, {-56, 90}}, color = {0, 0, 127}));
  connect(ramp1.y, feedback.u2) annotation(
    Line(points = {{-68, 117}, {-66, 117}, {-66, 97}}, color = {0, 0, 127}));
  connect(g3.y, feedback.u1) annotation(
    Line(points = {{-98, 90}, {-74, 90}}, color = {0, 0, 127}));
  connect(transferFunction.y, fb3.u2) annotation(
    Line(points = {{-10, 90}, {44, 90}, {44, 32}, {-250, 32}, {-250, 62}}, color = {0, 0, 127}));
  connect(fbsub2.u2, transferFunction.y) annotation(
    Line(points = {{-290, 162}, {-290, 32}, {44, 32}, {44, 90}, {-10, 90}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-380, 420}, {160, 0}})),
    version = "");end prova_A;
