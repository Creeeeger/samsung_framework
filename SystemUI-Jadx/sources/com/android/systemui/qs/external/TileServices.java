package com.android.systemui.qs.external;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Icon;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.service.quicksettings.IQSService;
import android.service.quicksettings.Tile;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArrayMap;
import android.view.IWindowManager;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.pipeline.data.repository.CustomTileAddedRepository;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.statusbar.phone.StatusBarIconControllerImpl;
import com.android.systemui.statusbar.phone.StatusBarIconHolder;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TileServices extends IQSService.Stub {
    public static final boolean DEBUG = !DeviceType.isShipBuild();
    public static final AnonymousClass4 SERVICE_SORT = new Comparator() { // from class: com.android.systemui.qs.external.TileServices.4
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return -Integer.compare(((TileServiceManager) obj).mPriority, ((TileServiceManager) obj2).mPriority);
        }
    };
    public final DelayableExecutor mBackgroundExecutor;
    public final AnonymousClass7 mBootCompleteReceiver;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Context mContext;
    public final CustomTileAddedRepository mCustomTileAddedRepository;
    public final AnonymousClass1 mDesktopCallback;
    public final Provider mHandlerProvider;
    public final QSHost mHost;
    public boolean mIsBootCompleted;
    public boolean mIsDexStandAloneMode;
    public final KeyguardStateController mKeyguardStateController;
    public final Handler mMainHandler;
    public final PanelInteractor mPanelInteractor;
    public final AnonymousClass3 mRequestListeningCallback;
    public final StatusBarIconController mStatusBarIconController;
    public final AnonymousClass5 mTileUpdateReceiver;
    public final AnonymousClass6 mUninstallReceiver;
    public boolean mUninstallReceiverRegistered;
    public final UserTracker mUserTracker;
    public final ArrayMap mServices = new ArrayMap();
    public final SparseArrayMap mTiles = new SparseArrayMap();
    public final ArrayMap mTokenMap = new ArrayMap();
    public final int mMaxBound = 5;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.external.TileServices$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements CommandQueue.Callbacks {
        public AnonymousClass3() {
        }

        @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
        public final void requestTileServiceListeningState(ComponentName componentName) {
            TileServices tileServices = TileServices.this;
            if (tileServices.mIsDexStandAloneMode) {
                CustomTile customTile = (CustomTile) tileServices.mTiles.get(((UserTrackerImpl) tileServices.mUserTracker).getUserId(), componentName);
                if (customTile != null && customTile.isSecActiveTile()) {
                    Log.d("TileServices", "requestListening is ignored in standaloneMode - " + componentName.getPackageName());
                    return;
                }
            }
            tileServices.mMainHandler.post(new TileServices$$ExternalSyntheticLambda1(this, componentName, 1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.qs.external.TileServices$5, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.qs.external.TileServices$6] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.qs.external.TileServices$7, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r5v7, types: [com.android.systemui.util.DesktopManager$Callback, com.android.systemui.qs.external.TileServices$1] */
    public TileServices(QSHost qSHost, Provider provider, BroadcastDispatcher broadcastDispatcher, UserTracker userTracker, KeyguardStateController keyguardStateController, CommandQueue commandQueue, StatusBarIconController statusBarIconController, PanelInteractor panelInteractor, CustomTileAddedRepository customTileAddedRepository, DelayableExecutor delayableExecutor) {
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        this.mRequestListeningCallback = anonymousClass3;
        ?? r1 = new BroadcastReceiver() { // from class: com.android.systemui.qs.external.TileServices.5
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Log.d("TileServices", "mTileUpdateReceiver : " + intent.getAction());
                TileServices.this.mMainHandler.post(new Runnable() { // from class: com.android.systemui.qs.external.TileServices.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList;
                        synchronized (TileServices.this.mServices) {
                            arrayList = new ArrayList(TileServices.this.mServices.values());
                        }
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            TileServiceManager tileServiceManager = (TileServiceManager) arrayList.get(i);
                            if (tileServiceManager.mIsSecCustomTile) {
                                tileServiceManager.setBindRequested(true);
                                try {
                                    tileServiceManager.mStateManager.onStartListening();
                                } catch (RemoteException unused) {
                                }
                            }
                        }
                    }
                });
            }
        };
        this.mTileUpdateReceiver = r1;
        this.mUninstallReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.external.TileServices.6
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                List<ResolveInfo> list;
                boolean z;
                CustomTile customTile;
                Bundle bundle;
                boolean z2;
                Log.d("TileServices", "mUninstallReceiver onReceive = " + intent);
                String encodedSchemeSpecificPart = intent.getData().getEncodedSchemeSpecificPart();
                boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                if (booleanExtra) {
                    Intent intent2 = new Intent("android.service.quicksettings.action.QS_TILE");
                    intent2.setPackage(encodedSchemeSpecificPart);
                    list = context.getPackageManager().queryIntentServicesAsUser(intent2, 0, ((UserTrackerImpl) TileServices.this.mUserTracker).getUserId());
                } else {
                    list = null;
                }
                Iterator it = TileServices.this.mServices.values().iterator();
                while (it.hasNext()) {
                    ComponentName component = ((TileServiceManager) it.next()).mStateManager.getComponent();
                    if (Objects.equals(encodedSchemeSpecificPart, component.getPackageName())) {
                        Log.d("TileServices", "component = " + component + ", pkgTileServices = " + list);
                        if (booleanExtra) {
                            for (ResolveInfo resolveInfo : list) {
                                if (Objects.equals(resolveInfo.serviceInfo.packageName, component.getPackageName()) && Objects.equals(resolveInfo.serviceInfo.name, component.getClassName())) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        z = false;
                        if (z) {
                            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("mUninstallReceiver shouldBeContinue = ", component, "TileServices");
                            int userId = ((UserTrackerImpl) TileServices.this.mUserTracker).getUserId();
                            TileServices tileServices = TileServices.this;
                            synchronized (tileServices.mServices) {
                                customTile = (CustomTile) tileServices.mTiles.get(userId, component);
                            }
                            if (customTile != null) {
                                Log.d(customTile.TAG, "refreshMetaInfo");
                                try {
                                    bundle = customTile.mContext.getPackageManager().getServiceInfo(customTile.mComponent, 787072).metaData;
                                } catch (PackageManager.NameNotFoundException unused) {
                                    bundle = null;
                                }
                                customTile.mMetaData = bundle;
                                customTile.mIsSecCustomTile = customTile.isSecCustomTile();
                                Bundle bundle2 = customTile.mMetaData;
                                if (bundle2 != null) {
                                    z2 = bundle2.getBoolean("android.service.quicksettings.SEM_SUPPORT_DETAIL_VIEW", false);
                                } else {
                                    z2 = false;
                                }
                                customTile.mIsSupportDetailView = z2;
                                customTile.mIsSecActiveTile = customTile.isSecActiveTile();
                                if (customTile.isSecActiveTile()) {
                                    TileServices.this.requestListening(component);
                                }
                            }
                        } else {
                            TileServices.this.mHost.removeTile(CustomTile.toSpec(component));
                        }
                    }
                }
            }
        };
        ?? r2 = new BroadcastReceiver() { // from class: com.android.systemui.qs.external.TileServices.7
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Log.d("TileServices", "mBootCompleteReceiver : " + intent.getAction());
                TileServices.this.mMainHandler.post(new Runnable() { // from class: com.android.systemui.qs.external.TileServices.7.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList = new ArrayList();
                        synchronized (TileServices.this.mServices) {
                            TileServices.this.mTiles.forEach(new TileServices$$ExternalSyntheticLambda2(arrayList, 1));
                        }
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            CustomTile customTile = (CustomTile) arrayList.get(i);
                            if (!customTile.mInitialized) {
                                Objects.toString(customTile.mComponent);
                                ((SQSTileImpl) customTile).mHandler.post(new CustomTile$$ExternalSyntheticLambda2(customTile, 4));
                            }
                        }
                        TileServices.this.mIsBootCompleted = true;
                    }
                });
            }
        };
        this.mBootCompleteReceiver = r2;
        this.mHost = qSHost;
        this.mKeyguardStateController = keyguardStateController;
        this.mContext = qSHost.getContext();
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mHandlerProvider = provider;
        this.mMainHandler = (Handler) provider.get();
        this.mUserTracker = userTracker;
        this.mStatusBarIconController = statusBarIconController;
        commandQueue.addCallback((CommandQueue.Callbacks) anonymousClass3);
        this.mPanelInteractor = panelInteractor;
        this.mCustomTileAddedRepository = customTileAddedRepository;
        this.mBackgroundExecutor = delayableExecutor;
        broadcastDispatcher.registerReceiver(new IntentFilter("android.intent.action.LOCALE_CHANGED"), r1);
        boolean equals = "1".equals(SystemProperties.get("sys.boot_completed"));
        this.mIsBootCompleted = equals;
        if (!equals) {
            broadcastDispatcher.registerReceiver(new IntentFilter("com.samsung.intent.action.LAZY_BOOT_COMPLETE"), r2);
        }
        this.mIsDexStandAloneMode = ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).isStandalone();
        ?? r5 = new DesktopManager.Callback() { // from class: com.android.systemui.qs.external.TileServices.1
            @Override // com.android.systemui.util.DesktopManager.Callback
            public final void onDesktopModeStateChanged(SemDesktopModeState semDesktopModeState) {
                ArrayList arrayList;
                int state = semDesktopModeState.getState();
                int enabled = semDesktopModeState.getEnabled();
                int displayType = semDesktopModeState.getDisplayType();
                int i = 0;
                if (state == 0 && enabled == 4 && displayType == 101) {
                    TileServices tileServices = TileServices.this;
                    if (TileServices.DEBUG) {
                        tileServices.getClass();
                        Log.d("TileServices", "unbindImmediate");
                    }
                    synchronized (tileServices.mServices) {
                        arrayList = new ArrayList(tileServices.mServices.values());
                    }
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        TileServiceManager tileServiceManager = (TileServiceManager) arrayList.get(i2);
                        tileServiceManager.mBindRequested = false;
                        tileServiceManager.mHandler.post(tileServiceManager.mUnbind);
                    }
                    TileServices.this.mIsDexStandAloneMode = true;
                    return;
                }
                if (enabled == 2) {
                    TileServices tileServices2 = TileServices.this;
                    if (tileServices2.mIsDexStandAloneMode) {
                        tileServices2.mIsDexStandAloneMode = false;
                        Log.d("TileServices", "refreshAllTileDetailInfo");
                        synchronized (tileServices2.mServices) {
                            tileServices2.mTiles.forEach(new TileServices$$ExternalSyntheticLambda2(tileServices2, i));
                        }
                    }
                }
            }
        };
        this.mDesktopCallback = r5;
        ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).registerCallback(r5);
    }

    public final Tile getTile(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            tileForToken.updateDefaultTileAndIcon();
            return tileForToken.mTile;
        }
        StringBuilder sb = new StringBuilder("Tile for token ");
        sb.append(iBinder);
        sb.append("not found. Tiles in map: ");
        final StringBuilder sb2 = new StringBuilder("[");
        synchronized (this.mServices) {
            this.mTokenMap.forEach(new BiConsumer() { // from class: com.android.systemui.qs.external.TileServices$$ExternalSyntheticLambda0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    StringBuilder sb3 = sb2;
                    CustomTile customTile = (CustomTile) obj2;
                    sb3.append(((IBinder) obj).toString());
                    sb3.append(":");
                    sb3.append(customTile.mComponent.flattenToShortString());
                    sb3.append(":");
                    sb3.append(customTile.mUser);
                    sb3.append(",");
                }
            });
        }
        sb2.append("]");
        sb.append(sb2.toString());
        Log.e("TileServices", sb.toString());
        return null;
    }

    public final CustomTile getTileForToken(IBinder iBinder) {
        CustomTile customTile;
        synchronized (this.mServices) {
            customTile = (CustomTile) this.mTokenMap.get(iBinder);
        }
        return customTile;
    }

    public final boolean isLocked() {
        return ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
    }

    public final boolean isSecure() {
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        if (((KeyguardStateControllerImpl) keyguardStateController).mSecure && ((KeyguardStateControllerImpl) keyguardStateController).mShowing) {
            return true;
        }
        return false;
    }

    public final void onDialogHidden(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            TileServiceManager tileServiceManager = (TileServiceManager) this.mServices.get(tileForToken);
            Objects.requireNonNull(tileServiceManager);
            tileServiceManager.mShowingDialog = false;
            tileForToken.mIsShowingDialog = false;
            try {
                IWindowManager iWindowManager = tileForToken.mWindowManager;
                IBinder iBinder2 = tileForToken.mToken;
                tileForToken.mDisplayTracker.getClass();
                iWindowManager.removeWindowToken(iBinder2, 0);
            } catch (RemoteException unused) {
            }
        }
    }

    public final void onShowDialog(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            tileForToken.mIsShowingDialog = true;
            this.mPanelInteractor.collapsePanels();
            TileServiceManager tileServiceManager = (TileServiceManager) this.mServices.get(tileForToken);
            Objects.requireNonNull(tileServiceManager);
            tileServiceManager.mShowingDialog = true;
        }
    }

    public final void onStartActivity(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            this.mPanelInteractor.forceCollapsePanels();
        }
    }

    public final void onStartSuccessful(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            if (DEBUG) {
                Log.d("TileServices", "onStartSuccessful " + iBinder);
            }
            synchronized (this.mServices) {
                TileServiceManager tileServiceManager = (TileServiceManager) this.mServices.get(tileForToken);
                if (tileServiceManager != null && tileServiceManager.mStarted) {
                    tileServiceManager.mPendingBind = false;
                    tileForToken.refreshState(null);
                    return;
                }
                Log.e("TileServices", "TileServiceManager not started for " + tileForToken.mComponent, new IllegalStateException());
            }
        }
    }

    public final void recalculateBindAllowance() {
        ArrayList arrayList;
        boolean contains;
        synchronized (this.mServices) {
            arrayList = new ArrayList(this.mServices.values());
        }
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < size; i++) {
            if (((TileServiceManager) arrayList.get(i)).mIsSecCustomTile) {
                ((TileServiceManager) arrayList.get(i)).setBindAllowed(true);
            } else {
                arrayList2.add((TileServiceManager) arrayList.get(i));
            }
        }
        int size2 = arrayList2.size();
        if (size2 > this.mMaxBound) {
            long currentTimeMillis = System.currentTimeMillis();
            for (int i2 = 0; i2 < size2; i2++) {
                TileServiceManager tileServiceManager = (TileServiceManager) arrayList2.get(i2);
                TileLifecycleManager tileLifecycleManager = tileServiceManager.mStateManager;
                synchronized (tileLifecycleManager.mQueuedMessages) {
                    contains = ((ArraySet) tileLifecycleManager.mQueuedMessages).contains(2);
                }
                if (contains) {
                    tileServiceManager.mPriority = Integer.MAX_VALUE;
                } else if (tileServiceManager.mWaitingUnlock) {
                    tileServiceManager.mPriority = Integer.MAX_VALUE;
                    Log.w("TileServiceManager", "calculateBindPriority : mWaitingUnlock");
                } else if (tileServiceManager.mShowingDialog) {
                    tileServiceManager.mPriority = 2147483646;
                } else if (tileServiceManager.mJustBound) {
                    tileServiceManager.mPriority = 2147483645;
                } else if (!tileServiceManager.mBindRequested) {
                    tileServiceManager.mPriority = VideoPlayer.MEDIA_ERROR_SYSTEM;
                } else {
                    long j = currentTimeMillis - tileServiceManager.mLastUpdate;
                    if (j > 2147483644) {
                        tileServiceManager.mPriority = 2147483644;
                    } else {
                        tileServiceManager.mPriority = (int) j;
                    }
                }
            }
            Collections.sort(arrayList2, SERVICE_SORT);
        }
        int i3 = 0;
        while (i3 < this.mMaxBound && i3 < size2) {
            ((TileServiceManager) arrayList2.get(i3)).setBindAllowed(true);
            i3++;
        }
        while (i3 < size2) {
            ((TileServiceManager) arrayList2.get(i3)).setBindAllowed(false);
            i3++;
        }
    }

    public final void refreshDetailInfo(ComponentName componentName) {
        CustomTile customTile;
        int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
        synchronized (this.mServices) {
            customTile = (CustomTile) this.mTiles.get(userId, componentName);
        }
        if (customTile == null) {
            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("Couldn't find tile for ", componentName, "TileServices");
            return;
        }
        TileLifecycleManager tileLifecycleManager = customTile.mService;
        if (tileLifecycleManager != null && customTile.mIsSecActiveTile) {
            Objects.toString(customTile.mComponent);
            try {
                customTile.mDetailView = tileLifecycleManager.semGetDetailView();
                customTile.mDetailViewTitle = tileLifecycleManager.semGetDetailViewTitle();
                customTile.mSettingsIntent = tileLifecycleManager.semGetSettingsIntent();
                customTile.mIsToggleButtonExist = tileLifecycleManager.semIsToggleButtonExists();
            } catch (RemoteException unused) {
            }
        }
    }

    public final void requestListening(ComponentName componentName) {
        CustomTile customTile;
        if (DEBUG) {
            NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("requestListening ", componentName, "TileServices");
        }
        synchronized (this.mServices) {
            int userId = ((UserTrackerImpl) this.mUserTracker).getUserId();
            synchronized (this.mServices) {
                customTile = (CustomTile) this.mTiles.get(userId, componentName);
            }
            if (customTile == null) {
                Log.d("TileServices", "Couldn't find tile for " + componentName + "(" + userId + ")");
                return;
            }
            TileServiceManager tileServiceManager = (TileServiceManager) this.mServices.get(customTile);
            if (tileServiceManager == null) {
                Log.e("TileServices", "No TileServiceManager found in requestListening for tile " + customTile.mTileSpec);
            } else {
                if (!tileServiceManager.isActiveTile()) {
                    return;
                }
                if (customTile.mInitialized) {
                    tileServiceManager.setBindRequested(true);
                    try {
                        tileServiceManager.mStateManager.onStartListening();
                        if (customTile.isSecActiveTile()) {
                            tileServiceManager.mStateManager.refreshDetailInfo();
                        }
                    } catch (RemoteException unused) {
                    }
                } else {
                    Log.w("TileServices", "requestListening :: customtile is not initialized");
                }
            }
        }
    }

    public final void semFireToggleStateChanged(IBinder iBinder, boolean z, boolean z2) {
        CustomTile tileForToken = getTileForToken(iBinder);
        Log.d("TileServices", "semFireToggleStateChanged : customTile =  " + tileForToken);
        StringBuilder sb = new StringBuilder("semFireToggleStateChanged : state =  ");
        sb.append(z);
        sb.append(", enabled = ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, z2, "TileServices");
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            tileForToken.mToggleEnabled = z2;
            tileForToken.fireToggleStateChanged(z);
        }
    }

    public final void semUpdateDetailView(IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        Log.d("TileServices", "semUpdateDetailView : customTile =  " + tileForToken);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            ((SQSTileImpl) tileForToken).mHandler.obtainMessage(101, 0, 0).sendToTarget();
        }
    }

    public final void startActivity(IBinder iBinder, PendingIntent pendingIntent) {
        startActivity(getTileForToken(iBinder), pendingIntent);
    }

    public final void startUnlockAndRun(IBinder iBinder) {
        boolean z;
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            int i = 0;
            if (QpRune.QUICK_PANEL_SUBSCREEN) {
                DisplayLifecycle displayLifecycle = tileForToken.mDisplayLifecycle;
                if (displayLifecycle != null) {
                    z = displayLifecycle.mIsFolderOpened;
                } else {
                    z = false;
                }
                if (!z) {
                    ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).showLockscreenOnCoverScreen(tileForToken.mContext, tileForToken.mIntentAction);
                    ((TileServiceManager) this.mServices.get(tileForToken)).setWaitingUnlockState(true);
                }
            }
            tileForToken.mIsUnlockAndRun = true;
            tileForToken.mActivityStarter.postQSRunnableDismissingKeyguard(new CustomTile$$ExternalSyntheticLambda2(tileForToken, i), false);
            ((TileServiceManager) this.mServices.get(tileForToken)).setWaitingUnlockState(true);
        }
    }

    public final void updateQsTile(Tile tile, IBinder iBinder) {
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            synchronized (this.mServices) {
                TileServiceManager tileServiceManager = (TileServiceManager) this.mServices.get(tileForToken);
                if (tileServiceManager != null && tileServiceManager.mStarted) {
                    int i = 0;
                    tileServiceManager.mPendingBind = false;
                    tileServiceManager.mLastUpdate = System.currentTimeMillis();
                    if (tileServiceManager.mBound && tileServiceManager.isActiveTile() && !tileServiceManager.mIsTileListening) {
                        tileServiceManager.mStateManager.onStopListening();
                        tileServiceManager.setBindRequested(false);
                    }
                    tileServiceManager.mServices.recalculateBindAllowance();
                    ((SQSTileImpl) tileForToken).mHandler.post(new CustomTile$$ExternalSyntheticLambda1(i, tileForToken, tile));
                    tileForToken.refreshState(null);
                    return;
                }
                Log.e("TileServices", "TileServiceManager not started for " + tileForToken.mComponent, new IllegalStateException());
            }
        }
    }

    public final void updateStatusIcon(IBinder iBinder, Icon icon, String str) {
        final StatusBarIcon statusBarIcon;
        CustomTile tileForToken = getTileForToken(iBinder);
        if (tileForToken != null) {
            verifyCaller(tileForToken);
            try {
                ComponentName componentName = tileForToken.mComponent;
                String packageName = componentName.getPackageName();
                UserHandle callingUserHandle = IQSService.Stub.getCallingUserHandle();
                if (this.mContext.getPackageManager().getPackageInfoAsUser(packageName, 0, callingUserHandle.getIdentifier()).applicationInfo.isSystemApp()) {
                    if (icon != null) {
                        statusBarIcon = new StatusBarIcon(callingUserHandle, packageName, icon, 0, 0, str);
                    } else {
                        statusBarIcon = null;
                    }
                    final String className = componentName.getClassName();
                    this.mMainHandler.post(new Runnable() { // from class: com.android.systemui.qs.external.TileServices.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StatusBarIconController statusBarIconController = TileServices.this.mStatusBarIconController;
                            String str2 = className;
                            StatusBarIcon statusBarIcon2 = statusBarIcon;
                            StatusBarIconControllerImpl statusBarIconControllerImpl = (StatusBarIconControllerImpl) statusBarIconController;
                            if (statusBarIcon2 == null) {
                                statusBarIconControllerImpl.removeAllIconsForSlot(str2);
                                return;
                            }
                            statusBarIconControllerImpl.getClass();
                            StatusBarIconHolder.Companion.getClass();
                            StatusBarIconHolder statusBarIconHolder = new StatusBarIconHolder(null);
                            statusBarIconHolder.icon = statusBarIcon2;
                            statusBarIconControllerImpl.setIcon(str2, statusBarIconHolder);
                        }
                    });
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
    }

    public final void verifyCaller(CustomTile customTile) {
        try {
            if (Binder.getCallingUid() == this.mContext.getPackageManager().getPackageUidAsUser(customTile.mComponent.getPackageName(), Binder.getCallingUserHandle().getIdentifier())) {
            } else {
                throw new SecurityException("Component outside caller's uid");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new SecurityException(e);
        }
    }

    public void startActivity(CustomTile customTile, PendingIntent pendingIntent) {
        if (customTile != null) {
            verifyCaller(customTile);
            customTile.startActivityAndCollapse(pendingIntent);
        }
    }
}
