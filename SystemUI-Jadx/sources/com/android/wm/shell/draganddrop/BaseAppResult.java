package com.android.wm.shell.draganddrop;

import com.android.wm.shell.draganddrop.ExecutableAppHolder;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class BaseAppResult implements AppResult {
    public final String mContentType;
    public final ExecutableAppHolder.MultiInstanceAllowList mMultiInstanceAllowList;
    public final ExecutableAppHolder.MultiInstanceBlockList mMultiInstanceBlockList;

    public BaseAppResult(ExecutableAppHolder.MultiInstanceBlockList multiInstanceBlockList, ExecutableAppHolder.MultiInstanceAllowList multiInstanceAllowList, String str) {
        this.mMultiInstanceBlockList = multiInstanceBlockList;
        this.mMultiInstanceAllowList = multiInstanceAllowList;
        this.mContentType = str;
    }

    @Override // com.android.wm.shell.draganddrop.AppResult
    public final String getContentType() {
        return this.mContentType;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0124 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isVisibleSingleInstance(java.util.List r12, android.content.pm.ActivityInfo r13) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.BaseAppResult.isVisibleSingleInstance(java.util.List, android.content.pm.ActivityInfo):boolean");
    }
}
