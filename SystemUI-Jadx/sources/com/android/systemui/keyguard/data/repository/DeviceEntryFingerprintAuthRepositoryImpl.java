package com.android.systemui.keyguard.data.repository;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dumpable;
import com.android.systemui.biometrics.AuthController;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.dump.DumpManager;
import java.io.PrintWriter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DeviceEntryFingerprintAuthRepositoryImpl implements DeviceEntryFingerprintAuthRepository, Dumpable {
    public final AuthController authController;
    public final ReadonlyStateFlow isLockedOut;
    public final KeyguardUpdateMonitor keyguardUpdateMonitor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public DeviceEntryFingerprintAuthRepositoryImpl(AuthController authController, KeyguardUpdateMonitor keyguardUpdateMonitor, CoroutineScope coroutineScope, DumpManager dumpManager) {
        this.authController = authController;
        this.keyguardUpdateMonitor = keyguardUpdateMonitor;
        dumpManager.registerDumpable(this);
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        DeviceEntryFingerprintAuthRepositoryImpl$isLockedOut$1 deviceEntryFingerprintAuthRepositoryImpl$isLockedOut$1 = new DeviceEntryFingerprintAuthRepositoryImpl$isLockedOut$1(this, null);
        conflatedCallbackFlow.getClass();
        Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(deviceEntryFingerprintAuthRepositoryImpl$isLockedOut$1);
        SharingStarted.Companion.getClass();
        this.isLockedOut = FlowKt.stateIn(conflatedCallbackFlow2, coroutineScope, SharingStarted.Companion.Eagerly, Boolean.FALSE);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("isLockedOut=" + this.isLockedOut.getValue());
    }
}
