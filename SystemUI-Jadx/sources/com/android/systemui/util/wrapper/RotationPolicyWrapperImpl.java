package com.android.systemui.util.wrapper;

import android.content.Context;
import android.os.Trace;
import com.android.internal.view.RotationPolicy;
import com.android.systemui.util.settings.SecureSettings;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RotationPolicyWrapperImpl implements RotationPolicyWrapper {
    public final Context context;
    public final SecureSettings secureSettings;

    public RotationPolicyWrapperImpl(Context context, SecureSettings secureSettings) {
        this.context = context;
        this.secureSettings = secureSettings;
    }

    public final void setRotationLock(boolean z) {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        Context context = this.context;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "RotationPolicyWrapperImpl#setRotationLock");
            try {
                RotationPolicy.setRotationLock(context, z);
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        RotationPolicy.setRotationLock(context, z);
    }
}
