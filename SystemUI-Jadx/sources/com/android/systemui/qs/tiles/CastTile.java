package com.android.systemui.qs.tiles;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.media.MediaRouter;
import android.media.projection.MediaProjectionInfo;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.connectivity.IconState;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.SignalCallback;
import com.android.systemui.statusbar.connectivity.WifiIndicators;
import com.android.systemui.statusbar.policy.CastController;
import com.android.systemui.statusbar.policy.CastControllerImpl;
import com.android.systemui.statusbar.policy.HotspotController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CastTile extends SQSTileImpl {
    public final CastController mController;
    public final DialogLaunchAnimator mDialogLaunchAnimator;
    public final AnonymousClass2 mHotspotCallback;
    public boolean mHotspotConnected;
    public final KeyguardStateController mKeyguard;
    public final AnonymousClass1 mSignalCallback;
    public boolean mWifiConnected;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Callback implements CastController.Callback, KeyguardStateController.Callback {
        public /* synthetic */ Callback(CastTile castTile, int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.policy.CastController.Callback
        public final void onCastDevicesChanged() {
            CastTile.this.refreshState(null);
        }

        @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
        public final void onKeyguardShowingChanged() {
            CastTile.this.refreshState(null);
        }

        private Callback() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DialogHolder {
        public Dialog mDialog;

        private DialogHolder() {
        }

        public /* synthetic */ DialogHolder(int i) {
            this();
        }
    }

    static {
        new Intent("android.settings.CAST_SETTINGS");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.qs.tiles.CastTile$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.qs.tiles.CastTile$2, java.lang.Object] */
    public CastTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, CastController castController, KeyguardStateController keyguardStateController, NetworkController networkController, HotspotController hotspotController, DialogLaunchAnimator dialogLaunchAnimator) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        Callback callback = new Callback(this, 0);
        ?? r2 = new SignalCallback() { // from class: com.android.systemui.qs.tiles.CastTile.1
            @Override // com.android.systemui.statusbar.connectivity.SignalCallback
            public final void setWifiIndicators(WifiIndicators wifiIndicators) {
                boolean z;
                IconState iconState;
                if (wifiIndicators.enabled && (iconState = wifiIndicators.qsIcon) != null && iconState.visible) {
                    z = true;
                } else {
                    z = false;
                }
                CastTile castTile = CastTile.this;
                if (z != castTile.mWifiConnected) {
                    castTile.mWifiConnected = z;
                    if (!castTile.mHotspotConnected) {
                        castTile.refreshState(null);
                    }
                }
            }
        };
        this.mSignalCallback = r2;
        ?? r3 = new HotspotController.Callback() { // from class: com.android.systemui.qs.tiles.CastTile.2
            @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
            public final void onHotspotChanged(int i, boolean z) {
                boolean z2;
                if (z && i > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                CastTile castTile = CastTile.this;
                if (z2 != castTile.mHotspotConnected) {
                    castTile.mHotspotConnected = z2;
                    if (!castTile.mWifiConnected) {
                        castTile.refreshState(null);
                    }
                }
            }

            @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
            public final void onHotspotPrepared() {
            }

            @Override // com.android.systemui.statusbar.policy.HotspotController.Callback
            public final void onUpdateConnectedDevices() {
            }
        };
        this.mHotspotCallback = r3;
        this.mController = castController;
        this.mKeyguard = keyguardStateController;
        this.mDialogLaunchAnimator = dialogLaunchAnimator;
        castController.getClass();
        castController.observe(((QSTileImpl) this).mLifecycle, callback);
        keyguardStateController.getClass();
        keyguardStateController.observe(((QSTileImpl) this).mLifecycle, callback);
        networkController.getClass();
        networkController.observe(((QSTileImpl) this).mLifecycle, r2);
        hotspotController.getClass();
        hotspotController.observe(((QSTileImpl) this).mLifecycle, r3);
    }

    public final List getActiveDevices() {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) ((CastControllerImpl) this.mController).getCastDevices()).iterator();
        while (it.hasNext()) {
            CastController.CastDevice castDevice = (CastController.CastDevice) it.next();
            int i = castDevice.state;
            if (i == 2 || i == 1) {
                arrayList.add(castDevice);
            }
        }
        return arrayList;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return new Intent("android.settings.CAST_SETTINGS");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 114;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_cast_title);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        boolean z;
        if (((QSTile.BooleanState) this.mState).state == 0) {
            return;
        }
        List activeDevices = getActiveDevices();
        ArrayList arrayList = (ArrayList) getActiveDevices();
        if (!arrayList.isEmpty() && !(((CastController.CastDevice) arrayList.get(0)).tag instanceof MediaRouter.RouteInfo)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (!((KeyguardStateControllerImpl) this.mKeyguard).mShowing) {
                this.mUiHandler.post(new CastTile$$ExternalSyntheticLambda1(this, view));
                return;
            } else {
                this.mActivityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.CastTile$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CastTile castTile = CastTile.this;
                        castTile.getClass();
                        castTile.mUiHandler.post(new CastTile$$ExternalSyntheticLambda1(castTile, null));
                    }
                });
                return;
            }
        }
        CastController.CastDevice castDevice = (CastController.CastDevice) ((ArrayList) activeDevices).get(0);
        CastControllerImpl castControllerImpl = (CastControllerImpl) this.mController;
        castControllerImpl.getClass();
        boolean z2 = castDevice.tag instanceof MediaProjectionInfo;
        if (CastControllerImpl.DEBUG) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("stopCasting isProjection=", z2, "CastController");
        }
        if (z2) {
            MediaProjectionInfo mediaProjectionInfo = (MediaProjectionInfo) castDevice.tag;
            MediaProjectionManager mediaProjectionManager = castControllerImpl.mProjectionManager;
            if (Objects.equals(mediaProjectionManager.getActiveProjectionInfo(), mediaProjectionInfo)) {
                mediaProjectionManager.stopActiveProjection();
                return;
            }
            Log.w("CastController", "Projection is no longer active: " + mediaProjectionInfo);
            return;
        }
        castControllerImpl.mMediaRouter.getFallbackRoute().select();
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleLongClick(View view) {
        handleClick(view);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        if (QSTileImpl.DEBUG) {
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("handleSetListening ", z, "CastTile");
        }
        if (!z) {
            CastControllerImpl castControllerImpl = (CastControllerImpl) this.mController;
            synchronized (castControllerImpl.mDiscoveringLock) {
                if (castControllerImpl.mDiscovering) {
                    castControllerImpl.mDiscovering = false;
                    if (CastControllerImpl.DEBUG) {
                        Log.d("CastController", "setDiscovering: false");
                    }
                    castControllerImpl.handleDiscoveryChangeLocked();
                }
            }
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        int i;
        int i2;
        boolean z;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        Context context = this.mContext;
        String string = context.getString(R.string.quick_settings_cast_title);
        booleanState.label = string;
        booleanState.contentDescription = string;
        booleanState.stateDescription = "";
        boolean z2 = false;
        booleanState.value = false;
        Iterator it = ((ArrayList) ((CastControllerImpl) this.mController).getCastDevices()).iterator();
        boolean z3 = false;
        while (true) {
            i = 2;
            if (!it.hasNext()) {
                break;
            }
            CastController.CastDevice castDevice = (CastController.CastDevice) it.next();
            int i3 = castDevice.state;
            if (i3 == 2) {
                booleanState.value = true;
                String str = castDevice.name;
                if (str == null) {
                    str = context.getString(R.string.quick_settings_cast_device_default_name);
                }
                booleanState.secondaryLabel = str;
                booleanState.stateDescription = ((Object) booleanState.stateDescription) + "," + context.getString(R.string.accessibility_cast_name, booleanState.label);
                z3 = false;
            } else if (i3 == 1) {
                z3 = true;
            }
        }
        if (z3 && !booleanState.value) {
            booleanState.secondaryLabel = context.getString(R.string.quick_settings_connecting);
        }
        if (booleanState.value) {
            i2 = R.drawable.ic_cast_connected;
        } else {
            i2 = R.drawable.ic_cast;
        }
        booleanState.icon = QSTileImpl.ResourceIcon.get(i2);
        if (!this.mWifiConnected && !this.mHotspotConnected) {
            z = false;
        } else {
            z = true;
        }
        if (!z && !booleanState.value) {
            booleanState.state = 0;
            booleanState.secondaryLabel = context.getString(R.string.quick_settings_cast_no_wifi);
            booleanState.forceExpandIcon = false;
        } else {
            boolean z4 = booleanState.value;
            if (!z4) {
                i = 1;
            }
            booleanState.state = i;
            if (!z4) {
                booleanState.secondaryLabel = "";
            }
            booleanState.expandedAccessibilityClassName = Button.class.getName();
            ArrayList arrayList = (ArrayList) getActiveDevices();
            if (arrayList.isEmpty() || (((CastController.CastDevice) arrayList.get(0)).tag instanceof MediaRouter.RouteInfo)) {
                z2 = true;
            }
            booleanState.forceExpandIcon = z2;
        }
        booleanState.stateDescription = ((Object) booleanState.stateDescription) + ", " + ((Object) booleanState.secondaryLabel);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUserSwitch(int i) {
        handleRefreshState(null);
        ((CastControllerImpl) this.mController).mMediaRouter.rebindAsUser(i);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        QSTile.BooleanState booleanState = new QSTile.BooleanState();
        booleanState.handlesLongClick = false;
        return booleanState;
    }
}
