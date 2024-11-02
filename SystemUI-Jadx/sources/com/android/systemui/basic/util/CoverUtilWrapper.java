package com.android.systemui.basic.util;

import com.android.systemui.util.CoverUtil;
import com.samsung.android.cover.CoverState;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverUtilWrapper {
    public Runnable mActionBeforeSecureConfirm;
    public CoverState mCoverState;
    public final CoverUtil mCoverUtil;
    public final Map mListeners = new HashMap();

    public CoverUtilWrapper(CoverUtil coverUtil) {
        this.mCoverUtil = coverUtil;
        coverUtil.mCoverStateChangedListeners.add(new CoverUtilWrapper$$ExternalSyntheticLambda0(this));
    }
}
