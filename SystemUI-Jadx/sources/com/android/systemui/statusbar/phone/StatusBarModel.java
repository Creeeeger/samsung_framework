package com.android.systemui.statusbar.phone;

import android.graphics.Rect;
import androidx.fragment.app.FragmentTransaction$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.StatusBarState;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarModel {
    public final int barState;
    public final boolean isWhiteKeyguardStatusBar;
    public final ArrayList lightBarBounds;
    public final String logText;
    public final int numStacks;
    public final String packageName;
    public final int statusBarMode;

    public StatusBarModel(String str, int i, ArrayList<Rect> arrayList, int i2, String str2, int i3, boolean z) {
        this.logText = str;
        this.numStacks = i;
        this.lightBarBounds = arrayList;
        this.statusBarMode = i2;
        this.packageName = str2;
        this.barState = i3;
        this.isWhiteKeyguardStatusBar = z;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof StatusBarModel) && Intrinsics.areEqual(((StatusBarModel) obj).logText, this.logText)) {
            return true;
        }
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int m = AppInfoViewData$$ExternalSyntheticOutline0.m(this.barState, AppInfo$$ExternalSyntheticOutline0.m(this.packageName, AppInfoViewData$$ExternalSyntheticOutline0.m(this.statusBarMode, (this.lightBarBounds.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.numStacks, this.logText.hashCode() * 31, 31)) * 31, 31), 31), 31);
        boolean z = this.isWhiteKeyguardStatusBar;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m + i;
    }

    public final String toString() {
        String str = this.packageName;
        if (StringsKt__StringsKt.contains(str, "com.att", false)) {
            str = "";
        }
        return FragmentTransaction$$ExternalSyntheticOutline0.m(new StringBuilder("("), this.logText, ") ", "numStacks:" + this.numStacks + ", StatusBarMode:" + BarTransitions.modeToString(this.statusBarMode) + ", lightBarBounds:" + this.lightBarBounds + ", StatusBarState:" + StatusBarState.toString(this.barState) + ", packageName:" + str + ", isWhiteKeyguardStatusBar:" + this.isWhiteKeyguardStatusBar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public StatusBarModel(java.lang.String r10, int r11, java.util.ArrayList r12, int r13, java.lang.String r14, int r15, boolean r16, int r17, kotlin.jvm.internal.DefaultConstructorMarker r18) {
        /*
            r9 = this;
            r0 = r17 & 32
            if (r0 == 0) goto L12
            java.lang.Class<com.android.systemui.plugins.statusbar.StatusBarStateController> r0 = com.android.systemui.plugins.statusbar.StatusBarStateController.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.plugins.statusbar.StatusBarStateController r0 = (com.android.systemui.plugins.statusbar.StatusBarStateController) r0
            int r0 = r0.getState()
            r7 = r0
            goto L13
        L12:
            r7 = r15
        L13:
            r0 = r17 & 64
            if (r0 == 0) goto L34
            java.lang.Class<com.android.systemui.util.SettingsHelper> r0 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.SettingsHelper r0 = (com.android.systemui.util.SettingsHelper) r0
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r1 = "white_lockscreen_statusbar"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r1)
            int r0 = r0.getIntValue()
            r1 = 1
            if (r0 != r1) goto L31
            r0 = r1
            goto L32
        L31:
            r0 = 0
        L32:
            r8 = r0
            goto L36
        L34:
            r8 = r16
        L36:
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarModel.<init>(java.lang.String, int, java.util.ArrayList, int, java.lang.String, int, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
