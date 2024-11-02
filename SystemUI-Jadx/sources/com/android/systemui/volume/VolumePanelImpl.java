package com.android.systemui.volume;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.android.systemui.BasicRune;
import com.android.systemui.volume.soundassistant.SoundAssistantChecker;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.store.VolumePanelStore;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.SoundAssistantManagerWrapper;
import com.android.systemui.volume.view.standard.VolumePanelWindow;
import com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelMotion;
import com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelView;
import com.android.systemui.volume.view.subscreen.full.SubFullLayoutVolumePanelWindow;
import com.android.systemui.volume.view.subscreen.simple.SubDisplayVolumePanelPresentation;
import com.samsung.systemui.splugins.volume.ExtendableVolumePanel;
import com.samsung.systemui.splugins.volume.VolumeDisposable;
import com.samsung.systemui.splugins.volume.VolumeInfraMediator;
import com.samsung.systemui.splugins.volume.VolumeObservable;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelImpl implements VolumeObserver, ExtendableVolumePanel {
    public VolumeObserver actionObserver;
    public final HandlerWrapper handlerWrapper;
    public final VolumeInfraMediator infraMediator;
    public final VolumePanelImpl$safetyVolumeCallback$1 safetyVolumeCallback;
    public final SoundAssistantManagerWrapper soundAssistant;
    public final SoundAssistantChecker soundAssistantChecker;
    public final VolumePanelStore store;
    public VolumeDisposable storeDisposable;
    public SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation;
    public SubFullLayoutVolumePanelWindow subFullLayoutWindow;
    public final VolumePanelImpl$timeOutCallback$1 timeOutCallback;
    public final VolumeDependencyBase volDeps;
    public VolumePanelWindow window;

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
                iArr[VolumePanelState.StateType.STATE_IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_ARROW_LEFT_CLICKED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_ARROW_RIGHT_CLICKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_TOUCH_PANEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_RESCHEDULE_TIME_OUT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_EXPAND_STATE_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_UPDATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL_COMPLETED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_OPEN_THEME_CHANGED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_CONFIGURATION_CHANGED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SETTINGS_BUTTON_CLICKED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_STATUS_MESSAGE_CLICKED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_STATUS_LE_BROADCASTING_MESSAGE_CLICKED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_FOLDER_STATE_CHANGED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_SHOW_VOLUME_CSD_100_WARNING_DIALOG.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_COVER_STATE_CHANGED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_VOLUME_CSD_100_WARNING_DIALOG_FLAG_DISMISS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_VOLUME_CSD_100_WARNING_DIALOG_SET_SAFETY_VOLUME.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r2v13, types: [com.android.systemui.volume.VolumePanelImpl$timeOutCallback$1] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.android.systemui.volume.VolumePanelImpl$safetyVolumeCallback$1] */
    public VolumePanelImpl(Context context, VolumeDependencyBase volumeDependencyBase) {
        this.volDeps = volumeDependencyBase;
        VolumeDependency volumeDependency = (VolumeDependency) volumeDependencyBase;
        this.infraMediator = (VolumeInfraMediator) volumeDependency.get(VolumeInfraMediator.class);
        this.handlerWrapper = (HandlerWrapper) volumeDependency.get(HandlerWrapper.class);
        this.soundAssistant = (SoundAssistantManagerWrapper) volumeDependency.get(SoundAssistantManagerWrapper.class);
        VolumePanelStore volumePanelStore = (VolumePanelStore) volumeDependency.get(VolumePanelStore.class);
        this.store = volumePanelStore;
        this.soundAssistantChecker = (SoundAssistantChecker) volumeDependency.get(SoundAssistantChecker.class);
        this.window = (VolumePanelWindow) volumeDependency.get(VolumePanelWindow.class);
        this.storeDisposable = volumePanelStore.subscribe(this);
        this.actionObserver = volumePanelStore;
        this.timeOutCallback = new Runnable() { // from class: com.android.systemui.volume.VolumePanelImpl$timeOutCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                VolumePanelImpl.this.dispatch(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_TIME_OUT).build(), false);
            }
        };
        this.safetyVolumeCallback = new Runnable() { // from class: com.android.systemui.volume.VolumePanelImpl$safetyVolumeCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                VolumePanelImpl.this.dispatch(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_VOLUME_CSD_100_WARNING_DIALOG_TIMEOUT).build(), false);
            }
        };
    }

    public final void dispatch(final VolumePanelAction volumePanelAction, boolean z) {
        if (z) {
            ((Handler) this.handlerWrapper.mainThreadHandler$delegate.getValue()).post(new Runnable() { // from class: com.android.systemui.volume.VolumePanelImpl$dispatch$1
                @Override // java.lang.Runnable
                public final void run() {
                    VolumePanelImpl.this.actionObserver.onChanged(volumePanelAction);
                }
            });
        } else {
            this.actionObserver.onChanged(volumePanelAction);
        }
    }

    @Override // com.samsung.systemui.splugins.volume.ExtendableVolumePanel
    public final VolumePanelState getVolumePanelCurrentState() {
        return this.store.currentState;
    }

    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    public final void onChanged(Object obj) {
        VolumePanelState volumePanelState = (VolumePanelState) obj;
        int i = WhenMappings.$EnumSwitchMapping$0[volumePanelState.getStateType().ordinal()];
        VolumePanelImpl$safetyVolumeCallback$1 volumePanelImpl$safetyVolumeCallback$1 = this.safetyVolumeCallback;
        VolumePanelImpl$timeOutCallback$1 volumePanelImpl$timeOutCallback$1 = this.timeOutCallback;
        HandlerWrapper handlerWrapper = this.handlerWrapper;
        VolumeInfraMediator volumeInfraMediator = this.infraMediator;
        switch (i) {
            case 1:
                volumeInfraMediator.notifyVisible(false);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
                int timeOut = volumePanelState.getTimeOut();
                handlerWrapper.remove(volumePanelImpl$timeOutCallback$1);
                handlerWrapper.postDelayed(timeOut, volumePanelImpl$timeOutCallback$1);
                volumeInfraMediator.userActivity();
                volumeInfraMediator.notifyVisible(true);
                return;
            case 6:
            case 7:
            case 8:
            case 9:
                if (volumePanelState.isShowing() || volumePanelState.isShowingSubDisplayVolumePanel()) {
                    int timeOut2 = volumePanelState.getTimeOut();
                    handlerWrapper.remove(volumePanelImpl$timeOutCallback$1);
                    handlerWrapper.postDelayed(timeOut2, volumePanelImpl$timeOutCallback$1);
                    volumeInfraMediator.userActivity();
                    return;
                }
                return;
            case 10:
                handlerWrapper.remove(volumePanelImpl$timeOutCallback$1);
                volumeInfraMediator.notifyVisible(false);
                return;
            case 11:
                volumeInfraMediator.startSettingsActivity();
                if (volumePanelState.getCoverType() == 8 || !volumePanelState.isCoverClosed()) {
                    volumeInfraMediator.sendSystemDialogsCloseAction();
                    return;
                }
                return;
            case 12:
            case 13:
                recreateVolumePanelForNewConfig();
                return;
            case 14:
                volumeInfraMediator.startVolumeSettingsActivity();
                return;
            case 15:
                volumeInfraMediator.startHearingEnhancementsActivity();
                return;
            case 16:
                volumeInfraMediator.startLeBroadcastActivity();
                return;
            case 17:
                if (volumePanelState.isFolded()) {
                    boolean z = BasicRune.VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG;
                    VolumeDependencyBase volumeDependencyBase = this.volDeps;
                    if (z) {
                        SubFullLayoutVolumePanelWindow subFullLayoutVolumePanelWindow = (SubFullLayoutVolumePanelWindow) ((VolumeDependency) volumeDependencyBase).getNewObject(SubFullLayoutVolumePanelWindow.class);
                        subFullLayoutVolumePanelWindow.observeStore();
                        this.subFullLayoutWindow = subFullLayoutVolumePanelWindow;
                        return;
                    } else {
                        SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation = (SubDisplayVolumePanelPresentation) ((VolumeDependency) volumeDependencyBase).getNewObject(SubDisplayVolumePanelPresentation.class);
                        subDisplayVolumePanelPresentation.mStoreInteractor.observeStore();
                        this.subDisplayVolumePanelPresentation = subDisplayVolumePanelPresentation;
                        return;
                    }
                }
                if (BasicRune.VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG) {
                    SubFullLayoutVolumePanelWindow subFullLayoutVolumePanelWindow2 = this.subFullLayoutWindow;
                    if (subFullLayoutVolumePanelWindow2 != null) {
                        subFullLayoutVolumePanelWindow2.dismiss();
                        ((StoreInteractor) subFullLayoutVolumePanelWindow2.storeInteractor$delegate.getValue()).dispose();
                        SubFullLayoutVolumePanelView subFullLayoutVolumePanelView = subFullLayoutVolumePanelWindow2.panelView;
                        subFullLayoutVolumePanelView.storeInteractor.dispose();
                        SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelView.volumePanelMotion;
                        if (subFullLayoutVolumePanelMotion == null) {
                            subFullLayoutVolumePanelMotion = null;
                        }
                        subFullLayoutVolumePanelMotion.storeInteractor.dispose();
                        this.subFullLayoutWindow = null;
                        return;
                    }
                    return;
                }
                SubDisplayVolumePanelPresentation subDisplayVolumePanelPresentation2 = this.subDisplayVolumePanelPresentation;
                if (subDisplayVolumePanelPresentation2 != null) {
                    subDisplayVolumePanelPresentation2.dismiss();
                    subDisplayVolumePanelPresentation2.mStoreInteractor.dispose();
                    this.subDisplayVolumePanelPresentation = null;
                    return;
                }
                return;
            case 18:
                if (BasicRune.VOLUME_MONITOR_PHASE_3) {
                    handlerWrapper.remove(volumePanelImpl$safetyVolumeCallback$1);
                    handlerWrapper.postDelayed(60000L, volumePanelImpl$safetyVolumeCallback$1);
                    volumeInfraMediator.userActivity();
                    return;
                }
                return;
            case 19:
                if (BasicRune.VOLUME_MONITOR_PHASE_3 && volumePanelState.getCoverType() != 8) {
                    handlerWrapper.remove(volumePanelImpl$safetyVolumeCallback$1);
                    return;
                }
                return;
            case 20:
            case 21:
                if (BasicRune.VOLUME_MONITOR_PHASE_3) {
                    handlerWrapper.remove(volumePanelImpl$safetyVolumeCallback$1);
                    return;
                }
                return;
            case 22:
                if (BasicRune.VOLUME_MONITOR_PHASE_3) {
                    volumeInfraMediator.setSafeMediaVolume();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.samsung.systemui.splugins.volume.ExtendableVolumePanel
    public final void recreateVolumePanelForNewConfig() {
        Log.d("VolumePanelImpl", "recreateVolumePanelForNewConfig");
        VolumePanelWindow volumePanelWindow = this.window;
        volumePanelWindow.dismiss();
        volumePanelWindow.dispose();
        VolumeDependency volumeDependency = (VolumeDependency) this.volDeps;
        VolumePanelWindow volumePanelWindow2 = (VolumePanelWindow) volumeDependency.getNewObject(VolumePanelWindow.class);
        volumePanelWindow2.observeStore();
        this.window = volumePanelWindow2;
        SubFullLayoutVolumePanelWindow subFullLayoutVolumePanelWindow = this.subFullLayoutWindow;
        if (subFullLayoutVolumePanelWindow != null) {
            subFullLayoutVolumePanelWindow.dismiss();
            ((StoreInteractor) subFullLayoutVolumePanelWindow.storeInteractor$delegate.getValue()).dispose();
            SubFullLayoutVolumePanelView subFullLayoutVolumePanelView = subFullLayoutVolumePanelWindow.panelView;
            subFullLayoutVolumePanelView.storeInteractor.dispose();
            SubFullLayoutVolumePanelMotion subFullLayoutVolumePanelMotion = subFullLayoutVolumePanelView.volumePanelMotion;
            if (subFullLayoutVolumePanelMotion == null) {
                subFullLayoutVolumePanelMotion = null;
            }
            subFullLayoutVolumePanelMotion.storeInteractor.dispose();
            SubFullLayoutVolumePanelWindow subFullLayoutVolumePanelWindow2 = (SubFullLayoutVolumePanelWindow) volumeDependency.getNewObject(SubFullLayoutVolumePanelWindow.class);
            subFullLayoutVolumePanelWindow2.observeStore();
            this.subFullLayoutWindow = subFullLayoutVolumePanelWindow2;
        }
    }

    @Override // com.samsung.systemui.splugins.volume.ExtendableVolumePanel
    public final void restoreToDefaultStore() {
        Log.d("VolumePanelImpl", "restoreToDefaultStore");
        this.storeDisposable.dispose();
        VolumePanelStore volumePanelStore = this.store;
        this.storeDisposable = volumePanelStore.subscribe(this);
        this.actionObserver = volumePanelStore;
        this.window.observeStore();
        this.soundAssistantChecker.updateState(false);
    }

    @Override // com.samsung.systemui.splugins.volume.ExtendableVolumePanel
    public final void setActionObserver(VolumeObserver volumeObserver) {
        Log.d("VolumePanelImpl", "setActionObserver : newActionObserver=" + volumeObserver + ", volumeStarVersion=0");
        this.window.dispose();
        this.actionObserver = volumeObserver;
    }

    @Override // com.samsung.systemui.splugins.volume.ExtendableVolumePanel
    public final void setStateObservable(VolumeObservable volumeObservable) {
        Log.d("VolumePanelImpl", "setStateObservable : newStateObservable=" + volumeObservable + ", volumeStarVersion=0");
        this.storeDisposable.dispose();
        this.window.dispose();
        this.storeDisposable = volumeObservable.subscribe(this);
        this.soundAssistantChecker.updateState(true);
    }
}
