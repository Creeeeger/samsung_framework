package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import com.android.systemui.BasicRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import java.util.function.Predicate;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class IndicatorCutoutUtil {
    public final Context context;
    public String cutoutString;
    public CutoutType cutoutType = CutoutType.NO_CUTOUT;
    public final DisplayLifecycle displayLifecycle;
    public final IndicatorGardenInputProperties inputProperties;
    public boolean isFrontCameraUsing;
    public final boolean isUDCModel;

    public IndicatorCutoutUtil(Context context, IndicatorGardenInputProperties indicatorGardenInputProperties, DisplayLifecycle displayLifecycle) {
        boolean z;
        String str;
        this.context = context;
        this.inputProperties = indicatorGardenInputProperties;
        this.displayLifecycle = displayLifecycle;
        try {
            int identifier = context.getResources().getIdentifier("config_mainBuiltInDisplayCutoutForUDC", "string", "android");
            if (identifier > 0) {
                str = context.getResources().getString(identifier);
            } else {
                str = null;
            }
        } catch (Exception unused) {
        }
        if (str != null) {
            if (!TextUtils.isEmpty(str)) {
                z = true;
                this.isUDCModel = z;
                loadDisplayCutout();
            }
        }
        z = false;
        this.isUDCModel = z;
        loadDisplayCutout();
    }

    public final Rect getDisplayCutoutAreaToExclude() {
        boolean z;
        boolean z2;
        IndicatorGardenInputProperties indicatorGardenInputProperties = this.inputProperties;
        boolean z3 = true;
        if (indicatorGardenInputProperties.displayCutout != null) {
            z = true;
        } else {
            z = false;
        }
        if (indicatorGardenInputProperties.rotation == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || !isMainDisplay() || !z2 || indicatorGardenInputProperties.isRTL() || this.displayLifecycle.mIsFitToActiveDisplay || (BasicRune.STATUS_LAYOUT_SHOW_ICONS_IN_UDC && !this.isFrontCameraUsing)) {
            z3 = false;
        }
        if (!z3) {
            return null;
        }
        DisplayCutout displayCutout = indicatorGardenInputProperties.displayCutout;
        Intrinsics.checkNotNull(displayCutout);
        return displayCutout.getBoundingRects().stream().filter(new Predicate() { // from class: com.android.systemui.statusbar.phone.IndicatorCutoutUtil$getDisplayCutoutAreaToExclude$1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return !((Rect) obj).isEmpty();
            }
        }).findFirst().orElse(null);
    }

    public final boolean isMainDisplay() {
        if (this.context.getResources().getConfiguration().semDisplayDeviceType == 0) {
            return true;
        }
        return false;
    }

    public final boolean isUDCMainDisplay() {
        if (isMainDisplay() && this.isUDCModel) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void loadDisplayCutout() {
        /*
            r8 = this;
            boolean r0 = com.android.systemui.BasicRune.BASIC_FOLDABLE_TYPE_FOLD
            java.lang.String r1 = "config_mainBuiltInDisplayCutoutForUDC"
            r2 = 1
            android.content.Context r3 = r8.context
            r4 = 0
            if (r0 == 0) goto L1f
            android.content.res.Resources r5 = r3.getResources()
            android.content.res.Configuration r5 = r5.getConfiguration()
            int r5 = r5.semDisplayDeviceType
            r6 = 5
            if (r5 != r6) goto L19
            r5 = r2
            goto L1a
        L19:
            r5 = r4
        L1a:
            if (r5 == 0) goto L1f
            java.lang.String r0 = "config_subBuiltInDisplayCutout"
            goto L2b
        L1f:
            if (r0 == 0) goto L29
            boolean r0 = r8.isUDCMainDisplay()
            if (r0 == 0) goto L29
            r0 = r1
            goto L2b
        L29:
            java.lang.String r0 = "config_mainBuiltInDisplayCutout"
        L2b:
            android.content.res.Resources r5 = r3.getResources()
            java.lang.String r6 = "string"
            java.lang.String r7 = "android"
            int r5 = r5.getIdentifier(r0, r6, r7)
            if (r5 <= 0) goto L43
            android.content.res.Resources r3 = r3.getResources()
            java.lang.String r3 = r3.getString(r5)
            goto L44
        L43:
            r3 = 0
        L44:
            r8.cutoutString = r3
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto L4f
            com.android.systemui.statusbar.phone.CutoutType r0 = com.android.systemui.statusbar.phone.CutoutType.UDC
            goto L82
        L4f:
            java.lang.String r0 = r8.cutoutString
            if (r0 == 0) goto L80
            int r0 = r0.length()
            if (r0 <= 0) goto L5a
            goto L5b
        L5a:
            r2 = r4
        L5b:
            if (r2 == 0) goto L80
            java.lang.String r0 = r8.cutoutString
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.lang.String r1 = "@left"
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L6d
            com.android.systemui.statusbar.phone.CutoutType r0 = com.android.systemui.statusbar.phone.CutoutType.LEFT_CUTOUT
            goto L82
        L6d:
            java.lang.String r0 = r8.cutoutString
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.lang.String r1 = "@right"
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L7d
            com.android.systemui.statusbar.phone.CutoutType r0 = com.android.systemui.statusbar.phone.CutoutType.RIGHT_CUTOUT
            goto L82
        L7d:
            com.android.systemui.statusbar.phone.CutoutType r0 = com.android.systemui.statusbar.phone.CutoutType.CENTER_CUTOUT
            goto L82
        L80:
            com.android.systemui.statusbar.phone.CutoutType r0 = com.android.systemui.statusbar.phone.CutoutType.NO_CUTOUT
        L82:
            r8.cutoutType = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.IndicatorCutoutUtil.loadDisplayCutout():void");
    }
}
