package com.android.systemui.pluginlock;

import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockInstancePolicy {
    public static final String[] DEFAULT_PACKAGES = {"com.samsung.android.dynamiclock:2"};
    public static final String[] DUAL_DISPLAY_PACKAGES = {"com.samsung.android.dynamiclock", "com.samsung.android.dynamiclock:2"};
    public static final String[] DUAL_DISPLAY_PACKAGES_FOLDER = {"com.samsung.android.dynamiclock:2"};
    public final Map mCategoryMap = new HashMap();

    public static boolean isEnable(int i) {
        boolean z;
        if (i >= 0 && i % 10 != 0) {
            z = true;
        } else {
            z = false;
        }
        KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("isEnable() value:", i, ", ret:", z, "PluginLockInstancePolicy");
        return z;
    }

    public static boolean isSameInstance(int i, int i2) {
        boolean z;
        if (i / 10 == i2 / 10) {
            z = true;
        } else {
            z = false;
        }
        ActionBarContextView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("isSameInstance() submitNum:", i, ", matchedNum:", i2, ", ret:"), z, "PluginLockInstancePolicy");
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if ((r3.intValue() & 1) == 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isDefaultInstance(int r4) {
        /*
            r3 = this;
            java.util.Map r3 = r3.mCategoryMap
            int r0 = r4 / 10
            int r0 = r0 * 10
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.util.HashMap r3 = (java.util.HashMap) r3
            java.lang.Object r3 = r3.get(r0)
            java.lang.Integer r3 = (java.lang.Integer) r3
            if (r3 == 0) goto L1d
            int r3 = r3.intValue()
            r0 = 1
            r3 = r3 & r0
            if (r3 != r0) goto L1d
            goto L1e
        L1d:
            r0 = 0
        L1e:
            java.lang.String r3 = "isDefaultInstance() allowedNumber:"
            java.lang.String r1 = ", ret:"
            java.lang.String r2 = "PluginLockInstancePolicy"
            com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m(r3, r4, r1, r0, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginLockInstancePolicy.isDefaultInstance(int):boolean");
    }
}
