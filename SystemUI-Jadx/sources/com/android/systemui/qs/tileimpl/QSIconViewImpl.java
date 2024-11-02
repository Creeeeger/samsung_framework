package com.android.systemui.qs.tileimpl;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.systemui.Dependency;
import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.samsung.systemui.splugins.volume.VolumePanelValues;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSIconViewImpl extends QSIconView {
    public boolean isNonBGTile;
    public boolean mAnimationEnabled;
    public boolean mDisabledByPolicy;
    public final SlashImageView mIcon;
    public int mIconSizePx;
    public QSTile.Icon mLastIcon;
    public final SecQSPanelResourcePicker mResourcePicker;
    public int mState;
    public int mTint;

    public QSIconViewImpl(Context context) {
        super(context);
        this.mAnimationEnabled = true;
        this.mState = -1;
        this.isNonBGTile = false;
        this.mDisabledByPolicy = false;
        ValueAnimator valueAnimator = new ValueAnimator();
        context.getResources();
        this.mResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        this.mIconSizePx = getIconSize();
        SlashImageView slashImageView = new SlashImageView(((ViewGroup) this).mContext);
        slashImageView.setId(R.id.icon);
        slashImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.mIcon = slashImageView;
        addView(slashImageView);
        valueAnimator.setDuration(350L);
    }

    @Override // com.android.systemui.plugins.qs.QSIconView
    public final void disableAnimation() {
        this.mAnimationEnabled = false;
    }

    public final int getColor(QSTile.State state) {
        Context context = getContext();
        if (state.isNonBGTile) {
            return context.getColor(com.android.systemui.R.color.qs_tile_no_round_icon_color);
        }
        int i = state.state;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    Log.e("QSTile", "Invalid state " + state);
                    return 0;
                }
                return context.getColor(com.android.systemui.R.color.qs_tile_icon_on_dim_tint_color);
            }
            return context.getColor(com.android.systemui.R.color.qs_tile_icon_off_tint_color);
        }
        return context.getColor(com.android.systemui.R.color.qs_tile_icon_on_dim_tint_color) & ((((int) ((context.getColor(com.android.systemui.R.color.qs_tile_icon_on_dim_tint_color) >>> 24) * 0.5f)) * 16777216) + 16777215);
    }

    public final int getIconSize() {
        if (this.isNonBGTile) {
            return ((ViewGroup) this).mContext.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sec_style_qs_no_bg_tile_icon_size);
        }
        SecQSPanelResourcePicker secQSPanelResourcePicker = this.mResourcePicker;
        Context context = ((ViewGroup) this).mContext;
        secQSPanelResourcePicker.getClass();
        return SecQSPanelResourcePicker.getTileIconSize(context);
    }

    @Override // com.android.systemui.plugins.qs.QSIconView
    public final View getIconView() {
        return this.mIcon;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mIconSizePx = getIconSize();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = (getMeasuredWidth() - this.mIcon.getMeasuredWidth()) / 2;
        SlashImageView slashImageView = this.mIcon;
        slashImageView.layout(measuredWidth, 0, slashImageView.getMeasuredWidth() + measuredWidth, slashImageView.getMeasuredHeight() + 0);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        this.mIconSizePx = getIconSize();
        int size = View.MeasureSpec.getSize(i);
        this.mIcon.measure(View.MeasureSpec.makeMeasureSpec(size, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(this.mIconSizePx, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
        setMeasuredDimension(size, this.mIcon.getMeasuredHeight());
    }

    @Override // com.android.systemui.plugins.qs.QSIconView
    public final void onPanelModeChanged(QSTile.State state) {
        SlashImageView slashImageView = this.mIcon;
        if (slashImageView instanceof ImageView) {
            if (state.disabledByPolicy) {
                slashImageView.setColorFilter(getContext().getColor(com.android.systemui.R.color.qs_tile_disabled_by_policy_color), PorterDuff.Mode.SRC_IN);
                return;
            }
            slashImageView.setColorFilter(getColor(state), PorterDuff.Mode.SRC_IN);
            if (state.label == null) {
                this.mState = -1;
            }
        }
    }

    @Override // com.android.systemui.plugins.qs.QSIconView
    public final void setIcon(QSTile.State state, boolean z) {
        setIcon(this.mIcon, state, z);
    }

    @Override // android.view.View
    public final String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append('[');
        sb.append("state=" + this.mState);
        sb.append(", tint=" + this.mTint);
        if (this.mLastIcon != null) {
            sb.append(", lastIcon=" + this.mLastIcon.toString());
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        if (r11 == false) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r11v3, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v6, types: [android.graphics.drawable.Drawable] */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.android.systemui.qs.tileimpl.SlashImageView] */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.widget.ImageView] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setIcon(android.widget.ImageView r9, com.android.systemui.plugins.qs.QSTile.State r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tileimpl.QSIconViewImpl.setIcon(android.widget.ImageView, com.android.systemui.plugins.qs.QSTile$State, boolean):void");
    }
}
