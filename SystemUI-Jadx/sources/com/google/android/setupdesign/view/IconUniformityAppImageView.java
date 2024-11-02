package com.google.android.setupdesign.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class IconUniformityAppImageView extends ImageView {
    public static final boolean ON_L_PLUS;
    public int backdropColorResId;
    public final GradientDrawable backdropDrawable;

    static {
        Float.valueOf(0.75f).floatValue();
        ON_L_PLUS = true;
    }

    public IconUniformityAppImageView(Context context) {
        super(context);
        this.backdropColorResId = 0;
        this.backdropDrawable = new GradientDrawable();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean z = ON_L_PLUS;
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.backdropColorResId = R.color.sud_uniformity_backdrop_color;
        GradientDrawable gradientDrawable = this.backdropDrawable;
        Context context = getContext();
        int i = this.backdropColorResId;
        Object obj = ContextCompat.sLock;
        gradientDrawable.setColor(context.getColor(i));
    }

    public IconUniformityAppImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backdropColorResId = 0;
        this.backdropDrawable = new GradientDrawable();
    }

    public IconUniformityAppImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.backdropColorResId = 0;
        this.backdropDrawable = new GradientDrawable();
    }

    public IconUniformityAppImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.backdropColorResId = 0;
        this.backdropDrawable = new GradientDrawable();
    }
}
