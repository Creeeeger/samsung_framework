package org.apache.commons.math.special;

import org.apache.commons.math.util.FastMath;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public abstract class Gamma {
    public static final double[] LANCZOS = {0.9999999999999971d, 57.15623566586292d, -59.59796035547549d, 14.136097974741746d, -0.4919138160976202d, 3.399464998481189E-5d, 4.652362892704858E-5d, -9.837447530487956E-5d, 1.580887032249125E-4d, -2.1026444172410488E-4d, 2.1743961811521265E-4d, -1.643181065367639E-4d, 8.441822398385275E-5d, -2.6190838401581408E-5d, 3.6899182659531625E-6d};
    public static final double HALF_LOG_2_PI = FastMath.log(6.283185307179586d) * 0.5d;

    public static double logGamma(double d) {
        if (!Double.isNaN(d)) {
            double d2 = 0.0d;
            if (d > 0.0d) {
                int i = 14;
                while (true) {
                    double[] dArr = LANCZOS;
                    if (i <= 0) {
                        double d3 = 4.7421875d + d + 0.5d;
                        return FastMath.log((d2 + dArr[0]) / d) + ((FastMath.log(d3) * (0.5d + d)) - d3) + HALF_LOG_2_PI;
                    }
                    d2 += dArr[i] / (i + d);
                    i--;
                }
            }
        }
        return Double.NaN;
    }
}
