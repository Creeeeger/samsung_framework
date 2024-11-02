package com.android.systemui.qs.external;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.metrics.LogMaker;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.service.quicksettings.IQSTileService;
import android.service.quicksettings.Tile;
import android.util.Log;
import android.view.IWindowManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import android.widget.Switch;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.GhostedViewLaunchAnimatorController;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qp.flashlight.SubscreenFlashLightController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.qs.external.CustomTile;
import com.android.systemui.qs.external.TileLifecycleManager;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.settings.DisplayTracker;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.ScalingDrawableWrapper;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomTile extends SQSTileImpl implements TileLifecycleManager.TileChangeListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final ComponentName mComponent;
    public final CustomTileStatePersister mCustomTileStatePersister;
    public Icon mDefaultIcon;
    public CharSequence mDefaultLabel;
    public final CustomDetailAdapter mDetailAdapter;
    public RemoteViews mDetailView;
    public CharSequence mDetailViewTitle;
    public final DisplayLifecycle mDisplayLifecycle;
    public final DisplayTracker mDisplayTracker;
    public final AtomicBoolean mInitialDefaultIconFetched;
    public boolean mInitialized;
    public final String mIntentAction;
    public boolean mIsSecActiveTile;
    public boolean mIsSecCustomTile;
    public boolean mIsShowingDialog;
    public boolean mIsSupportDetailView;
    public final boolean mIsSystemApp;
    public boolean mIsTileStateActive;
    public boolean mIsToggleButtonExist;
    public boolean mIsTokenGranted;
    public boolean mIsUnlockAndRun;
    public final TileServiceKey mKey;
    public boolean mListening;
    public Bundle mMetaData;
    public final SecQSPanelResourcePicker mResourcePicker;
    public String mSearchTitle;
    public final TileLifecycleManager mService;
    public final TileServiceManager mServiceManager;
    public Intent mSettingsIntent;
    public final AnonymousClass2 mStopUnlockAndRun;
    public SubscreenCustomTileReceiver mSubscreenCustomTileReceiver;
    public final Tile mTile;
    public String mTileClassName;
    public String mTileClassNameFromMetaData;
    public final TileServices mTileServices;
    public int mTileState;
    public boolean mToggleEnabled;
    public final IBinder mToken;
    public String mUnlockPolicy;
    public final int mUser;
    public final Context mUserContext;
    public String mUserPolicy;
    public final UserTracker mUserTracker;
    public View mViewClicked;
    public final IWindowManager mWindowManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Builder {
        public final ActivityStarter mActivityStarter;
        public final Looper mBackgroundLooper;
        public final BroadcastDispatcher mBroadcastDispatcher;
        public final CustomTileStatePersister mCustomTileStatePersister;
        public final DisplayLifecycle mDisplayLifecycle;
        public final DisplayTracker mDisplayTracker;
        public final FalsingManager mFalsingManager;
        public final Handler mMainHandler;
        public final MetricsLogger mMetricsLogger;
        public final Lazy mQSHostLazy;
        public final QSLogger mQSLogger;
        public String mSpec = "";
        public final StatusBarStateController mStatusBarStateController;
        public final TileServices mTileServices;
        public final QsEventLogger mUiEventLogger;
        public Context mUserContext;
        public final UserTracker mUserTracker;

        public Builder(Lazy lazy, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, CustomTileStatePersister customTileStatePersister, TileServices tileServices, DisplayTracker displayTracker, UserTracker userTracker, BroadcastDispatcher broadcastDispatcher, DisplayLifecycle displayLifecycle) {
            this.mQSHostLazy = lazy;
            this.mUiEventLogger = qsEventLogger;
            this.mBackgroundLooper = looper;
            this.mMainHandler = handler;
            this.mFalsingManager = falsingManager;
            this.mMetricsLogger = metricsLogger;
            this.mStatusBarStateController = statusBarStateController;
            this.mActivityStarter = activityStarter;
            this.mQSLogger = qSLogger;
            this.mCustomTileStatePersister = customTileStatePersister;
            this.mTileServices = tileServices;
            this.mDisplayTracker = displayTracker;
            this.mUserTracker = userTracker;
            if (QpRune.QUICK_PANEL_SUBSCREEN) {
                this.mDisplayLifecycle = displayLifecycle;
                this.mBroadcastDispatcher = broadcastDispatcher;
            }
        }

        public CustomTile build() {
            if (this.mUserContext != null) {
                String str = this.mSpec;
                int i = CustomTile.$r8$clinit;
                if (str != null && str.startsWith("custom(") && str.endsWith(")")) {
                    String substring = str.substring(7, str.length() - 1);
                    if (!substring.isEmpty()) {
                        return new CustomTile((QSHost) this.mQSHostLazy.get(), this.mUiEventLogger, this.mBackgroundLooper, this.mMainHandler, this.mFalsingManager, this.mMetricsLogger, this.mStatusBarStateController, this.mActivityStarter, this.mQSLogger, substring, this.mUserContext, this.mCustomTileStatePersister, this.mTileServices, this.mDisplayTracker, this.mUserTracker, this.mBroadcastDispatcher, this.mDisplayLifecycle, 0);
                    }
                    throw new IllegalArgumentException("Empty custom tile spec action");
                }
                throw new IllegalArgumentException(KeyAttributes$$ExternalSyntheticOutline0.m("Bad custom tile spec: ", str));
            }
            throw new NullPointerException("UserContext cannot be null");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CustomDetailAdapter implements DetailAdapter {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final AnonymousClass1 mInteractionHandler = new RemoteViews.InteractionHandler() { // from class: com.android.systemui.qs.external.CustomTile.CustomDetailAdapter.1
            public final boolean onInteraction(View view, PendingIntent pendingIntent, RemoteViews.RemoteResponse remoteResponse) {
                boolean isActivity = pendingIntent.isActivity();
                CustomTile customTile = CustomTile.this;
                int i = CustomTile.$r8$clinit;
                String str = customTile.TAG;
                if (isActivity) {
                    customTile.showDetail(false);
                    ((ActivityStarter) Dependency.get(ActivityStarter.class)).postStartActivityDismissingKeyguard(pendingIntent);
                    return true;
                }
                return RemoteViews.startPendingIntent(view, pendingIntent, remoteResponse.getLaunchOptions(view));
            }
        };
        public final IQSTileService mService;

        /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.qs.external.CustomTile$CustomDetailAdapter$1] */
        public CustomDetailAdapter(IQSTileService iQSTileService) {
            this.mService = iQSTileService;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            RemoteViews remoteViews;
            IQSTileService iQSTileService = this.mService;
            if (iQSTileService == null) {
                return null;
            }
            CustomTile customTile = CustomTile.this;
            if (!customTile.mIsSupportDetailView) {
                return null;
            }
            try {
                boolean shouldUseArchivedDetailInfo = customTile.shouldUseArchivedDetailInfo();
                TileServiceManager tileServiceManager = customTile.mServiceManager;
                if (shouldUseArchivedDetailInfo) {
                    tileServiceManager.setBindRequested(true);
                    iQSTileService.onStartListening();
                    remoteViews = customTile.mDetailView;
                } else {
                    RemoteViews semGetDetailView = iQSTileService.semGetDetailView();
                    if (customTile.mIsSecActiveTile) {
                        customTile.mDetailView = semGetDetailView;
                        tileServiceManager.setBindRequested(true);
                        iQSTileService.onStartListening();
                    }
                    remoteViews = semGetDetailView;
                }
                Log.d(customTile.TAG, "getDetailView remoteViews = " + remoteViews);
                if (remoteViews == null) {
                    return null;
                }
                FrameLayout frameLayout = new FrameLayout(context);
                frameLayout.addView(remoteViews.apply(context, frameLayout, this.mInteractionHandler, null));
                return frameLayout;
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 268;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            IQSTileService iQSTileService = this.mService;
            if (iQSTileService == null) {
                return null;
            }
            int i = CustomTile.$r8$clinit;
            CustomTile customTile = CustomTile.this;
            if (customTile.shouldUseArchivedDetailInfo()) {
                return customTile.mSettingsIntent;
            }
            try {
                Intent semGetSettingsIntent = iQSTileService.semGetSettingsIntent();
                if (customTile.mIsSecActiveTile) {
                    customTile.mSettingsIntent = semGetSettingsIntent;
                }
                return semGetSettingsIntent;
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            IQSTileService iQSTileService = this.mService;
            if (iQSTileService == null) {
                return null;
            }
            int i = CustomTile.$r8$clinit;
            CustomTile customTile = CustomTile.this;
            if (customTile.shouldUseArchivedDetailInfo()) {
                return customTile.mDetailViewTitle;
            }
            try {
                CharSequence semGetDetailViewTitle = iQSTileService.semGetDetailViewTitle();
                if (customTile.mIsSecActiveTile) {
                    customTile.mDetailViewTitle = semGetDetailViewTitle;
                }
                return semGetDetailViewTitle;
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final boolean getToggleEnabled() {
            return CustomTile.this.mToggleEnabled;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            boolean z;
            IQSTileService iQSTileService = this.mService;
            if (iQSTileService == null) {
                return null;
            }
            int i = CustomTile.$r8$clinit;
            CustomTile customTile = CustomTile.this;
            if (customTile.shouldUseArchivedDetailInfo()) {
                if (customTile.mIsToggleButtonExist) {
                    if (customTile.mState.state == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            } else {
                try {
                    boolean semIsToggleButtonExists = iQSTileService.semIsToggleButtonExists();
                    if (customTile.mIsSecActiveTile) {
                        customTile.mIsToggleButtonExist = semIsToggleButtonExists;
                    }
                    if (semIsToggleButtonExists) {
                        return Boolean.valueOf(iQSTileService.semIsToggleButtonChecked());
                    }
                } catch (RemoteException unused) {
                }
            }
            return null;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
            boolean z2;
            Boolean toggleState = getToggleState();
            int i = CustomTile.$r8$clinit;
            CustomTile customTile = CustomTile.this;
            String str = customTile.TAG;
            TileServiceManager tileServiceManager = customTile.mServiceManager;
            ExifInterface$$ExternalSyntheticOutline0.m(RowView$$ExternalSyntheticOutline0.m("setToggleState  ", z, "getTileSpec() = "), customTile.mTileSpec, str);
            IQSTileService iQSTileService = this.mService;
            if (iQSTileService != null && toggleState != null) {
                boolean isBlockedEdmSettingsChange$1 = ((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBlockedEdmSettingsChange$1();
                String str2 = customTile.TAG;
                if (isBlockedEdmSettingsChange$1) {
                    customTile.showItPolicyToast();
                    Log.d(str2, "setToggleState blocked");
                    customTile.fireToggleStateChanged(toggleState.booleanValue());
                    return;
                }
                int i2 = 1;
                if (customTile.mUnlockPolicy.equals("ALL") || ((customTile.mUnlockPolicy.equals("ON") && z) || (customTile.mUnlockPolicy.equals("OFF") && !z))) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 && ((KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class))).mShowing && ((KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class))).mSecure && !((KeyguardStateControllerImpl) ((KeyguardStateController) Dependency.get(KeyguardStateController.class))).mCanDismissLockScreen && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isLockFunctionsEnabled()) {
                    ((ActivityStarter) Dependency.get(ActivityStarter.class)).postQSRunnableDismissingKeyguard(new CustomTile$$ExternalSyntheticLambda1(i2, this, toggleState));
                    customTile.fireToggleStateChanged(toggleState.booleanValue());
                    return;
                }
                try {
                    if (tileServiceManager.isActiveTile()) {
                        tileServiceManager.setBindRequested(true);
                        iQSTileService.onStartListening();
                    }
                    Log.d(str2, "setToggleState state = " + z);
                    iQSTileService.semSetToggleButtonChecked(z);
                } catch (RemoteException unused) {
                }
                customTile.fireToggleStateChanged(z);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscreenCustomTileReceiver extends BroadcastReceiver {
        public SubscreenCustomTileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(CustomTile.this.mIntentAction)) {
                try {
                    CustomTile.this.mService.onUnlockComplete();
                    CustomTile.this.mServiceManager.setWaitingUnlockState(false);
                    CustomTile customTile = CustomTile.this;
                    ((SQSTileImpl) customTile).mHandler.postDelayed(customTile.mStopUnlockAndRun, 1000L);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    enum SubscreenSALog {
        /* JADX INFO: Fake field, exist only in values array */
        SUBSCREEN_SCREENRECORDER_TILE("com.samsung.android.app.smartcapture", "QPBE2021"),
        /* JADX INFO: Fake field, exist only in values array */
        SUBSCREEN_MODES_TILE("com.samsung.android.app.routines", "QPBE2022");

        private final String mLogId;
        private final String mPackageName;

        SubscreenSALog(String str, String str2) {
            this.mPackageName = str;
            this.mLogId = str2;
        }

        public final String getLogId() {
            return this.mLogId;
        }

        public final boolean hasSamePackageName(String str) {
            return this.mPackageName.equals(str);
        }
    }

    public /* synthetic */ CustomTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, String str, Context context, CustomTileStatePersister customTileStatePersister, TileServices tileServices, DisplayTracker displayTracker, UserTracker userTracker, BroadcastDispatcher broadcastDispatcher, DisplayLifecycle displayLifecycle, int i) {
        this(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger, str, context, customTileStatePersister, tileServices, displayTracker, userTracker, broadcastDispatcher, displayLifecycle);
    }

    public static ComponentName getComponentFromSpec(String str) {
        String substring = str.substring(7, str.length() - 1);
        if (!substring.isEmpty()) {
            return ComponentName.unflattenFromString(substring);
        }
        throw new IllegalArgumentException("Empty custom tile spec action");
    }

    public static String toSpec(ComponentName componentName) {
        return "custom(" + componentName.flattenToShortString() + ")";
    }

    public final void applyTileState(Tile tile, boolean z) {
        Icon icon = tile.getIcon();
        Tile tile2 = this.mTile;
        if (icon != null || z) {
            tile2.setIcon(tile.getIcon());
        }
        if (tile.getLabel() != null || z) {
            tile2.setLabel(tile.getLabel());
        }
        if (tile.getSubtitle() != null || z) {
            tile2.setSubtitle(tile.getSubtitle());
        }
        if (tile.getContentDescription() != null || z) {
            tile2.setContentDescription(tile.getContentDescription());
        }
        if (tile.getStateDescription() != null || z) {
            tile2.setStateDescription(tile.getStateDescription());
        }
        tile2.setActivityLaunchForClick(tile.getActivityLaunchForClick());
        tile2.setState(tile.getState());
        Log.d(this.TAG, "updateState : Label = " + ((Object) tile.getLabel()) + ", State = " + tile.getState() + ", Icon = " + tile.getIcon());
        if (this.mIsSecCustomTile) {
            if (!this.mListening) {
                try {
                    this.mListening = false;
                    TileLifecycleManager tileLifecycleManager = this.mService;
                    if (tileLifecycleManager != null) {
                        tileLifecycleManager.onStopListening();
                    }
                    TileServiceManager tileServiceManager = this.mServiceManager;
                    if (tileServiceManager != null) {
                        tileServiceManager.setBindRequested(false);
                    }
                } catch (RemoteException unused) {
                }
            }
            if (this.mTileState != tile2.getState()) {
                this.mTileState = tile2.getState();
            }
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        CustomDetailAdapter customDetailAdapter;
        if (this.mIsSupportDetailView && (customDetailAdapter = this.mDetailAdapter) != null) {
            if (shouldUseArchivedDetailInfo()) {
                if (this.mDetailView != null) {
                    return customDetailAdapter;
                }
            } else {
                try {
                    TileLifecycleManager tileLifecycleManager = this.mService;
                    if (tileLifecycleManager != null) {
                        if (tileLifecycleManager.semGetDetailView() != null) {
                            return customDetailAdapter;
                        }
                    }
                } catch (RemoteException unused) {
                }
            }
        }
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        Intent intent;
        Intent intent2;
        if (this.mIsSupportDetailView) {
            return null;
        }
        TileLifecycleManager tileLifecycleManager = this.mService;
        if (tileLifecycleManager != null) {
            try {
                if (shouldUseArchivedDetailInfo()) {
                    intent = this.mSettingsIntent;
                } else {
                    intent = tileLifecycleManager.semGetSettingsIntent();
                    try {
                        if (this.mIsSecActiveTile) {
                            this.mSettingsIntent = intent;
                        }
                    } catch (RemoteException unused) {
                    }
                }
            } catch (RemoteException unused2) {
                intent = null;
            }
            if (intent != null) {
                return intent;
            }
        }
        if (this.mIsSecCustomTile) {
            return null;
        }
        Intent intent3 = new Intent("android.service.quicksettings.action.QS_TILE_PREFERENCES");
        ComponentName componentName = this.mComponent;
        intent3.setPackage(componentName.getPackageName());
        ResolveInfo resolveActivityAsUser = this.mContext.getPackageManager().resolveActivityAsUser(intent3, 0, this.mUser);
        if (resolveActivityAsUser != null) {
            Intent intent4 = new Intent("android.service.quicksettings.action.QS_TILE_PREFERENCES");
            ActivityInfo activityInfo = resolveActivityAsUser.activityInfo;
            intent2 = intent4.setClassName(activityInfo.packageName, activityInfo.name);
        } else {
            intent2 = null;
        }
        if (intent2 != null) {
            intent2.putExtra("android.intent.extra.COMPONENT_NAME", componentName);
            intent2.putExtra("state", this.mTile.getState());
            return intent2;
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", componentName.getPackageName(), null));
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 268;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final String getMetricsSpec() {
        return this.mComponent.getPackageName();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.indexsearch.Searchable
    public final String getSearchTitle() {
        CharSequence charSequence = this.mState.label;
        if (charSequence != null) {
            return charSequence.toString().replaceAll(System.getProperty("line.separator"), " ").trim();
        }
        String str = this.mSearchTitle;
        if (str != null) {
            return str.replaceAll(System.getProperty("line.separator"), " ").trim();
        }
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.indexsearch.Searchable
    public final ArrayList getSearchWords() {
        Context context = this.mContext;
        ComponentName componentName = this.mComponent;
        try {
            Bundle bundle = context.getPackageManager().getServiceInfo(componentName, 787072).metaData;
            if (bundle != null) {
                String string = bundle.getString("android.service.quicksettings.SEM_DEFAULT_TILE_SEARCH_KEYWORDS", "");
                if (!"".equals(string)) {
                    ArrayList arrayList = new ArrayList();
                    for (String str : string.split(";")) {
                        Resources resources = context.createPackageContext(componentName.getPackageName(), 0).getResources();
                        int identifier = resources.getIdentifier(str, "string", componentName.getPackageName());
                        if (identifier == 0) {
                            Objects.toString(super.getSearchWords());
                            return super.getSearchWords();
                        }
                        arrayList.add(resources.getString(identifier).trim().toLowerCase());
                    }
                    String lowerCase = getSearchTitle().toLowerCase();
                    if (lowerCase != null && !arrayList.contains(lowerCase)) {
                        arrayList.add(lowerCase);
                    }
                    return arrayList;
                }
            }
            return super.getSearchWords();
        } catch (PackageManager.NameNotFoundException unused) {
            return super.getSearchWords();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final long getStaleTimeout() {
        return (this.mHost.indexOf(this.mTileSpec) * 60000) + 3600000;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Drawable getTileIconDrawable() {
        try {
            Supplier<QSTile.Icon> supplier = this.mState.iconSupplier;
            if (supplier != null) {
                return supplier.get().getDrawable(this.mContext);
            }
            Icon icon = this.mDefaultIcon;
            if (icon != null) {
                return icon.loadDrawable(this.mUserContext);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mState.label;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(View view) {
        boolean z;
        boolean z2;
        IBinder iBinder = this.mToken;
        Tile tile = this.mTile;
        if (tile.getState() == 0) {
            return;
        }
        TileServiceManager tileServiceManager = this.mServiceManager;
        boolean z3 = false;
        if (tileServiceManager.mPendingBind && tileServiceManager.mStateManager.mHasPendingBind) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.w(this.TAG, AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder("handleClick : "), this.mTileClassName, " hasPendingBind"));
            return;
        }
        this.mViewClicked = view;
        try {
            IWindowManager iWindowManager = this.mWindowManager;
            this.mDisplayTracker.getClass();
            iWindowManager.addWindowToken(iBinder, 2035, 0, (Bundle) null);
            this.mIsTokenGranted = true;
        } catch (RemoteException unused) {
        }
        try {
            boolean isActiveTile = tileServiceManager.isActiveTile();
            TileLifecycleManager tileLifecycleManager = this.mService;
            if (isActiveTile) {
                tileServiceManager.setBindRequested(true);
                tileLifecycleManager.onStartListening();
            }
            boolean z4 = QpRune.QUICK_PANEL_SUBSCREEN;
            DisplayLifecycle displayLifecycle = this.mDisplayLifecycle;
            if (z4) {
                if (displayLifecycle != null) {
                    z2 = displayLifecycle.mIsFolderOpened;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    SubscreenUtil subscreenUtil = (SubscreenUtil) Dependency.get(SubscreenUtil.class);
                    Context context = this.mContext;
                    subscreenUtil.getClass();
                    SubscreenFlashLightController.getInstance(context).finishFlashLightActivity();
                    ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).closeSubscreenPanel();
                    this.mUiHandler.post(new CustomTile$$ExternalSyntheticLambda3());
                }
            }
            if (tile.getActivityLaunchForClick() != null) {
                startActivityAndCollapse(tile.getActivityLaunchForClick());
            } else {
                tileLifecycleManager.onClick(iBinder);
            }
            if (z4) {
                if (displayLifecycle != null) {
                    z3 = displayLifecycle.mIsFolderOpened;
                }
                if (!z3) {
                    final String resPackage = tile.getIcon().getResPackage();
                    Arrays.stream(SubscreenSALog.values()).filter(new Predicate() { // from class: com.android.systemui.qs.external.CustomTile$$ExternalSyntheticLambda5
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return ((CustomTile.SubscreenSALog) obj).hasSamePackageName(resPackage);
                        }
                    }).findFirst().ifPresent(new CustomTile$$ExternalSyntheticLambda6());
                }
            }
        } catch (RemoteException unused2) {
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        SubscreenCustomTileReceiver subscreenCustomTileReceiver;
        BroadcastDispatcher broadcastDispatcher;
        super.handleDestroy();
        int i = 0;
        if (this.mIsTokenGranted) {
            try {
                IWindowManager iWindowManager = this.mWindowManager;
                IBinder iBinder = this.mToken;
                this.mDisplayTracker.getClass();
                iWindowManager.removeWindowToken(iBinder, 0);
            } catch (RemoteException unused) {
            }
        }
        TileServices tileServices = this.mTileServices;
        TileServiceManager tileServiceManager = this.mServiceManager;
        synchronized (tileServices.mServices) {
            if (TileServices.DEBUG) {
                Log.d("TileServices", "freeService" + this);
            }
            tileServiceManager.setBindAllowed(false);
            tileServiceManager.handleDestroy();
            tileServices.mServices.remove(this);
            tileServices.mTokenMap.remove(tileServiceManager.mStateManager.mToken);
            tileServices.mTiles.delete(this.mUser, this.mComponent);
            tileServices.mMainHandler.post(new TileServices$$ExternalSyntheticLambda1(tileServices, this.mComponent.getClassName(), i));
            if (tileServices.mServices.size() == 0 && tileServices.mUninstallReceiverRegistered) {
                tileServices.mBroadcastDispatcher.unregisterReceiver(tileServices.mUninstallReceiver);
                tileServices.mUninstallReceiverRegistered = false;
            }
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && (subscreenCustomTileReceiver = this.mSubscreenCustomTileReceiver) != null && (broadcastDispatcher = this.mBroadcastDispatcher) != null) {
            broadcastDispatcher.unregisterReceiver(subscreenCustomTileReceiver);
            this.mSubscreenCustomTileReceiver = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleInitialize() {
        /*
            r8 = this;
            r8.updateDefaultTileAndIcon()
            java.util.concurrent.atomic.AtomicBoolean r0 = r8.mInitialDefaultIconFetched
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            com.android.systemui.qs.tileimpl.SQSTileImpl$SHandler r3 = r8.mHandler
            if (r0 == 0) goto L31
            android.graphics.drawable.Icon r0 = r8.mDefaultIcon
            if (r0 != 0) goto L31
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r4 = "No default icon for "
            r0.<init>(r4)
            java.lang.String r4 = r8.mTileSpec
            java.lang.String r5 = ", destroying tile"
            java.lang.String r0 = androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0.m(r0, r4, r5)
            java.lang.String r4 = r8.TAG
            android.util.Log.w(r4, r0)
            com.android.systemui.qs.external.CustomTile$1 r0 = new com.android.systemui.qs.external.CustomTile$1
            r0.<init>()
            r4 = 1000(0x3e8, double:4.94E-321)
            r3.postDelayed(r0, r4)
        L31:
            com.android.systemui.qs.external.TileServiceManager r0 = r8.mServiceManager
            boolean r4 = r0.isToggleableTile()
            if (r4 == 0) goto L4d
            com.android.systemui.plugins.qs.QSTile$State r4 = r8.newTileState()
            r8.mState = r4
            com.android.systemui.plugins.qs.QSTile$State r4 = r8.newTileState()
            r8.mTmpState = r4
            com.android.systemui.plugins.qs.QSTile$State r5 = r8.mState
            java.lang.String r6 = r8.mTileSpec
            r5.spec = r6
            r4.spec = r6
        L4d:
            com.android.systemui.qs.external.TileLifecycleManager r4 = r0.mStateManager
            r4.mChangeListener = r8
            boolean r4 = r0.isActiveTile()
            if (r4 == 0) goto L8f
            com.android.systemui.qs.external.CustomTileStatePersister r4 = r8.mCustomTileStatePersister
            android.content.SharedPreferences r4 = r4.sharedPreferences
            com.android.systemui.qs.external.TileServiceKey r5 = r8.mKey
            java.lang.String r5 = r5.string
            r6 = 0
            java.lang.String r4 = r4.getString(r5, r6)
            if (r4 != 0) goto L67
            goto L78
        L67:
            android.service.quicksettings.Tile r4 = com.android.systemui.qs.external.CustomTileStatePersisterKt.readTileFromString(r4)     // Catch: org.json.JSONException -> L6c
            goto L79
        L6c:
            r5 = move-exception
            java.lang.String r7 = "Bad saved state: "
            java.lang.String r4 = r7.concat(r4)
            java.lang.String r7 = "TileServicePersistence"
            android.util.Log.e(r7, r4, r5)
        L78:
            r4 = r6
        L79:
            if (r4 == 0) goto L83
            r8.applyTileState(r4, r1)
            r0.mPendingBind = r1
            r8.refreshState(r6)
        L83:
            boolean r0 = r8.mIsSecActiveTile
            if (r0 == 0) goto L8f
            com.android.systemui.qs.external.CustomTile$$ExternalSyntheticLambda2 r0 = new com.android.systemui.qs.external.CustomTile$$ExternalSyntheticLambda2
            r0.<init>(r8, r2)
            r3.post(r0)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.external.CustomTile.handleInitialize():void");
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSetListening(boolean z) {
        super.handleSetListening(z);
        if (this.mListening == z) {
            return;
        }
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("handleSetListening  ", z, "  initialized=");
        m.append(this.mInitialized);
        m.append("  isTileReady=");
        m.append(isTileReady());
        m.append("  getTileSpec() = ");
        m.append(this.mTileSpec);
        Log.d(this.TAG, m.toString());
        this.mListening = z;
        boolean z2 = this.mIsSecActiveTile;
        TileServiceManager tileServiceManager = this.mServiceManager;
        if (z2) {
            tileServiceManager.mIsTileListening = z;
        }
        TileLifecycleManager tileLifecycleManager = this.mService;
        try {
            if (z) {
                updateDefaultTileAndIcon();
                refreshState(null);
                if (!tileServiceManager.isActiveTile() || ((!isTileReady() && !this.mIsSecActiveTile) || !this.mInitialized)) {
                    tileServiceManager.setBindRequested(true);
                    tileLifecycleManager.onStartListening();
                    this.mInitialized = true;
                    if (this.mIsSecActiveTile) {
                        tileLifecycleManager.refreshDetailInfo();
                        return;
                    }
                    return;
                }
                return;
            }
            this.mViewClicked = null;
            tileLifecycleManager.onStopListening();
            if (this.mIsTokenGranted && !this.mIsShowingDialog) {
                try {
                    IWindowManager iWindowManager = this.mWindowManager;
                    IBinder iBinder = this.mToken;
                    this.mDisplayTracker.getClass();
                    iWindowManager.removeWindowToken(iBinder, 0);
                } catch (RemoteException unused) {
                }
                this.mIsTokenGranted = false;
            }
            this.mIsShowingDialog = false;
            tileServiceManager.setBindRequested(false);
        } catch (RemoteException unused2) {
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean z;
        final Drawable loadDrawable;
        boolean z2;
        int i;
        Context context = this.mUserContext;
        Tile tile = this.mTile;
        int state2 = tile.getState();
        TileServiceManager tileServiceManager = this.mServiceManager;
        boolean z3 = true;
        if (tileServiceManager.mPendingBind && tileServiceManager.mStateManager.mHasPendingBind) {
            z = true;
        } else {
            z = false;
        }
        String str = this.TAG;
        if (z) {
            Log.w(str, "handleUpdateState : hasPendingBind " + ((Object) state.label));
        }
        state.state = state2;
        state.dualTarget = true;
        String str2 = this.mTileSpec;
        if (this.mTileClassName == null && str2 != null) {
            String customTileNameFromSpec = this.mHost.getCustomTileNameFromSpec(str2);
            this.mTileClassName = customTileNameFromSpec;
            if (customTileNameFromSpec == null) {
                this.mTileClassName = this.mTileClassNameFromMetaData;
            }
        }
        if (this.mTileClassName == null && str2 != null) {
            this.mTileClassName = getComponentFromSpec(str2).getClassName();
        }
        state.tileClassName = this.mTileClassName;
        state.isCustomTile = true;
        try {
            loadDrawable = tile.getIcon().loadDrawable(context);
        } catch (Exception unused) {
            Log.w(str, "Invalid icon, forcing into unavailable state");
            state.state = 0;
            loadDrawable = this.mDefaultIcon.loadDrawable(context);
        }
        state.iconSupplier = new Supplier() { // from class: com.android.systemui.qs.external.CustomTile$$ExternalSyntheticLambda4
            @Override // java.util.function.Supplier
            public final Object get() {
                Drawable.ConstantState constantState;
                CustomTile customTile = CustomTile.this;
                Drawable drawable = loadDrawable;
                customTile.getClass();
                if (drawable != null && (constantState = drawable.getConstantState()) != null) {
                    if (!customTile.mIsSecCustomTile) {
                        customTile.mResourcePicker.getClass();
                        Context context2 = customTile.mContext;
                        ScalingDrawableWrapper scalingDrawableWrapper = new ScalingDrawableWrapper(drawable, context2.getResources().getFloat(R.dimen.qs_non_sec_customtile_icon_resize_ratio) * (SecQSPanelResourcePicker.getTileIconSize(context2) / drawable.getIntrinsicWidth()));
                        scalingDrawableWrapper.mCloneDrawable = constantState.newDrawable();
                        return new QSTileImpl.DrawableIcon(scalingDrawableWrapper, context2);
                    }
                    return new QSTileImpl.DrawableIcon(constantState.newDrawable());
                }
                return null;
            }
        };
        state.label = tile.getLabel();
        CharSequence subtitle = tile.getSubtitle();
        if (subtitle != null && subtitle.length() > 0) {
            state.secondaryLabel = subtitle;
        } else {
            state.secondaryLabel = null;
        }
        if (state.state == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mIsTileStateActive = z2;
        if (tile.getContentDescription() != null) {
            state.contentDescription = tile.getContentDescription();
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.mIsTileStateActive) {
                i = R.string.accessibility_desc_on;
            } else {
                i = R.string.accessibility_desc_off;
            }
            String string = this.mContext.getString(i);
            stringBuffer.append(state.label);
            stringBuffer.append(",");
            stringBuffer.append(string);
            stringBuffer.append(",");
            state.contentDescription = stringBuffer.toString();
        }
        if (tile.getStateDescription() != null) {
            state.stateDescription = tile.getStateDescription();
        } else {
            state.stateDescription = null;
        }
        if (state instanceof QSTile.BooleanState) {
            state.expandedAccessibilityClassName = Switch.class.getName();
            QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
            if (state.state != 2) {
                z3 = false;
            }
            booleanState.value = z3;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        boolean z;
        if ("OWNER".equals(this.mUserPolicy) && ((UserTrackerImpl) this.mUserTracker).getUserId() != 0) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                if (this.mInitialDefaultIconFetched.get() && this.mDefaultIcon == null) {
                    return false;
                }
                return true;
            }
        }
        Log.d(this.TAG, "isAvailable : return false , mComponent = " + this.mComponent + ", mUserPolicy = " + this.mUserPolicy);
        return false;
    }

    public final boolean isSecActiveTile() {
        int i;
        Bundle bundle = this.mMetaData;
        if (bundle == null || (i = bundle.getInt("android.service.quicksettings.SEM_ACTIVE_TILE_SUPPORT_SEM_PLATFORM_VER", 0)) == 0 || i > Build.VERSION.SEM_PLATFORM_INT) {
            return false;
        }
        return true;
    }

    public final boolean isSecCustomTile() {
        String str = "isSecCustomTile : mComponent =" + this.mComponent;
        String str2 = this.TAG;
        Log.d(str2, str);
        Bundle bundle = this.mMetaData;
        if (bundle != null) {
            String string = bundle.getString("android.service.quicksettings.SEM_DEFAULT_TILE_NAME", "");
            Log.d(str2, "isSecCustomTile : tileName =" + string);
            if (!"".equals(string)) {
                this.mTileClassNameFromMetaData = string;
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        TileServiceManager tileServiceManager = this.mServiceManager;
        if (tileServiceManager != null && tileServiceManager.isToggleableTile()) {
            return new QSTile.BooleanState();
        }
        return new QSTile.State();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final LogMaker populate(LogMaker logMaker) {
        return super.populate(logMaker).setComponentName(this.mComponent);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void postStale() {
        if (!this.mIsSecActiveTile) {
            super.postStale();
        }
    }

    public final boolean shouldUseArchivedDetailInfo() {
        boolean z;
        if (!this.mIsSecActiveTile) {
            return false;
        }
        if (this.mServiceManager.mStateManager.mWrapper != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return false;
        }
        return true;
    }

    public final void startActivityAndCollapse(final PendingIntent pendingIntent) {
        final GhostedViewLaunchAnimatorController fromView;
        boolean isActivity = pendingIntent.isActivity();
        String str = this.TAG;
        if (!isActivity) {
            Log.i(str, "Intent not for activity.");
            return;
        }
        if (!this.mIsTokenGranted && !this.mIsUnlockAndRun) {
            Log.i(str, "Launching activity before click");
            return;
        }
        Log.i(str, "The activity is starting");
        ((SQSTileImpl) this).mHandler.removeCallbacks(this.mStopUnlockAndRun);
        this.mIsUnlockAndRun = false;
        View view = this.mViewClicked;
        if (view == null) {
            fromView = null;
        } else {
            fromView = ActivityLaunchAnimator.Controller.fromView(view, 0);
        }
        this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.external.CustomTile$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CustomTile customTile = CustomTile.this;
                customTile.mActivityStarter.startPendingIntentDismissingKeyguard(pendingIntent, (Runnable) null, fromView);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085 A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[Catch: NameNotFoundException -> 0x00ac, TRY_LEAVE, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0023 A[Catch: NameNotFoundException -> 0x00ac, TryCatch #0 {NameNotFoundException -> 0x00ac, blocks: (B:3:0x0005, B:5:0x000f, B:9:0x001a, B:12:0x0027, B:14:0x002f, B:21:0x006e, B:22:0x0078, B:24:0x007c, B:25:0x007f, B:27:0x0085, B:29:0x0092, B:31:0x009a, B:32:0x009d, B:34:0x00a3, B:44:0x003e, B:46:0x0045, B:49:0x004c, B:52:0x0057, B:56:0x0023), top: B:2:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateDefaultTileAndIcon() {
        /*
            r12 = this;
            android.content.ComponentName r0 = r12.mComponent
            android.service.quicksettings.Tile r1 = r12.mTile
            r2 = 0
            android.content.Context r3 = r12.mUserContext     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            boolean r4 = r12.mIsSystemApp     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r4 != 0) goto L17
            boolean r4 = r12.mIsSecCustomTile     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r4 == 0) goto L14
            goto L17
        L14:
            r4 = 4980736(0x4c0000, float:6.979498E-39)
            goto L1a
        L17:
            r4 = 4981248(0x4c0200, float:6.980215E-39)
        L1a:
            android.content.pm.ServiceInfo r4 = r3.getServiceInfo(r0, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            int r5 = r4.icon     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r5 == 0) goto L23
            goto L27
        L23:
            android.content.pm.ApplicationInfo r5 = r4.applicationInfo     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            int r5 = r5.icon     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
        L27:
            android.graphics.drawable.Icon r6 = r1.getIcon()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            r7 = 0
            r8 = 1
            if (r6 == 0) goto L6b
            android.graphics.drawable.Icon r6 = r1.getIcon()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            android.graphics.drawable.Icon r9 = r12.mDefaultIcon     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r6 != r9) goto L39
        L37:
            r6 = r8
            goto L66
        L39:
            if (r6 == 0) goto L65
            if (r9 != 0) goto L3e
            goto L65
        L3e:
            int r10 = r6.getType()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            r11 = 2
            if (r10 != r11) goto L65
            int r10 = r9.getType()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r10 == r11) goto L4c
            goto L65
        L4c:
            int r10 = r6.getResId()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            int r11 = r9.getResId()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r10 == r11) goto L57
            goto L65
        L57:
            java.lang.String r6 = r6.getResPackage()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            java.lang.String r9 = r9.getResPackage()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            boolean r6 = java.util.Objects.equals(r6, r9)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r6 != 0) goto L37
        L65:
            r6 = r7
        L66:
            if (r6 == 0) goto L69
            goto L6b
        L69:
            r6 = r7
            goto L6c
        L6b:
            r6 = r8
        L6c:
            if (r5 == 0) goto L77
            java.lang.String r0 = r0.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            android.graphics.drawable.Icon r0 = android.graphics.drawable.Icon.createWithResource(r0, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            goto L78
        L77:
            r0 = r2
        L78:
            r12.mDefaultIcon = r0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r6 == 0) goto L7f
            r1.setIcon(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
        L7f:
            java.lang.CharSequence r0 = r1.getLabel()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r0 == 0) goto L91
            java.lang.CharSequence r0 = r1.getLabel()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            java.lang.CharSequence r5 = r12.mDefaultLabel     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            boolean r0 = android.text.TextUtils.equals(r0, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r0 == 0) goto L92
        L91:
            r7 = r8
        L92:
            java.lang.CharSequence r0 = r4.loadLabel(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            r12.mDefaultLabel = r0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r7 == 0) goto L9d
            r1.setLabel(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
        L9d:
            java.lang.CharSequence r0 = r1.getLabel()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            if (r0 == 0) goto Lb0
            java.lang.CharSequence r0 = r12.mDefaultLabel     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            java.lang.String r0 = r0.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            r12.mSearchTitle = r0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lac
            goto Lb0
        Lac:
            r12.mDefaultIcon = r2
            r12.mDefaultLabel = r2
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.external.CustomTile.updateDefaultTileAndIcon():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|2|3|(18:5|6|7|8|9|(1:11)(1:51)|12|(1:14)|15|107|27|(1:29)|30|(1:32)|33|(1:35)|36|(2:38|(1:44)(2:41|42))(1:46))|55|6|7|8|9|(0)(0)|12|(0)|15|107) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b2, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0108 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c6  */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.qs.external.CustomTile$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private CustomTile(com.android.systemui.qs.QSHost r15, com.android.systemui.qs.QsEventLogger r16, android.os.Looper r17, android.os.Handler r18, com.android.systemui.plugins.FalsingManager r19, com.android.internal.logging.MetricsLogger r20, com.android.systemui.plugins.statusbar.StatusBarStateController r21, com.android.systemui.plugins.ActivityStarter r22, com.android.systemui.qs.logging.QSLogger r23, java.lang.String r24, android.content.Context r25, com.android.systemui.qs.external.CustomTileStatePersister r26, com.android.systemui.qs.external.TileServices r27, com.android.systemui.settings.DisplayTracker r28, com.android.systemui.settings.UserTracker r29, com.android.systemui.broadcast.BroadcastDispatcher r30, com.android.systemui.keyguard.DisplayLifecycle r31) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.external.CustomTile.<init>(com.android.systemui.qs.QSHost, com.android.systemui.qs.QsEventLogger, android.os.Looper, android.os.Handler, com.android.systemui.plugins.FalsingManager, com.android.internal.logging.MetricsLogger, com.android.systemui.plugins.statusbar.StatusBarStateController, com.android.systemui.plugins.ActivityStarter, com.android.systemui.qs.logging.QSLogger, java.lang.String, android.content.Context, com.android.systemui.qs.external.CustomTileStatePersister, com.android.systemui.qs.external.TileServices, com.android.systemui.settings.DisplayTracker, com.android.systemui.settings.UserTracker, com.android.systemui.broadcast.BroadcastDispatcher, com.android.systemui.keyguard.DisplayLifecycle):void");
    }
}
