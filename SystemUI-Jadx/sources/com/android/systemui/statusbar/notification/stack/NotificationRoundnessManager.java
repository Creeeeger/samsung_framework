package com.android.systemui.statusbar.notification.stack;

import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.notification.SourceType;
import java.io.PrintWriter;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationRoundnessManager implements Dumpable {
    public HashSet mAnimatedChildren;
    public boolean mIsClearAllInProgress;
    public boolean mRoundForPulsingViews;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SectionStateProvider {
    }

    static {
        SourceType.from("DismissAnimation");
    }

    public NotificationRoundnessManager(DumpManager dumpManager) {
        dumpManager.getClass();
        DumpManager.registerDumpable$default(dumpManager, "NotificationRoundnessManager", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(new StringBuilder("roundForPulsingViews="), this.mRoundForPulsingViews, printWriter, "isClearAllInProgress="), this.mIsClearAllInProgress, printWriter);
    }
}
