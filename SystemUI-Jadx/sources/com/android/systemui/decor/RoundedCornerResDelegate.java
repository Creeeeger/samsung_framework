package com.android.systemui.decor;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.FactoryTest;
import android.util.DisplayUtils;
import android.util.Size;
import android.view.RoundedCorners;
import androidx.recyclerview.widget.SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.util.DeviceType;
import java.io.PrintWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RoundedCornerResDelegate implements Dumpable {
    public Drawable bottomRoundedDrawable;
    public boolean displayAspectRatioChanged;
    public String displayUniqueId;
    public boolean hasBottom;
    public boolean hasTop;
    public int reloadToken;
    public final Resources res;
    public Drawable topRoundedDrawable;
    public Integer tuningSizeFactor;
    public Size topRoundedSize = new Size(0, 0);
    public Size bottomRoundedSize = new Size(0, 0);
    public float physicalPixelDisplaySizeRatio = 1.0f;

    public RoundedCornerResDelegate(Resources resources, String str) {
        this.res = resources;
        this.displayUniqueId = str;
        reloadRes();
        reloadMeasures();
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("RoundedCornerResDelegate state:");
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  hasTop=", this.hasTop, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("  hasBottom=", this.hasBottom, printWriter);
        printWriter.println(SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("  topRoundedSize(w,h)=(", this.topRoundedSize.getWidth(), ",", this.topRoundedSize.getHeight(), ")"));
        printWriter.println(SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0.m("  bottomRoundedSize(w,h)=(", this.bottomRoundedSize.getWidth(), ",", this.bottomRoundedSize.getHeight(), ")"));
        printWriter.println("  physicalPixelDisplaySizeRatio=" + this.physicalPixelDisplaySizeRatio);
    }

    public final void reloadMeasures() {
        boolean z;
        Drawable drawable = this.topRoundedDrawable;
        if (drawable != null) {
            this.topRoundedSize = new Size(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        Drawable drawable2 = this.bottomRoundedDrawable;
        if (drawable2 != null) {
            this.bottomRoundedSize = new Size(drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
        }
        Integer num = this.tuningSizeFactor;
        if (num != null) {
            int intValue = num.intValue();
            if (intValue <= 0) {
                return;
            }
            int i = (int) (intValue * this.res.getDisplayMetrics().density);
            if (this.topRoundedSize.getWidth() > 0) {
                this.topRoundedSize = new Size(i, i);
            }
            if (this.bottomRoundedSize.getWidth() > 0) {
                this.bottomRoundedSize = new Size(i, i);
            }
        }
        if (this.physicalPixelDisplaySizeRatio == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (this.topRoundedSize.getWidth() != 0) {
                this.topRoundedSize = new Size((int) ((this.physicalPixelDisplaySizeRatio * this.topRoundedSize.getWidth()) + 0.5f), (int) ((this.physicalPixelDisplaySizeRatio * this.topRoundedSize.getHeight()) + 0.5f));
            }
            if (this.bottomRoundedSize.getWidth() != 0) {
                this.bottomRoundedSize = new Size((int) ((this.physicalPixelDisplaySizeRatio * this.bottomRoundedSize.getWidth()) + 0.5f), (int) ((this.physicalPixelDisplaySizeRatio * this.bottomRoundedSize.getHeight()) + 0.5f));
            }
        }
        if (this.displayAspectRatioChanged) {
            this.topRoundedSize = new Size(0, 0);
            this.bottomRoundedSize = new Size(0, 0);
        }
    }

    public final void reloadRes() {
        boolean z;
        boolean z2;
        Drawable drawable;
        Drawable drawable2;
        String str = this.displayUniqueId;
        Resources resources = this.res;
        int displayUniqueIdConfigIndex = DisplayUtils.getDisplayUniqueIdConfigIndex(resources, str);
        boolean z3 = true;
        if (RoundedCorners.getRoundedCornerRadius(resources, this.displayUniqueId) > 0) {
            z = true;
        } else {
            z = false;
        }
        int i = DeviceType.supportTablet;
        if (!FactoryTest.isFactoryBinary() && z) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.hasTop = z2;
        if (FactoryTest.isFactoryBinary() || !z) {
            z3 = false;
        }
        this.hasBottom = z3;
        TypedArray obtainTypedArray = resources.obtainTypedArray(R.array.config_roundedCornerTopDrawableArray);
        if (displayUniqueIdConfigIndex >= 0 && displayUniqueIdConfigIndex < obtainTypedArray.length()) {
            drawable = obtainTypedArray.getDrawable(displayUniqueIdConfigIndex);
        } else {
            drawable = resources.getDrawable(R.drawable.rounded_corner_top, null);
        }
        obtainTypedArray.recycle();
        this.topRoundedDrawable = drawable;
        TypedArray obtainTypedArray2 = resources.obtainTypedArray(R.array.config_roundedCornerBottomDrawableArray);
        if (displayUniqueIdConfigIndex >= 0 && displayUniqueIdConfigIndex < obtainTypedArray2.length()) {
            drawable2 = obtainTypedArray2.getDrawable(displayUniqueIdConfigIndex);
        } else {
            drawable2 = resources.getDrawable(R.drawable.rounded_corner_bottom, null);
        }
        obtainTypedArray2.recycle();
        this.bottomRoundedDrawable = drawable2;
    }

    public final void updateDisplayUniqueId(String str, Integer num) {
        if (!Intrinsics.areEqual(this.displayUniqueId, str)) {
            this.displayUniqueId = str;
            if (num != null) {
                this.reloadToken = num.intValue();
            }
            reloadRes();
            reloadMeasures();
            return;
        }
        if (num == null || this.reloadToken == num.intValue()) {
            return;
        }
        this.reloadToken = num.intValue();
        reloadMeasures();
    }
}
