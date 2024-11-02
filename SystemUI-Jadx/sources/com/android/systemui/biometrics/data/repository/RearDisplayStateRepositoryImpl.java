package com.android.systemui.biometrics.data.repository;

import android.content.Context;
import android.hardware.devicestate.DeviceStateManager;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RearDisplayStateRepositoryImpl implements RearDisplayStateRepository {
    public final ReadonlyStateFlow isInRearDisplayMode;

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

    public RearDisplayStateRepositoryImpl(CoroutineScope coroutineScope, Context context, DeviceStateManager deviceStateManager, Executor executor) {
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        RearDisplayStateRepositoryImpl$isInRearDisplayMode$1 rearDisplayStateRepositoryImpl$isInRearDisplayMode$1 = new RearDisplayStateRepositoryImpl$isInRearDisplayMode$1(deviceStateManager, executor, context, null);
        conflatedCallbackFlow.getClass();
        Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(rearDisplayStateRepositoryImpl$isInRearDisplayMode$1);
        SharingStarted.Companion.getClass();
        this.isInRearDisplayMode = FlowKt.stateIn(conflatedCallbackFlow2, coroutineScope, SharingStarted.Companion.Eagerly, Boolean.FALSE);
    }
}
