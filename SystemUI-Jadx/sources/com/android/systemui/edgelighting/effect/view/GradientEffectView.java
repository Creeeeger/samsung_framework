package com.android.systemui.edgelighting.effect.view;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.R;
import com.android.systemui.edgelighting.utils.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class GradientEffectView extends AbsEdgeLightingMaskView {
    public GradientEffectView(Context context) {
        super(context);
    }

    @Override // com.android.systemui.edgelighting.effect.view.AbsEdgeLightingMaskView
    public final void init() {
        super.init();
        int width = Utils.getScreenSize(getContext()).getWidth();
        int height = Utils.getScreenSize(getContext()).getHeight();
        this.mWidth = width;
        this.mHeight = height;
        setImageDrawable();
        expandViewSize(this.mTopLayer);
    }

    public final void setImageDrawable() {
        if (this.mTopLayer.getDrawable() == null) {
            this.mTopLayer.setImageResource(R.drawable.color_gradation);
        }
        if (this.mBottomLayer.getDrawable() == null) {
            this.mBottomLayer.setVisibility(8);
        }
    }

    public GradientEffectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GradientEffectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
