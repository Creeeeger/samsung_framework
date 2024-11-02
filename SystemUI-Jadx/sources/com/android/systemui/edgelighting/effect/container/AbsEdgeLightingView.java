package com.android.systemui.edgelighting.effect.container;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.systemui.edgelighting.effect.container.EdgeLightingDialog;
import com.android.systemui.edgelighting.utils.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbsEdgeLightingView extends FrameLayout {
    public EdgeLightingDialog.AnonymousClass4 mEdgeListener;
    public int mScreenHeight;
    public int mScreenWidth;

    public AbsEdgeLightingView(Context context) {
        super(context);
    }

    public final void resetScreenSize() {
        this.mScreenWidth = Utils.getScreenSize(getContext()).getWidth();
        this.mScreenHeight = Utils.getScreenSize(getContext()).getHeight();
    }

    public AbsEdgeLightingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AbsEdgeLightingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AbsEdgeLightingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
