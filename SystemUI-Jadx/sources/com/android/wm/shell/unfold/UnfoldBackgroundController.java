package com.android.wm.shell.unfold;

import android.content.Context;
import android.graphics.Color;
import android.view.SurfaceControl;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class UnfoldBackgroundController {
    public final float[] mBackgroundColor;
    public float[] mBackgroundColorSet;
    public SurfaceControl mBackgroundLayer;
    public final float[] mSplitScreenBackgroundColor;
    public boolean mSplitScreenVisible = false;

    public UnfoldBackgroundController(Context context) {
        this.mBackgroundColor = getRGBColorFromId(R.color.unfold_background, context);
        this.mSplitScreenBackgroundColor = getRGBColorFromId(R.color.split_divider_background, context);
    }

    public static float[] getRGBColorFromId(int i, Context context) {
        int color = context.getResources().getColor(i);
        return new float[]{Color.red(color) / 255.0f, Color.green(color) / 255.0f, Color.blue(color) / 255.0f};
    }

    public final void ensureBackground(SurfaceControl.Transaction transaction) {
        float[] fArr;
        if (this.mSplitScreenVisible) {
            fArr = this.mSplitScreenBackgroundColor;
        } else {
            fArr = this.mBackgroundColor;
        }
        SurfaceControl surfaceControl = this.mBackgroundLayer;
        if (surfaceControl != null) {
            if (this.mBackgroundColorSet != fArr) {
                transaction.setColor(surfaceControl, fArr);
                this.mBackgroundColorSet = fArr;
                return;
            }
            return;
        }
        SurfaceControl build = new SurfaceControl.Builder().setName("app-unfold-background").setCallsite("AppUnfoldTransitionController").setColorLayer().build();
        this.mBackgroundLayer = build;
        transaction.setColor(build, fArr).show(this.mBackgroundLayer).setLayer(this.mBackgroundLayer, -1);
        this.mBackgroundColorSet = fArr;
    }
}
