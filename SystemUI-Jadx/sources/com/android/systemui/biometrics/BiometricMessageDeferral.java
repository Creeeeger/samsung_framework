package com.android.systemui.biometrics;

import com.android.keyguard.logging.BiometricMessageDeferralLogger;
import com.android.systemui.Dumpable;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.samsung.android.knox.ucm.configurator.UniversalCredentialManager;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class BiometricMessageDeferral implements Dumpable {
    public final Map acquiredInfoToFrequency = new HashMap();
    public final Map acquiredInfoToHelpString = new HashMap();
    public final BiometricMessageDeferralLogger logBuffer;
    public final Set messagesToDefer;
    public Integer mostFrequentAcquiredInfoToDefer;
    public final float threshold;
    public int totalFrames;

    public BiometricMessageDeferral(Set<Integer> set, float f, BiometricMessageDeferralLogger biometricMessageDeferralLogger, DumpManager dumpManager) {
        this.messagesToDefer = set;
        this.threshold = f;
        this.logBuffer = biometricMessageDeferralLogger;
        DumpManager.registerDumpable$default(dumpManager, getClass().getName(), this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("messagesToDefer=" + this.messagesToDefer);
        printWriter.println("totalFrames=" + this.totalFrames);
        printWriter.println("threshold=" + this.threshold);
    }

    public final void reset() {
        this.totalFrames = 0;
        this.mostFrequentAcquiredInfoToDefer = null;
        ((HashMap) this.acquiredInfoToFrequency).clear();
        ((HashMap) this.acquiredInfoToHelpString).clear();
        BiometricMessageDeferralLogger biometricMessageDeferralLogger = this.logBuffer;
        LogBuffer.log$default(biometricMessageDeferralLogger.logBuffer, biometricMessageDeferralLogger.tag, LogLevel.DEBUG, UniversalCredentialManager.RESET_APPLET_FORM_FACTOR, null, 8, null);
    }
}
