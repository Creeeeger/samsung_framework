package com.android.systemui.navigationbar.gestural;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.widget.FrameLayout;
import com.android.settingslib.Utils;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.navigationbar.buttons.ButtonInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class NavigationHandle extends FrameLayout implements ButtonInterface {
    public final float mBottom;
    public final Context mContext;
    public final int mDarkColor;
    public float mDarkIntensity;
    public GestureHintDrawable mHintDrawable;
    public final int mLightColor;
    public final Paint mPaint;
    public final float mRadius;
    public boolean mRequiresInvalidate;

    public NavigationHandle(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!BasicRune.NAVBAR_GESTURE) {
            int height = getHeight();
            float f = this.mRadius * 2.0f;
            int width = getWidth();
            float f2 = (height - this.mBottom) - f;
            float f3 = this.mRadius;
            canvas.drawRoundRect(0.0f, f2, width, f2 + f, f3, f3, this.mPaint);
        }
    }

    @Override // android.view.View
    public final void setAlpha(float f) {
        super.setAlpha(f);
        if (f > 0.0f && this.mRequiresInvalidate) {
            this.mRequiresInvalidate = false;
            invalidate();
        }
    }

    @Override // com.android.systemui.navigationbar.buttons.ButtonInterface
    public final void setDarkIntensity(float f) {
        if (BasicRune.NAVBAR_GESTURE) {
            GestureHintDrawable gestureHintDrawable = this.mHintDrawable;
            if (gestureHintDrawable != null && this.mDarkIntensity != f) {
                this.mDarkIntensity = f;
                gestureHintDrawable.setDarkIntensity(f);
                invalidate();
                return;
            }
            return;
        }
        int intValue = ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(this.mLightColor), Integer.valueOf(this.mDarkColor))).intValue();
        if (this.mPaint.getColor() != intValue) {
            this.mPaint.setColor(intValue);
            if (getVisibility() == 0 && getAlpha() > 0.0f) {
                invalidate();
            } else {
                this.mRequiresInvalidate = true;
            }
        }
    }

    @Override // com.android.systemui.navigationbar.buttons.ButtonInterface
    public void setImageDrawable(Drawable drawable) {
        if (BasicRune.NAVBAR_GESTURE) {
            this.mHintDrawable = (GestureHintDrawable) drawable;
            int dimension = (int) this.mContext.getResources().getDimension(R.dimen.samsung_hint_bottom_padding);
            this.mHintDrawable.setLayerGravity(0, 80);
            this.mHintDrawable.setLayerGravity(1, 80);
            this.mHintDrawable.setLayerInset(0, 0, dimension, 0, dimension);
            this.mHintDrawable.setLayerInset(1, 0, dimension, 0, dimension);
            this.mHintDrawable.setDarkIntensity(this.mDarkIntensity);
            setBackground(this.mHintDrawable);
        }
    }

    public NavigationHandle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int colorAttrDefaultColor;
        int colorAttrDefaultColor2;
        Paint paint = new Paint();
        this.mPaint = paint;
        Resources resources = context.getResources();
        this.mRadius = resources.getDimension(R.dimen.navigation_handle_radius);
        this.mBottom = resources.getDimension(R.dimen.navigation_handle_bottom);
        boolean z = BasicRune.NAVBAR_GESTURE;
        if (z) {
            this.mContext = context;
        }
        int themeAttr = Utils.getThemeAttr(R.attr.darkIconTheme, context);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, Utils.getThemeAttr(R.attr.lightIconTheme, context));
        ContextThemeWrapper contextThemeWrapper2 = new ContextThemeWrapper(context, themeAttr);
        if (z) {
            colorAttrDefaultColor = context.getColor(R.color.navbar_icon_color_light);
        } else {
            colorAttrDefaultColor = Utils.getColorAttrDefaultColor(R.attr.homeHandleColor, contextThemeWrapper, 0);
        }
        this.mLightColor = colorAttrDefaultColor;
        if (z) {
            colorAttrDefaultColor2 = context.getColor(R.color.navbar_icon_color_dark);
        } else {
            colorAttrDefaultColor2 = Utils.getColorAttrDefaultColor(R.attr.homeHandleColor, contextThemeWrapper2, 0);
        }
        this.mDarkColor = colorAttrDefaultColor2;
        paint.setAntiAlias(true);
        setFocusable(false);
    }

    @Override // com.android.systemui.navigationbar.buttons.ButtonInterface
    public final void abortCurrentGesture() {
    }

    @Override // com.android.systemui.navigationbar.buttons.ButtonInterface
    public final void setVertical() {
    }
}
