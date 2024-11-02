package com.android.systemui.volume.middleware;

import com.android.systemui.BasicRune;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.VolumeDependency;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.store.VolumePanelStore;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeInfraMediator;
import com.samsung.systemui.splugins.volume.VolumeMiddleware;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AudioManagerController implements VolumeMiddleware {
    public final Lazy infraMediator$delegate;
    public Boolean isHeadsetConnected;
    public boolean isPanelShowing;
    public final Lazy log$delegate;
    public final Lazy store$delegate;

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
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[VolumePanelAction.ActionType.values().length];
            try {
                iArr[VolumePanelAction.ActionType.ACTION_STATE_CHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelAction.ActionType.ACTION_PANEL_SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelAction.ActionType.ACTION_START_SLIDER_TRACKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelAction.ActionType.ACTION_HEADSET_CONNECTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[VolumePanelState.StateType.values().length];
            try {
                iArr2[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_PLAY_SOUND_ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_SET_STREAM_VOLUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_ICON_CLICKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[VolumePanelState.StateType.STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        new Companion(null);
    }

    public AudioManagerController(final VolumeDependencyBase volumeDependencyBase) {
        this.infraMediator$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.middleware.AudioManagerController$infraMediator$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (VolumeInfraMediator) ((VolumeDependency) VolumeDependencyBase.this).get(VolumeInfraMediator.class);
            }
        });
        this.store$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.middleware.AudioManagerController$store$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (VolumePanelStore) ((VolumeDependency) VolumeDependencyBase.this).get(VolumePanelStore.class);
            }
        });
        this.log$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.systemui.volume.middleware.AudioManagerController$log$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return (LogWrapper) ((VolumeDependency) VolumeDependencyBase.this).get(LogWrapper.class);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x015d  */
    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object apply(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.middleware.AudioManagerController.apply(java.lang.Object):java.lang.Object");
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeMiddleware
    public final void applyState(Object obj) {
        int i;
        VolumePanelState volumePanelState = (VolumePanelState) obj;
        int i2 = WhenMappings.$EnumSwitchMapping$1[volumePanelState.getStateType().ordinal()];
        int i3 = 0;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            getInfraMediator().disableSafeMediaVolume();
                            return;
                        }
                        return;
                    }
                    int stream = volumePanelState.getStream();
                    VolumePanelRow findRow = VolumePanelStateExt.INSTANCE.findRow(volumePanelState, stream);
                    if (findRow != null) {
                        i = findRow.getLevel();
                    } else {
                        i = 0;
                    }
                    getInfraMediator().setActiveStream(stream);
                    setStreamVolume(volumePanelState, stream, i);
                    getInfraMediator().setRingerMode(volumePanelState.getRingerModeInternal(), false);
                    return;
                }
                int stream2 = volumePanelState.getStream();
                VolumePanelRow findRow2 = VolumePanelStateExt.INSTANCE.findRow(volumePanelState, stream2);
                if (findRow2 != null) {
                    i3 = findRow2.getRealLevel();
                }
                boolean isRemoteMic = volumePanelState.isRemoteMic();
                if (VolumePanelValues.isBluetoothSco(stream2) && !isRemoteMic) {
                    i3--;
                }
                setStreamVolume(volumePanelState, stream2, i3);
                return;
            }
            if (BasicRune.VOLUME_HOME_IOT) {
                getInfraMediator().initSound(1);
                getInfraMediator().playSound(volumePanelState.getVolumeDirection());
                return;
            } else {
                getInfraMediator().initSound(volumePanelState.getActiveStream());
                getInfraMediator().playSound();
                return;
            }
        }
        this.isPanelShowing = false;
    }

    public final VolumeInfraMediator getInfraMediator() {
        return (VolumeInfraMediator) this.infraMediator$delegate.getValue();
    }

    public final VolumePanelStore getStore() {
        return (VolumePanelStore) this.store$delegate.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r5 != r0) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setStreamVolume(com.samsung.systemui.splugins.volume.VolumePanelState r4, int r5, int r6) {
        /*
            r3 = this;
            boolean r0 = r4.isDualAudio()
            if (r0 == 0) goto L14
            boolean r0 = r4.isMultiSoundBt()
            int r1 = com.android.systemui.volume.util.StreamUtil.$r8$clinit
            if (r0 == 0) goto L11
            r0 = 21
            goto L12
        L11:
            r0 = 3
        L12:
            if (r5 == r0) goto L1a
        L14:
            boolean r0 = com.samsung.systemui.splugins.volume.VolumePanelValues.isDualAudio(r5)
            if (r0 == 0) goto L4d
        L1a:
            java.util.List r4 = r4.getVolumeRowList()
            java.util.Iterator r4 = r4.iterator()
        L22:
            boolean r0 = r4.hasNext()
            r1 = 0
            if (r0 == 0) goto L3c
            java.lang.Object r0 = r4.next()
            r2 = r0
            com.samsung.systemui.splugins.volume.VolumePanelRow r2 = (com.samsung.systemui.splugins.volume.VolumePanelRow) r2
            int r2 = r2.getStreamType()
            if (r2 != r5) goto L38
            r2 = 1
            goto L39
        L38:
            r2 = 0
        L39:
            if (r2 == 0) goto L22
            goto L3d
        L3c:
            r0 = r1
        L3d:
            com.samsung.systemui.splugins.volume.VolumePanelRow r0 = (com.samsung.systemui.splugins.volume.VolumePanelRow) r0
            if (r0 == 0) goto L45
            java.lang.String r1 = r0.getDualBtDeviceAddress()
        L45:
            com.samsung.systemui.splugins.volume.VolumeInfraMediator r3 = r3.getInfraMediator()
            r3.setStreamVolumeDualAudio(r5, r6, r1)
            goto L54
        L4d:
            com.samsung.systemui.splugins.volume.VolumeInfraMediator r3 = r3.getInfraMediator()
            r3.setStreamVolume(r5, r6)
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.middleware.AudioManagerController.setStreamVolume(com.samsung.systemui.splugins.volume.VolumePanelState, int, int):void");
    }
}
