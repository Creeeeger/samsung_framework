package androidx.transition;

import android.graphics.Matrix;
import android.graphics.RectF;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MatrixUtils {
    public static final AnonymousClass1 IDENTITY_MATRIX = new Matrix() { // from class: androidx.transition.MatrixUtils.1
        public static void oops() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public final boolean postConcat(Matrix matrix) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postRotate(float f, float f2, float f3) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postScale(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postSkew(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postTranslate(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preConcat(Matrix matrix) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preRotate(float f, float f2, float f3) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preScale(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preSkew(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preTranslate(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void reset() {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void set(Matrix matrix) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean setConcat(Matrix matrix, Matrix matrix2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean setPolyToPoly(float[] fArr, int i, float[] fArr2, int i2, int i3) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setRotate(float f, float f2, float f3) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setScale(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setSinCos(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setSkew(float f, float f2, float f3, float f4) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setTranslate(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setValues(float[] fArr) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postRotate(float f) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postScale(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean postSkew(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preRotate(float f) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preScale(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final boolean preSkew(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setRotate(float f) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setScale(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setSinCos(float f, float f2) {
            oops();
            throw null;
        }

        @Override // android.graphics.Matrix
        public final void setSkew(float f, float f2) {
            oops();
            throw null;
        }
    };

    private MatrixUtils() {
    }
}
