package com.android.wm.shell.pip;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.Choreographer;
import android.view.SurfaceControl;
import com.android.systemui.R;
import com.android.wm.shell.transition.Transitions;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipSurfaceTransactionHelper {
    public int mCornerRadius;
    public int mShadowRadius;
    public final Matrix mTmpTransform = new Matrix();
    public final float[] mTmpFloat9 = new float[9];
    public final RectF mTmpSourceRectF = new RectF();
    public final RectF mTmpDestinationRectF = new RectF();
    public final Rect mTmpDestinationRect = new Rect();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SurfaceControlTransactionFactory {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class VsyncSurfaceControlTransactionFactory implements SurfaceControlTransactionFactory {
        public final SurfaceControl.Transaction getTransaction() {
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            transaction.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
            return transaction;
        }
    }

    public PipSurfaceTransactionHelper(Context context) {
        onDensityOrFontScaleChanged(context);
    }

    public final void crop(Rect rect, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.setWindowCrop(surfaceControl, rect.width(), rect.height()).setPosition(surfaceControl, rect.left, rect.top);
    }

    public final void onDensityOrFontScaleChanged(Context context) {
        int dimensionPixelSize;
        int i = 0;
        if (CoreRune.MW_PIP_DISABLE_ROUND_CORNER) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.pip_corner_radius);
        }
        this.mCornerRadius = dimensionPixelSize;
        if (!CoreRune.MW_PIP_DISABLE_ROUND_CORNER) {
            i = context.getResources().getDimensionPixelSize(R.dimen.pip_shadow_radius);
        }
        this.mShadowRadius = i;
    }

    public final void resetScale(Rect rect, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.setMatrix(surfaceControl, Matrix.IDENTITY_MATRIX, this.mTmpFloat9).setPosition(surfaceControl, rect.left, rect.top);
    }

    public final void rotateAndScaleWithCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, float f, float f2, float f3, boolean z, boolean z2) {
        float f4;
        int i;
        float f5;
        int i2;
        float f6;
        Rect rect4 = this.mTmpDestinationRect;
        rect4.set(rect);
        rect4.inset(rect3);
        int width = rect4.width();
        int height = rect4.height();
        int width2 = rect2.width();
        int height2 = rect2.height();
        if (width <= height) {
            f4 = width2 / width;
        } else {
            f4 = height2 / height;
        }
        boolean z3 = Transitions.SHELL_TRANSITIONS_ROTATION;
        if (z3) {
            i = height2;
        } else {
            i = width2;
        }
        if (!z3) {
            width2 = height2;
        }
        rect4.set(0, 0, i, width2);
        rect4.scale(1.0f / f4);
        rect4.offset(rect3.left, rect3.top);
        if (z) {
            f5 = f2 - (rect3.left * f4);
            i2 = rect3.top;
        } else {
            if (z2) {
                f5 = f2 - (rect3.top * f4);
                f6 = (rect3.left * f4) + f3;
                Matrix matrix = this.mTmpTransform;
                matrix.setScale(f4, f4);
                matrix.postRotate(f);
                matrix.postTranslate(f5, f6);
                transaction.setMatrix(surfaceControl, matrix, this.mTmpFloat9).setCrop(surfaceControl, rect4);
            }
            f5 = f2 + (rect3.top * f4);
            i2 = rect3.left;
        }
        f6 = f3 - (i2 * f4);
        Matrix matrix2 = this.mTmpTransform;
        matrix2.setScale(f4, f4);
        matrix2.postRotate(f);
        matrix2.postTranslate(f5, f6);
        transaction.setMatrix(surfaceControl, matrix2, this.mTmpFloat9).setCrop(surfaceControl, rect4);
    }

    public final void round(SurfaceControl surfaceControl, boolean z, SurfaceControl.Transaction transaction) {
        transaction.setCornerRadius(surfaceControl, z ? this.mCornerRadius : 0.0f);
    }

    public final void scale(float f, Rect rect, Rect rect2, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        RectF rectF = this.mTmpSourceRectF;
        rectF.set(rect);
        rectF.offsetTo(0.0f, 0.0f);
        RectF rectF2 = this.mTmpDestinationRectF;
        rectF2.set(rect2);
        Matrix matrix = this.mTmpTransform;
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
        matrix.postRotate(f, rectF2.centerX(), rectF2.centerY());
        transaction.setMatrix(surfaceControl, matrix, this.mTmpFloat9);
    }

    public final void shadow(SurfaceControl surfaceControl, boolean z, SurfaceControl.Transaction transaction) {
        float f;
        if (z) {
            f = this.mShadowRadius;
        } else {
            f = 0.0f;
        }
        transaction.setShadowRadius(surfaceControl, f);
    }

    public final void round(Rect rect, Rect rect2, SurfaceControl.Transaction transaction, SurfaceControl surfaceControl) {
        transaction.setCornerRadius(surfaceControl, this.mCornerRadius * ((float) (Math.hypot(rect.width(), rect.height()) / Math.hypot(rect2.width(), rect2.height()))));
    }
}
