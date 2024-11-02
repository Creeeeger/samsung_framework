package com.android.launcher3.icons;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class BitmapInfo {
    public static final Bitmap LOW_RES_ICON;
    public BitmapInfo badgeInfo;
    public final int color;
    public int flags;
    public final Bitmap icon;
    public Bitmap mMono;
    public Bitmap mWhiteShadowLayer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Extender {
    }

    static {
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
        LOW_RES_ICON = createBitmap;
        new BitmapInfo(createBitmap, 0);
    }

    public BitmapInfo(Bitmap bitmap, int i) {
        this.icon = bitmap;
        this.color = i;
    }

    public final void applyFlags(Context context, FastBitmapDrawable fastBitmapDrawable) {
        int i;
        int i2;
        int i3;
        GraphicsUtils$$ExternalSyntheticLambda0 graphicsUtils$$ExternalSyntheticLambda0 = GraphicsUtils.sOnNewBitmapRunnable;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.disabledIconAlpha});
        float f = obtainStyledAttributes.getFloat(0, 1.0f);
        obtainStyledAttributes.recycle();
        fastBitmapDrawable.mDisabledAlpha = f;
        BitmapInfo bitmapInfo = this.badgeInfo;
        if (bitmapInfo != null) {
            fastBitmapDrawable.setBadge(bitmapInfo.newIcon(context));
            return;
        }
        int i4 = this.flags;
        if ((i4 & 2) != 0) {
            if (fastBitmapDrawable.isThemed()) {
                i3 = R.drawable.ic_instant_app_badge_themed;
            } else {
                i3 = R.drawable.ic_instant_app_badge;
            }
            fastBitmapDrawable.setBadge(context.getDrawable(i3));
            return;
        }
        if ((i4 & 1) != 0) {
            if (fastBitmapDrawable.isThemed()) {
                i2 = R.drawable.ic_work_app_badge_themed;
            } else {
                i2 = R.drawable.ic_work_app_badge;
            }
            fastBitmapDrawable.setBadge(context.getDrawable(i2));
            return;
        }
        if ((i4 & 4) != 0) {
            if (fastBitmapDrawable.isThemed()) {
                i = R.drawable.ic_clone_app_badge_themed;
            } else {
                i = R.drawable.ic_clone_app_badge;
            }
            fastBitmapDrawable.setBadge(context.getDrawable(i));
        }
    }

    public FastBitmapDrawable newIcon(Context context) {
        boolean z;
        FastBitmapDrawable fastBitmapDrawable;
        if (LOW_RES_ICON == this.icon) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            fastBitmapDrawable = new PlaceHolderIconDrawable(this, context);
        } else {
            fastBitmapDrawable = new FastBitmapDrawable(this);
        }
        applyFlags(context, fastBitmapDrawable);
        return fastBitmapDrawable;
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitmapInfo mo64clone() {
        BitmapInfo bitmapInfo = new BitmapInfo(this.icon, this.color);
        bitmapInfo.mMono = this.mMono;
        bitmapInfo.mWhiteShadowLayer = this.mWhiteShadowLayer;
        bitmapInfo.flags = this.flags;
        bitmapInfo.badgeInfo = this.badgeInfo;
        return bitmapInfo;
    }
}
