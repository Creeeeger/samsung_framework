package com.android.systemui.statusbar.pipeline.airplane.data.repository;

import android.os.Handler;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.log.table.DiffableKt;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.util.settings.GlobalSettings;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AirplaneModeRepositoryImpl implements AirplaneModeRepository {
    public final Handler bgHandler;
    public final GlobalSettings globalSettings;
    public final ReadonlyStateFlow isAirplaneMode;

    public AirplaneModeRepositoryImpl(Handler handler, GlobalSettings globalSettings, TableLogBuffer tableLogBuffer, CoroutineScope coroutineScope) {
        this.bgHandler = handler;
        this.globalSettings = globalSettings;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        AirplaneModeRepositoryImpl$isAirplaneMode$1 airplaneModeRepositoryImpl$isAirplaneMode$1 = new AirplaneModeRepositoryImpl$isAirplaneMode$1(this, null);
        conflatedCallbackFlow.getClass();
        this.isAirplaneMode = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(ConflatedCallbackFlow.conflatedCallbackFlow(airplaneModeRepositoryImpl$isAirplaneMode$1)), tableLogBuffer, "", "isAirplaneMode", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.Companion), Boolean.FALSE);
    }
}
