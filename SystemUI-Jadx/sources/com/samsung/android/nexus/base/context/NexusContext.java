package com.samsung.android.nexus.base.context;

import android.content.Context;
import com.samsung.android.nexus.base.animator.AnimatorCore;
import com.samsung.android.nexus.base.utils.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NexusContext {
    public final AnimatorCore mAnimatorCore;
    public final Context mContext;
    public int mHeight;
    public int mWidth;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class ModeData {
    }

    public NexusContext(Context context) {
        new ModeData();
        this.mWidth = 0;
        this.mHeight = 0;
        Log.i("NexusContext", "NexusContext() : create NexusContext");
        this.mContext = context;
        this.mAnimatorCore = new AnimatorCore();
    }
}
