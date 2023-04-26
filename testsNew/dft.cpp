
#include <cmath>

#ifdef __cplusplus
extern "C" {
#endif

struct complex {
  double re;
  double im;
};

void dft(const struct complex* signal, struct complex* res, int N) {
  for (int k = 0; k < N; k++) {
    double re = 0.0;
    double im = 0.0;
    for (int n = 0; n < N; n++) {
      const double theta = (2.0 * M_PI * k * n) / N;
      const double c = cos(theta);
      const double s = -sin(theta);
      const struct complex* xn = &signal[n];
      re += xn->re * c - xn->im * s;
      im += xn->re * s + xn->im * c;
    }
    res[k].re = re;
    res[k].im = im;
  }
}

#ifdef __cplusplus
}
#endif
