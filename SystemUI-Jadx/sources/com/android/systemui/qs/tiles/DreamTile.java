package com.android.systemui.qs.tiles;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.service.dreams.IDreamManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SettingObserver;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.util.settings.SecureSettings;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DreamTile extends SQSTileImpl {
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final IDreamManager mDreamManager;
    public final boolean mDreamOnlyEnabledForDockUser;
    public final AnonymousClass3 mDreamSettingObserver;
    public final boolean mDreamSupported;
    public final AnonymousClass2 mEnabledSettingObserver;
    public final QSTile.Icon mIconDocked;
    public final QSTile.Icon mIconUndocked;
    public boolean mIsDocked;
    public final AnonymousClass1 mReceiver;
    public final UserTrackerImpl mUserTracker;

    /* JADX WARN: Type inference failed for: r1v5, types: [com.android.systemui.qs.tiles.DreamTile$1] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.android.systemui.qs.tiles.DreamTile$2] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.android.systemui.qs.tiles.DreamTile$3] */
    public DreamTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, IDreamManager iDreamManager, SecureSettings secureSettings, BroadcastDispatcher broadcastDispatcher, UserTracker userTracker, boolean z, boolean z2) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mIconDocked = QSTileImpl.ResourceIcon.get(R.drawable.ic_qs_screen_saver);
        this.mIconUndocked = QSTileImpl.ResourceIcon.get(R.drawable.ic_qs_screen_saver_undocked);
        this.mIsDocked = false;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.tiles.DreamTile.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                boolean z3;
                if ("android.intent.action.DOCK_EVENT".equals(intent.getAction())) {
                    DreamTile dreamTile = DreamTile.this;
                    if (intent.getIntExtra("android.intent.extra.DOCK_STATE", -1) != 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    dreamTile.mIsDocked = z3;
                }
                DreamTile.this.refreshState(null);
            }
        };
        this.mDreamManager = iDreamManager;
        this.mBroadcastDispatcher = broadcastDispatcher;
        UserTrackerImpl userTrackerImpl = (UserTrackerImpl) userTracker;
        this.mEnabledSettingObserver = new SettingObserver(secureSettings, ((SQSTileImpl) this).mHandler, "screensaver_enabled", userTrackerImpl.getUserId()) { // from class: com.android.systemui.qs.tiles.DreamTile.2
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z3) {
                DreamTile.this.refreshState(null);
            }
        };
        this.mDreamSettingObserver = new SettingObserver(secureSettings, ((SQSTileImpl) this).mHandler, "screensaver_components", userTrackerImpl.getUserId()) { // from class: com.android.systemui.qs.tiles.DreamTile.3
            @Override // com.android.systemui.qs.SettingObserver
            public final void handleValueChanged(int i, boolean z3) {
                DreamTile.this.refreshState(null);
            }
        };
        this.mUserTracker = userTrackerImpl;
        this.mDreamSupported = z;
        this.mDreamOnlyEnabledForDockUser = z2;
    }

    public final ComponentName getActiveDream() {
        try {
            ComponentName[] dreamComponentsForUser = this.mDreamManager.getDreamComponentsForUser(this.mUserTracker.getUserId());
            if (dreamComponentsForUser == null || dreamComponentsForUser.length <= 0) {
                return null;
            }
            return dreamComponentsForUser[0];
        } catch (RemoteException e) {
            Log.w("DreamTile", "Failed to get active dream", e);
            return null;
        }
    }

    public CharSequence getContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            return ((Object) getTileLabel()) + ", " + ((Object) charSequence);
        }
        return getTileLabel();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return new Intent("android.settings.DREAM_SETTINGS");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_screensaver_label);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        IDreamManager iDreamManager = this.mDreamManager;
        try {
            if (iDreamManager.isDreaming()) {
                iDreamManager.awaken();
            } else {
                iDreamManager.dream();
            }
        } catch (RemoteException e) {
            Log.e("QSDream", "Can't dream", e);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleLongClick(View view) {
        try {
            this.mDreamManager.awaken();
        } catch (RemoteException e) {
            Log.e("QSDream", "Can't awaken", e);
        }
        super.handleLongClick(view);
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        AnonymousClass1 anonymousClass1 = this.mReceiver;
        BroadcastDispatcher broadcastDispatcher = this.mBroadcastDispatcher;
        if (z) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.DREAMING_STARTED");
            intentFilter.addAction("android.intent.action.DREAMING_STOPPED");
            intentFilter.addAction("android.intent.action.DOCK_EVENT");
            broadcastDispatcher.registerReceiver(intentFilter, anonymousClass1);
        } else {
            broadcastDispatcher.unregisterReceiver(anonymousClass1);
        }
        setListening(z);
        setListening(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0030  */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleUpdateState(com.android.systemui.plugins.qs.QSTile.State r4, java.lang.Object r5) {
        /*
            r3 = this;
            com.android.systemui.plugins.qs.QSTile$BooleanState r4 = (com.android.systemui.plugins.qs.QSTile.BooleanState) r4
            java.lang.CharSequence r5 = r3.getTileLabel()
            r4.label = r5
            android.content.ComponentName r5 = r3.getActiveDream()
            r0 = 0
            if (r5 == 0) goto L20
            android.content.Context r1 = r3.mContext
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            android.content.pm.ServiceInfo r5 = r1.getServiceInfo(r5, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L20
            if (r5 == 0) goto L20
            java.lang.CharSequence r5 = r5.loadLabel(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L20
            goto L21
        L20:
            r5 = 0
        L21:
            r4.secondaryLabel = r5
            java.lang.CharSequence r5 = r3.getContentDescription(r5)
            r4.contentDescription = r5
            boolean r5 = r3.mIsDocked
            if (r5 == 0) goto L30
            com.android.systemui.plugins.qs.QSTile$Icon r5 = r3.mIconDocked
            goto L32
        L30:
            com.android.systemui.plugins.qs.QSTile$Icon r5 = r3.mIconUndocked
        L32:
            r4.icon = r5
            android.content.ComponentName r5 = r3.getActiveDream()
            if (r5 == 0) goto L5e
            com.android.systemui.qs.tiles.DreamTile$2 r5 = r3.mEnabledSettingObserver
            int r5 = r5.getValue()
            r1 = 1
            if (r5 != r1) goto L45
            r5 = r1
            goto L46
        L45:
            r5 = r0
        L46:
            if (r5 != 0) goto L49
            goto L5e
        L49:
            android.service.dreams.IDreamManager r3 = r3.mDreamManager     // Catch: android.os.RemoteException -> L50
            boolean r0 = r3.isDreaming()     // Catch: android.os.RemoteException -> L50
            goto L58
        L50:
            r3 = move-exception
            java.lang.String r5 = "QSDream"
            java.lang.String r2 = "Can't check if dreaming"
            android.util.Log.e(r5, r2, r3)
        L58:
            if (r0 == 0) goto L5b
            r1 = 2
        L5b:
            r4.state = r1
            goto L60
        L5e:
            r4.state = r0
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.DreamTile.handleUpdateState(com.android.systemui.plugins.qs.QSTile$State, java.lang.Object):void");
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        if (Build.isDebuggable() && this.mDreamSupported && (!this.mDreamOnlyEnabledForDockUser || this.mUserTracker.getUserInfo().isMain())) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }
}
