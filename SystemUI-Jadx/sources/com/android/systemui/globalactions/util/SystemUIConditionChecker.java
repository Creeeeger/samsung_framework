package com.android.systemui.globalactions.util;

import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.LogWrapper;
import com.samsung.android.globalactions.util.UtilFactory;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SystemUIConditionChecker implements ConditionChecker {
    public final ConditionChecker mDefaultSystemCondition;
    public final LogWrapper mLogWrapper;
    public final UtilFactory mUtilFactory;

    public SystemUIConditionChecker(UtilFactory utilFactory, ConditionChecker conditionChecker, LogWrapper logWrapper) {
        this.mUtilFactory = utilFactory;
        this.mDefaultSystemCondition = conditionChecker;
        this.mLogWrapper = logWrapper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x010a, code lost:
    
        if (r7.getPhoneRestrictionPolicy(null).checkEnableUseOfPacketData(true) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x022d, code lost:
    
        if (r7.getBundle("function_key_setting").getBoolean("grayout") != false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0239  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isEnabled(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.globalactions.util.SystemUIConditionChecker.isEnabled(java.lang.Object):boolean");
    }
}
