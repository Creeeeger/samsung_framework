package com.android.systemui.flags;

import com.android.systemui.CoreStartable;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FeatureFlagsReleaseStartable implements CoreStartable {
    public FeatureFlagsReleaseStartable(DumpManager dumpManager, final FeatureFlags featureFlags) {
        dumpManager.registerCriticalDumpable("SysUIFlags", new Dumpable() { // from class: com.android.systemui.flags.FeatureFlagsReleaseStartable.1
            @Override // com.android.systemui.Dumpable
            public final void dump(PrintWriter printWriter, String[] strArr) {
                ((FeatureFlagsRelease) FeatureFlags.this).dump(printWriter, strArr);
            }
        });
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
    }
}
