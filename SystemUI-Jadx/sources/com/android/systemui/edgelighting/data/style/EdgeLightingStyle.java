package com.android.systemui.edgelighting.data.style;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawable21;
import com.android.systemui.R;
import com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle;
import com.android.systemui.edgelighting.settings.EdgeLightingStyleActivity;
import com.android.systemui.edgelighting.utils.DrawableUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgeLightingStyle implements IEdgeLightingStyle {
    public final boolean mColorOption;
    public final boolean mIsSupport;
    public final String mKey;
    public final int mPreviewImgResID;
    public final int mTitleStrID;
    public final boolean mTransparencyOption;
    public final boolean mWidthOption;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.edgelighting.data.style.EdgeLightingStyle$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption;

        static {
            int[] iArr = new int[EdgeLightingStyleOption.values().length];
            $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption = iArr;
            try {
                iArr[EdgeLightingStyleOption.COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption[EdgeLightingStyleOption.WIDTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption[EdgeLightingStyleOption.TRANSPARENCY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption[EdgeLightingStyleOption.EFFECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption[EdgeLightingStyleOption.DURATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public EdgeLightingStyle(String str, boolean z, boolean z2, int i, int i2, int i3) {
        this.mTransparencyOption = true;
        this.mTitleStrID = 0;
        this.mPreviewImgResID = 0;
        this.mKey = str;
        this.mColorOption = z;
        this.mWidthOption = z2;
        this.mTitleStrID = i;
        this.mPreviewImgResID = i3;
        this.mIsSupport = true;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final String getKey() {
        return this.mKey;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final Drawable getRoundedIcon(EdgeLightingStyleActivity edgeLightingStyleActivity) {
        RoundedBitmapDrawable21 roundedBitmapDrawable21 = new RoundedBitmapDrawable21(edgeLightingStyleActivity.getResources(), DrawableUtils.drawableToBitmap(edgeLightingStyleActivity.getResources().getDrawable(this.mPreviewImgResID, null)));
        roundedBitmapDrawable21.setCornerRadius(edgeLightingStyleActivity.getResources().getDimensionPixelSize(R.dimen.settings_edge_lighting_style_item_radius));
        roundedBitmapDrawable21.mPaint.setAntiAlias(true);
        roundedBitmapDrawable21.invalidateSelf();
        return roundedBitmapDrawable21;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final CharSequence getTitle(Context context) {
        return context.getText(this.mTitleStrID);
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final boolean isSupportEffect() {
        return this.mIsSupport;
    }

    @Override // com.android.systemui.edgelighting.interfaces.IEdgeLightingStyle
    public final boolean isSupportOption(EdgeLightingStyleOption edgeLightingStyleOption) {
        int i = AnonymousClass1.$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption[edgeLightingStyleOption.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4 || i == 5) {
                        return true;
                    }
                    return false;
                }
                return this.mTransparencyOption;
            }
            return this.mWidthOption;
        }
        return this.mColorOption;
    }

    public EdgeLightingStyle(String str, boolean z, boolean z2, int i, int i2, int i3, boolean z3) {
        this.mTransparencyOption = true;
        this.mTitleStrID = 0;
        this.mPreviewImgResID = 0;
        this.mKey = str;
        this.mColorOption = z;
        this.mWidthOption = z2;
        this.mTitleStrID = i;
        this.mPreviewImgResID = i3;
        this.mIsSupport = z3;
    }

    public EdgeLightingStyle(String str, boolean z, boolean z2, boolean z3, int i, int i2, int i3, boolean z4) {
        this.mTransparencyOption = true;
        this.mTitleStrID = 0;
        this.mPreviewImgResID = 0;
        this.mKey = str;
        this.mColorOption = z;
        this.mWidthOption = z2;
        this.mTransparencyOption = z3;
        this.mTitleStrID = i;
        this.mPreviewImgResID = i3;
        this.mIsSupport = z4;
    }
}
