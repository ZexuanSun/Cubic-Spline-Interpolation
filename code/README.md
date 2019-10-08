# Codes

These are the codes that we used for the project. You can use the codes to replicate 
the numerical experiments we carried out and the figures in the report. We mainly employed 
the function **csape** to help us.

Brief description of these codes are given below:
**slopes.m**: implement clamped cubic spline interpolant to $\frac{25}{1+x^{2}}$ and 
draw figures.

**slope_error.m**: calculate the error of clamped cubic spline interpolant to $\frac{25}{1+x^{2}}$
and draw figures.

**second.m**: implement cubic spline interpolant when matching the 2nd derivative at ends 
to $\frac{25}{1+x^{2}}$ and 
draw figures.

**second_error.m**: calculate the error of cubic spline interpolant when matching the 2nd derivative at ends 
to $\frac{25}{1+x^{2}}$ and 
draw figures.

**periodic.m**: implement periodic cubic spline interpolant to $\frac{25}{1+x^{2}}$ and draw figures.

**periodic_error.m**:
calculate the error of periodic cubic spline interpolant
to $\frac{25}{1+x^{2}}$ and 
draw figures.

**error_of_clamped_and_second.m**:
compare the error of clamped cubic spline interpolant and cubic spline interpolant when matching the 2nd derivative at ends
to $\frac{25}{1+x^{2}}$ and 
draw figures.

**disturbance.m**:
calculate errors in interpolation with three end conditions before and after perturbation and draw figures.











