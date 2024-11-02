package com.android.systemui.volume.view.standard;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.volume.VolumeDependencyBase;
import com.android.systemui.volume.config.SystemConfigImpl;
import com.android.systemui.volume.purefunction.VolumePanelLayout;
import com.android.systemui.volume.store.StoreInteractor;
import com.android.systemui.volume.store.VolumePanelStore;
import com.android.systemui.volume.util.ContextUtils;
import com.android.systemui.volume.util.HandlerWrapper;
import com.android.systemui.volume.util.IDisplayManagerWrapper;
import com.android.systemui.volume.util.PluginAODManagerWrapper;
import com.android.systemui.volume.util.PowerManagerWrapper;
import com.android.systemui.volume.view.VolumePanelMotion;
import com.samsung.systemui.splugins.extensions.VolumePanelStateExt;
import com.samsung.systemui.splugins.volume.VolumeInfraMediator;
import com.samsung.systemui.splugins.volume.VolumeObserver;
import com.samsung.systemui.splugins.volume.VolumePanelAction;
import com.samsung.systemui.splugins.volume.VolumePanelState;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class VolumePanelWindow extends Dialog implements VolumeObserver {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final VolumeInfraMediator infraMediator;
    public final LogWrapper log;
    public final VolumePanelView panelView;
    public final Lazy store$delegate;
    public final Lazy storeInteractor$delegate;
    public final SystemConfigImpl systemConfig;
    public final VolumeDependencyBase volDeps;

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
                iArr[VolumePanelState.StateType.STATE_SHOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DUAL_PLAY_MODE_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_OPEN_THEME_CHANGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS_VOLUME_PANEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_DISMISS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_FOLDER_STATE_CHANGED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_ORIENTATION_CHANGED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_COVER_STATE_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[VolumePanelState.StateType.STATE_EXPAND_STATE_CHANGED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public VolumePanelWindow(com.android.systemui.volume.VolumeDependencyBase r9) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.standard.VolumePanelWindow.<init>(com.android.systemui.volume.VolumeDependencyBase):void");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.panelView.dispatchTouchEvent(motionEvent);
        return true;
    }

    public final void dispose() {
        ((StoreInteractor) this.storeInteractor$delegate.getValue()).dispose();
        VolumePanelView volumePanelView = this.panelView;
        volumePanelView.storeInteractor.dispose();
        VolumePanelMotion volumePanelMotion = volumePanelView.volumePanelMotion;
        if (volumePanelMotion == null) {
            volumePanelMotion = null;
        }
        volumePanelMotion.storeInteractor.dispose();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        if (r1 == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getBaseHeight$1() {
        /*
            r5 = this;
            android.content.Context r0 = r5.getContext()
            int r0 = com.android.systemui.volume.util.ContextUtils.getDisplayHeight(r0)
            com.android.systemui.volume.config.SystemConfigImpl r1 = r5.systemConfig
            boolean r1 = r1.isTablet()
            r2 = 1
            if (r1 != 0) goto L4e
            android.content.Context r1 = r5.getContext()
            boolean r1 = com.android.systemui.volume.util.ContextUtils.isScreenWideMobileDevice(r1)
            if (r1 != 0) goto L4e
            android.content.Context r1 = r5.getContext()
            boolean r1 = com.android.systemui.volume.util.ContextUtils.isLandscape(r1)
            r3 = 0
            if (r1 == 0) goto L42
            java.lang.Class<com.android.systemui.util.SettingsHelper> r1 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r1 = com.android.systemui.Dependency.get(r1)
            com.android.systemui.util.SettingsHelper r1 = (com.android.systemui.util.SettingsHelper) r1
            int r4 = com.android.systemui.volume.util.SettingsHelperExt.$r8$clinit
            boolean r4 = r1.isNavigationBarGestureHintEnabled()
            if (r4 != 0) goto L3f
            boolean r1 = r1.isNavigationBarGestureWhileHidden()
            if (r1 == 0) goto L3d
            goto L3f
        L3d:
            r1 = r3
            goto L40
        L3f:
            r1 = r2
        L40:
            if (r1 != 0) goto L4e
        L42:
            android.content.Context r1 = r5.getContext()
            boolean r1 = com.android.systemui.volume.util.ContextUtils.isLandscape(r1)
            if (r1 != 0) goto L4d
            goto L4e
        L4d:
            r2 = r3
        L4e:
            if (r2 == 0) goto L5c
            android.content.Context r5 = r5.getContext()
            r1 = 2131167592(0x7f070968, float:1.7949462E38)
            int r5 = com.android.systemui.volume.util.ContextUtils.getDimenInt(r1, r5)
            int r0 = r0 + r5
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.standard.VolumePanelWindow.getBaseHeight$1():int");
    }

    public final float getSeekBarY(int i) {
        float f;
        float dimenInt = i - ContextUtils.getDimenInt(R.dimen.volume_seekbar_height, getContext());
        if (!this.systemConfig.isTablet() && ContextUtils.isScreenWideMobileDevice(getContext()) && ContextUtils.isLandscape(getContext())) {
            dimenInt -= i / 2.0f;
        } else if (!this.systemConfig.isTablet() && !ContextUtils.isLandscape(getContext())) {
            if (BasicRune.FOLDABLE_TYPE_FLIP) {
                VolumePanelLayout.INSTANCE.getClass();
                f = VolumePanelLayout.VERTICAL_PADDING_TOP_FOR_FLIP_RATIO;
            } else if (ContextUtils.isScreenWideMobileDevice(getContext())) {
                VolumePanelLayout.INSTANCE.getClass();
                f = VolumePanelLayout.VERTICAL_WIDE_SCREEN_TOP_RATIO;
            } else {
                VolumePanelLayout.INSTANCE.getClass();
                f = VolumePanelLayout.VERTICAL_PADDING_TOP_RATIO;
            }
            return dimenInt * f;
        }
        return dimenInt / 2.0f;
    }

    public final void observeStore() {
        ((StoreInteractor) this.storeInteractor$delegate.getValue()).observeStore();
        VolumePanelView volumePanelView = this.panelView;
        volumePanelView.storeInteractor.observeStore();
        VolumePanelMotion volumePanelMotion = volumePanelView.volumePanelMotion;
        if (volumePanelMotion == null) {
            volumePanelMotion = null;
        }
        VolumePanelStore store = volumePanelView.getStore();
        Context context = volumePanelView.getContext();
        volumePanelMotion.storeInteractor.store = store;
        volumePanelMotion.context = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x052e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0409  */
    @Override // com.samsung.systemui.splugins.volume.VolumeObserver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onChanged(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 2044
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.volume.view.standard.VolumePanelWindow.onChanged(java.lang.Object):void");
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        this.log.d("VolumePanelWindow", "onStart");
    }

    @Override // android.app.Dialog
    public final void onStop() {
        super.onStop();
        this.log.d("VolumePanelWindow", "onStop : panelState.isExpanded=" + ((VolumePanelStore) this.store$delegate.getValue()).currentState.isExpanded());
        VolumePanelView volumePanelView = this.panelView;
        HandlerWrapper handlerWrapper = volumePanelView.handlerWrapper;
        ViewGroup viewGroup = null;
        if (handlerWrapper == null) {
            handlerWrapper = null;
        }
        IDisplayManagerWrapper iDisplayManagerWrapper = volumePanelView.iDisplayManagerWrapper;
        if (iDisplayManagerWrapper == null) {
            iDisplayManagerWrapper = null;
        }
        ((Handler) handlerWrapper.mainThreadHandler$delegate.getValue()).post(iDisplayManagerWrapper.refreshRateLimitOffRunnable);
        if (VolumePanelStateExt.isAODVolumePanel(volumePanelView.getPanelState())) {
            PowerManagerWrapper powerManagerWrapper = volumePanelView.powerManagerWrapper;
            if (powerManagerWrapper == null) {
                powerManagerWrapper = null;
            }
            PowerManager.WakeLock wakeLock = powerManagerWrapper.wakeLock;
            if (wakeLock != null) {
                wakeLock.release();
            }
            powerManagerWrapper.wakeLock = null;
            PluginAODManagerWrapper pluginAODManagerWrapper = volumePanelView.pluginAODManagerWrapper;
            if (pluginAODManagerWrapper == null) {
                pluginAODManagerWrapper = null;
            }
            pluginAODManagerWrapper.getClass();
            PluginAODManagerWrapper.requestAODVolumePanel(false);
        }
        ViewGroup viewGroup2 = volumePanelView.rowContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        }
        viewGroup.removeAllViews();
        if (!((VolumePanelStore) this.store$delegate.getValue()).currentState.isExpanded()) {
            ((StoreInteractor) this.storeInteractor$delegate.getValue()).sendAction(new VolumePanelAction.Builder(VolumePanelAction.ActionType.ACTION_DISMISS_VOLUME_PANEL).build(), true);
        }
    }
}
