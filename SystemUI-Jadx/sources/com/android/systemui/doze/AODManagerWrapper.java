package com.android.systemui.doze;

import android.content.Context;
import com.samsung.android.aod.AODManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AODManagerWrapper {
    public static final Companion Companion = new Companion(null);
    public static AODManagerWrapper sInstance;
    public final Context mContext;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ AODManagerWrapper(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public final AODManager getService() {
        return AODManager.getInstance(this.mContext);
    }

    public final void writeAODCommand(String str, String str2) {
        if (getService() != null) {
            AODManager service = getService();
            Intrinsics.checkNotNull(service);
            service.writeAODCommand(str, str2, (String) null, (String) null, (String) null);
        }
    }

    private AODManagerWrapper(Context context) {
        this.mContext = context;
    }
}
