package com.android.systemui.qp;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.tileimpl.QSIconViewImpl;
import com.android.systemui.qs.tileimpl.SecQSTileBaseView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubRoomQsTileBaseView extends SecQSTileBaseView {
    public int mCircleColor;
    public int mColorActive;
    public int mColorDisabled;
    public int mColorInactive;
    public final QSIconViewImpl mQSIconViewImpl;
    public RippleDrawable mRipple;
    public QSTile.State mState;
    public Drawable mTileBackground;

    public SubRoomQsTileBaseView(Context context, QSIconView qSIconView, boolean z) {
        super(context, qSIconView, z);
        int dimension = (int) context.getResources().getDimension(R.dimen.subscreen_qs_tile_icon_size);
        this.mIconFrame.removeView(this.mBg);
        this.mIconFrame.removeView(this.mIcon);
        this.mIconFrame.addView(this.mBg, new FrameLayout.LayoutParams(dimension, dimension, 17));
        this.mIconFrame.addView(this.mIcon, new FrameLayout.LayoutParams(dimension, dimension, 17));
        this.mIconFrame.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        Drawable newTileBackground = newTileBackground();
        this.mTileBackground = newTileBackground;
        if (newTileBackground instanceof RippleDrawable) {
            ((RippleDrawable) newTileBackground).setColor(ColorStateList.valueOf(context.getColor(R.color.sec_qs_ripple_background)));
            setRipple((RippleDrawable) this.mTileBackground);
        }
        this.mQSIconViewImpl = new QSIconViewImpl(context);
        updateBackgroundColors();
        updateSubscreenTileStroke();
        this.mIcon.setBackground(this.mTileBackground);
        this.mIcon.setFocusable(true);
        setFocusable(false);
        this.mIconFrame.setFocusable(false);
    }

    private void setRipple(RippleDrawable rippleDrawable) {
        this.mRipple = rippleDrawable;
        if (getWidth() != 0) {
            int measuredWidth = this.mIcon.getMeasuredWidth() / 2;
            int measuredHeight = this.mIcon.getMeasuredHeight() / 2;
            int height = (int) (this.mIcon.getHeight() * 0.8f);
            this.mRipple.setHotspotBounds(measuredWidth - height, measuredHeight - height, measuredWidth + height, measuredHeight + height);
        }
    }

    private void updateBackgroundColors() {
        this.mColorActive = ((LinearLayout) this).mContext.getColor(R.color.subscreen_qs_tile_round_background_on);
        this.mColorDisabled = ((LinearLayout) this).mContext.getColor(R.color.subscreen_qs_tile_round_background_off);
        this.mColorInactive = ((LinearLayout) this).mContext.getColor(R.color.subscreen_qs_tile_round_background_dim);
    }

    @Override // com.android.systemui.qs.tileimpl.SecQSTileBaseView
    public final Drawable getTileBackground() {
        return this.mTileBackground;
    }

    @Override // com.android.systemui.qs.tileimpl.SecQSTileBaseView
    public final void handleStateChanged(QSTile.State state) {
        int i;
        int i2;
        String str;
        int i3;
        super.handleStateChanged(state);
        this.mState = state;
        int i4 = state.state;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    NestedScrollView$$ExternalSyntheticOutline0.m("Invalid state ", i4, "SubRoomQsTileBaseView");
                    i = 0;
                } else {
                    i = this.mColorActive;
                }
            } else {
                i = this.mColorDisabled;
            }
        } else {
            i = this.mColorInactive;
        }
        if (i != this.mCircleColor) {
            QSIconViewImpl qSIconViewImpl = this.mQSIconViewImpl;
            ImageView imageView = this.mBg;
            qSIconViewImpl.getClass();
            imageView.setImageTintList(ColorStateList.valueOf(i));
            qSIconViewImpl.mTint = i;
            this.mCircleColor = i;
        }
        Drawable newTileBackground = newTileBackground();
        this.mTileBackground = newTileBackground;
        if (newTileBackground instanceof RippleDrawable) {
            ((RippleDrawable) newTileBackground).setColor(ColorStateList.valueOf(((LinearLayout) this).mContext.getColor(R.color.sec_qs_ripple_background)));
            setRipple((RippleDrawable) this.mTileBackground);
        }
        updateSubscreenTileStroke();
        if (state.state == 2) {
            i2 = R.color.subscreen_qs_tile_icon_on_color;
        } else {
            i2 = R.color.subscreen_qs_tile_icon_off_color;
        }
        ((ImageView) this.mIcon.getIconView()).setColorFilter(((LinearLayout) this).mContext.getColor(i2), PorterDuff.Mode.SRC_IN);
        CharSequence charSequence = state.label;
        if (charSequence != null) {
            StringBuilder sb = new StringBuilder(charSequence.length());
            sb.append(state.label);
            str = sb.toString();
        } else {
            str = null;
        }
        if (state.contentDescription == null) {
            if (str != null) {
                Resources resources = getResources();
                if (state.state == 2) {
                    i3 = R.string.accessibility_desc_on;
                } else {
                    i3 = R.string.accessibility_desc_off;
                }
                String str2 = str + "," + resources.getString(i3) + ",";
                if (str2 != null) {
                    str2 = str2.replaceAll("\n", " ").replaceAll("-", "");
                }
                str = str2;
            }
        } else {
            str = ((Object) state.contentDescription) + ",";
        }
        this.mIconFrame.setContentDescription(str);
    }

    @Override // com.android.systemui.qs.tileimpl.SecQSTileBaseView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateBackgroundColors();
        QSTile.State state = this.mState;
        if (state != null) {
            handleStateChanged(state);
        }
    }

    public final void updateSubscreenTileStroke() {
        Log.d("SubRoomQsTileBaseView", "updateSubscreenTileStroke");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setStroke(getContext().getResources().getDimensionPixelSize(R.dimen.subscreen_tile_stroke_width), getContext().getColor(R.color.subscreen_tile_stroke_color));
        this.mBg.setBackground(gradientDrawable);
    }
}
