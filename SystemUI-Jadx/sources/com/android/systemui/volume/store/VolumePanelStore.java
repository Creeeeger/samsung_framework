package com.android.systemui.volume.store;

import android.os.Trace;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.DispatchException;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.middleware.AudioManagerController;
import com.android.systemui.volume.middleware.BixbyServiceInteractor;
import com.android.systemui.volume.middleware.BluetoothInteractor;
import com.android.systemui.volume.middleware.DeviceStateController;
import com.android.systemui.volume.middleware.JSonLogger;
import com.android.systemui.volume.middleware.SALogger;
import com.android.systemui.volume.middleware.SmartViewInteractor;
import com.android.systemui.volume.reducer.VolumePanelReducer;
import com.samsung.systemui.splugins.volume.VolumeDisposable;
import com.samsung.systemui.splugins.volume.VolumeMiddleware;
import com.samsung.systemui.splugins.volume.VolumeObservable;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumeUnsubscriber;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelStore implements VolumeObservable, VolumeObserver {
    public boolean isWorking;
    public final LogWrapper logWrapper;
    public final ArrayList middlewares;
    public final ArrayList observers = new ArrayList();
    public VolumePanelState currentState = new VolumePanelState.Builder().build();
    public final VolumePanelReducer reducer = new VolumePanelReducer();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
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

    public VolumePanelStore(VolumeDependencyBase volumeDependencyBase) {
        this.logWrapper = (LogWrapper) ((VolumeDependency) volumeDependencyBase).get(LogWrapper.class);
        this.middlewares = CollectionsKt__CollectionsKt.arrayListOf(new JSonLogger(volumeDependencyBase), new DeviceStateController(volumeDependencyBase), new AudioManagerController(volumeDependencyBase), new SmartViewInteractor(volumeDependencyBase), new BluetoothInteractor(volumeDependencyBase), new BixbyServiceInteractor(volumeDependencyBase), new SALogger(volumeDependencyBase));
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObservable
    public final /* bridge */ /* synthetic */ void dispatch(Object obj, boolean z) {
        dispatch((VolumePanelState) obj);
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObservable
    public final VolumeDisposable subscribe(VolumeObserver volumeObserver) {
        ArrayList arrayList = this.observers;
        if (!arrayList.contains(volumeObserver)) {
            arrayList.add(volumeObserver);
        }
        this.logWrapper.d("VolumePanelStore", "subscribe : observer count=" + arrayList.size() + ", observer=" + volumeObserver);
        return new VolumeUnsubscriber(arrayList, volumeObserver);
    }

    public final void dispatch(VolumePanelState volumePanelState) {
        ArrayList arrayList = new ArrayList(this.observers);
        this.isWorking = true;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((VolumeObserver) it.next()).onChanged(volumePanelState);
        }
        this.isWorking = false;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(VolumePanelAction volumePanelAction) {
        String str;
        VolumePanelAction volumePanelAction2;
        VolumePanelAction volumePanelAction3;
        VolumePanelAction volumePanelAction4 = volumePanelAction;
        String str2 = "VolumePanelStore#onChanged(" + volumePanelAction.getActionType() + ")";
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        VolumePanelReducer volumePanelReducer = this.reducer;
        LogWrapper logWrapper = this.logWrapper;
        ArrayList arrayList = this.middlewares;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, str2);
            try {
                if (!this.isWorking) {
                    if (volumePanelAction.getActionType() != VolumePanelAction.ActionType.ACTION_PLAY_SOUND_ON) {
                        logWrapper.d("VolumePanelStore", "dispatch [" + volumePanelAction.getActionType() + " with [" + this.currentState.getStateType() + "], currentAction={" + volumePanelAction4 + "}, currentState={" + this.currentState + "}");
                    }
                    Iterator it = arrayList.iterator();
                    loop0: while (true) {
                        volumePanelAction3 = volumePanelAction4;
                        while (it.hasNext()) {
                            volumePanelAction3 = (VolumePanelAction) ((VolumeMiddleware) it.next()).apply(volumePanelAction4);
                            if (!Intrinsics.areEqual(volumePanelAction3, volumePanelAction4)) {
                                break;
                            }
                        }
                        volumePanelAction4 = volumePanelAction3;
                    }
                    VolumePanelState reduce = volumePanelReducer.reduce(volumePanelAction3, this.currentState);
                    if (volumePanelAction4.getActionType() != VolumePanelAction.ActionType.ACTION_PLAY_SOUND_ON) {
                        logWrapper.d("VolumePanelStore", "  > New State : [" + reduce.getStateType() + "]");
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((VolumeMiddleware) it2.next()).applyState(reduce);
                    }
                    if (reduce.getStateType() != VolumePanelState.StateType.STATE_NO_DISPATCH) {
                        this.currentState = reduce;
                        dispatch(reduce);
                    } else {
                        this.currentState = reduce;
                    }
                    Unit unit = Unit.INSTANCE;
                    return;
                }
                throw new DispatchException("use handler!!");
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        if (!this.isWorking) {
            if (volumePanelAction.getActionType() != VolumePanelAction.ActionType.ACTION_PLAY_SOUND_ON) {
                str = "]";
                logWrapper.d("VolumePanelStore", "dispatch [" + volumePanelAction.getActionType() + " with [" + this.currentState.getStateType() + "], currentAction={" + volumePanelAction4 + "}, currentState={" + this.currentState + "}");
            } else {
                str = "]";
            }
            Iterator it3 = arrayList.iterator();
            loop3: while (true) {
                volumePanelAction2 = volumePanelAction4;
                while (it3.hasNext()) {
                    volumePanelAction2 = (VolumePanelAction) ((VolumeMiddleware) it3.next()).apply(volumePanelAction4);
                    if (!Intrinsics.areEqual(volumePanelAction2, volumePanelAction4)) {
                        break;
                    }
                }
                volumePanelAction4 = volumePanelAction2;
            }
            VolumePanelState reduce2 = volumePanelReducer.reduce(volumePanelAction2, this.currentState);
            if (volumePanelAction4.getActionType() != VolumePanelAction.ActionType.ACTION_PLAY_SOUND_ON) {
                logWrapper.d("VolumePanelStore", "  > New State : [" + reduce2.getStateType() + str);
            }
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                ((VolumeMiddleware) it4.next()).applyState(reduce2);
            }
            if (reduce2.getStateType() != VolumePanelState.StateType.STATE_NO_DISPATCH) {
                this.currentState = reduce2;
                dispatch(reduce2);
                return;
            } else {
                this.currentState = reduce2;
                return;
            }
        }
        throw new DispatchException("use handler!!");
    }
}
