package com.android.systemui.volume.middleware;

import com.android.systemui.ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.util.HandlerWrapper;
import com.google.gson.Gson;
import com.samsung.systemui.splugins.volume.VolumeMiddleware;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class JSonLogger implements VolumeMiddleware {
    public final HandlerWrapper handler;
    public final LogWrapper log;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VolumePanelState.StateType.values().length];
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE_PROGRESS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public JSonLogger(VolumeDependencyBase volumeDependencyBase) {
        VolumeDependency volumeDependency = (VolumeDependency) volumeDependencyBase;
        this.handler = (HandlerWrapper) volumeDependency.get(HandlerWrapper.class);
        this.log = (LogWrapper) volumeDependency.get(LogWrapper.class);
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    public final Object apply(Object obj) {
        final VolumePanelAction volumePanelAction = (VolumePanelAction) obj;
        if (volumePanelAction.isFromOutside()) {
            this.handler.postInBgThread(new Runnable() { // from class: com.android.systemui.volume.middleware.JSonLogger$apply$1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.log.p(new Gson().toJson(VolumePanelAction.this));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        return volumePanelAction;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    public final void applyState(Object obj) {
        Object failure;
        boolean z;
        boolean z2;
        VolumePanelState volumePanelState = (VolumePanelState) obj;
        int i = WhenMappings.$EnumSwitchMapping$0[volumePanelState.getStateType().ordinal()];
        LogWrapper logWrapper = this.log;
        if (i != 1) {
            if (i == 2) {
                List<VolumePanelRow> volumeRowList = volumePanelState.getVolumeRowList();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : volumeRowList) {
                    if (((VolumePanelRow) obj2).getStreamType() == volumePanelState.getStream()) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        arrayList.add(obj2);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    VolumePanelRow volumePanelRow = (VolumePanelRow) it.next();
                    logWrapper.d("JSonLogger", ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0.m("updateVolumeProgress ", volumePanelRow.getStreamType(), " : ", volumePanelRow.getRealLevel()));
                }
                return;
            }
            return;
        }
        try {
            int i2 = Result.$r8$clinit;
            Gson gson = new Gson();
            List<VolumePanelRow> volumeRowList2 = volumePanelState.getVolumeRowList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : volumeRowList2) {
                if (((VolumePanelRow) obj3).getStreamType() == volumePanelState.getActiveStream()) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    arrayList2.add(obj3);
                }
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                VolumePanelRow volumePanelRow2 = (VolumePanelRow) it2.next();
                logWrapper.d("JSonLogger", "applyVolumeRow " + volumePanelRow2.getStreamType() + ": " + gson.toJson(volumePanelRow2));
            }
            failure = Unit.INSTANCE;
            int i3 = Result.$r8$clinit;
        } catch (Throwable th) {
            int i4 = Result.$r8$clinit;
            failure = new Result.Failure(th);
        }
        Throwable m2571exceptionOrNullimpl = Result.m2571exceptionOrNullimpl(failure);
        if (m2571exceptionOrNullimpl != null) {
            m2571exceptionOrNullimpl.printStackTrace();
        }
    }
}
