package com.android.systemui.statusbar.phone;

import android.app.KeyguardManager;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.service.dreams.IDreamManager;
import android.service.notification.StatusBarNotification;
import android.view.RemoteAnimationAdapter;
import android.view.View;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.ActivityIntentHelper;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.GhostedViewLaunchAnimatorController;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.statusbar.NotificationClickNotifier;
import com.android.systemui.statusbar.NotificationLockscreenUserManager;
import com.android.systemui.statusbar.NotificationPresenter;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.NotificationActivityStarter;
import com.android.systemui.statusbar.notification.NotificationLaunchAnimatorControllerProvider;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.provider.LaunchFullScreenIntentProvider;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.OnUserInteractionCallback;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.statusbar.policy.HeadsUpUtil;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.wmshell.BubblesManager;
import dagger.Lazy;
import java.util.Optional;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarNotificationActivityStarter implements NotificationActivityStarter {
    public final ActivityIntentHelper mActivityIntentHelper;
    public final ActivityLaunchAnimator mActivityLaunchAnimator;
    public final ActivityStarter mActivityStarter;
    public final Lazy mAssistManagerLazy;
    public final Optional mBubblesManagerOptional;
    public final CentralSurfaces mCentralSurfaces;
    public final NotificationClickNotifier mClickNotifier;
    public final Context mContext;
    public final IDreamManager mDreamManager;
    public final HeadsUpManagerPhone mHeadsUpManager;
    public boolean mIsCollapsingToShowActivityOverLockscreen;
    public final KeyguardManager mKeyguardManager;
    public final KeyguardStateController mKeyguardStateController;
    public final LockPatternUtils mLockPatternUtils;
    public final NotificationLockscreenUserManager mLockscreenUserManager;
    public final StatusBarNotificationActivityStarterLogger mLogger;
    public final Handler mMainThreadHandler;
    public final MetricsLogger mMetricsLogger;
    public final NotificationLaunchAnimatorControllerProvider mNotificationAnimationProvider;
    public final OnUserInteractionCallback mOnUserInteractionCallback;
    public final NotificationPresenter mPresenter;
    public final NotificationRemoteInputManager mRemoteInputManager;
    public final ShadeController mShadeController;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final StatusBarRemoteInputCallback mStatusBarRemoteInputCallback;
    public final Executor mUiBgExecutor;
    public final UserTracker mUserTracker;
    public final NotificationVisibilityProvider mVisibilityProvider;
    public boolean mShouldSkipFullScreenIntent = false;
    public NotificationEntry mPendingFullscreenEntry = null;
    public Boolean mIsStartFullscreenIntentWhenSubscreen = Boolean.FALSE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements ActivityStarter.OnDismissAction {
        public final /* synthetic */ boolean val$animate;
        public final /* synthetic */ int val$appUid;
        public final /* synthetic */ Intent val$intent;
        public final /* synthetic */ ExpandableNotificationRow val$row;

        public AnonymousClass2(ExpandableNotificationRow expandableNotificationRow, boolean z, Intent intent, int i) {
            this.val$row = expandableNotificationRow;
            this.val$animate = z;
            this.val$intent = intent;
            this.val$appUid = i;
        }

        @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
        public final boolean onDismiss() {
            final ExpandableNotificationRow expandableNotificationRow = this.val$row;
            final boolean z = this.val$animate;
            final Intent intent = this.val$intent;
            final int i = this.val$appUid;
            AsyncTask.execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    final StatusBarNotificationActivityStarter.AnonymousClass2 anonymousClass2 = StatusBarNotificationActivityStarter.AnonymousClass2.this;
                    ExpandableNotificationRow expandableNotificationRow2 = expandableNotificationRow;
                    boolean z2 = z;
                    final Intent intent2 = intent;
                    final int i2 = i;
                    anonymousClass2.getClass();
                    StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = StatusBarNotificationActivityStarter.this;
                    StatusBarLaunchAnimatorController statusBarLaunchAnimatorController = new StatusBarLaunchAnimatorController(statusBarNotificationActivityStarter.mNotificationAnimationProvider.getAnimatorController(expandableNotificationRow2, null), statusBarNotificationActivityStarter.mCentralSurfaces, true);
                    String str = intent2.getPackage();
                    Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$2$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            StatusBarNotificationActivityStarter statusBarNotificationActivityStarter2 = StatusBarNotificationActivityStarter.this;
                            return Integer.valueOf(TaskStackBuilder.create(statusBarNotificationActivityStarter2.mContext).addNextIntentWithParentStack(intent2).startActivities(CentralSurfaces.getActivityOptions(((CentralSurfacesImpl) statusBarNotificationActivityStarter2.mCentralSurfaces).mDisplayId, (RemoteAnimationAdapter) obj), new UserHandle(UserHandle.getUserId(i2))));
                        }
                    };
                    ActivityLaunchAnimator activityLaunchAnimator = statusBarNotificationActivityStarter.mActivityLaunchAnimator;
                    activityLaunchAnimator.getClass();
                    activityLaunchAnimator.startIntentWithAnimation(statusBarLaunchAnimatorController, z2, str, false, function1);
                }
            });
            return false;
        }

        @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
        public final boolean willRunAnimationOnKeyguard() {
            return this.val$animate;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 implements ActivityStarter.OnDismissAction {
        public final /* synthetic */ boolean val$animate;
        public final /* synthetic */ boolean val$showHistory;
        public final /* synthetic */ View val$view;

        public AnonymousClass3(boolean z, View view, boolean z2) {
            this.val$showHistory = z;
            this.val$view = view;
            this.val$animate = z2;
        }

        @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
        public final boolean onDismiss() {
            final boolean z = this.val$showHistory;
            final View view = this.val$view;
            final boolean z2 = this.val$animate;
            AsyncTask.execute(new Runnable() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Intent intent;
                    StatusBarLaunchAnimatorController statusBarLaunchAnimatorController;
                    final StatusBarNotificationActivityStarter.AnonymousClass3 anonymousClass3 = StatusBarNotificationActivityStarter.AnonymousClass3.this;
                    boolean z3 = z;
                    View view2 = view;
                    boolean z4 = z2;
                    anonymousClass3.getClass();
                    if (z3) {
                        intent = new Intent("android.settings.NOTIFICATION_HISTORY");
                    } else {
                        intent = new Intent("android.settings.NOTIFICATION_SETTINGS");
                    }
                    Intent intent2 = new Intent("android.settings.ALL_APPS_NOTIFICATION_SETTINGS");
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("need_search_icon_in_action_bar", true);
                    intent2.putExtra(":settings:show_fragment_args", bundle);
                    StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = StatusBarNotificationActivityStarter.this;
                    final TaskStackBuilder addNextIntent = TaskStackBuilder.create(statusBarNotificationActivityStarter.mContext).addNextIntent(intent2);
                    if (z3) {
                        addNextIntent.addNextIntent(intent);
                    }
                    GhostedViewLaunchAnimatorController fromView = ActivityLaunchAnimator.Controller.fromView(view2, 30);
                    if (fromView == null) {
                        statusBarLaunchAnimatorController = null;
                    } else {
                        statusBarLaunchAnimatorController = new StatusBarLaunchAnimatorController(fromView, statusBarNotificationActivityStarter.mCentralSurfaces, true);
                    }
                    String str = intent.getPackage();
                    Function1 function1 = new Function1() { // from class: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter$3$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            StatusBarNotificationActivityStarter statusBarNotificationActivityStarter2 = StatusBarNotificationActivityStarter.this;
                            return Integer.valueOf(addNextIntent.startActivities(CentralSurfaces.getActivityOptions(((CentralSurfacesImpl) statusBarNotificationActivityStarter2.mCentralSurfaces).mDisplayId, (RemoteAnimationAdapter) obj), ((UserTrackerImpl) statusBarNotificationActivityStarter2.mUserTracker).getUserHandle()));
                        }
                    };
                    ActivityLaunchAnimator activityLaunchAnimator = statusBarNotificationActivityStarter.mActivityLaunchAnimator;
                    activityLaunchAnimator.getClass();
                    activityLaunchAnimator.startIntentWithAnimation(statusBarLaunchAnimatorController, z4, str, false, function1);
                }
            });
            return true;
        }

        @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
        public final boolean willRunAnimationOnKeyguard() {
            return this.val$animate;
        }
    }

    public StatusBarNotificationActivityStarter(Context context, Handler handler, Executor executor, NotificationVisibilityProvider notificationVisibilityProvider, HeadsUpManagerPhone headsUpManagerPhone, ActivityStarter activityStarter, NotificationClickNotifier notificationClickNotifier, StatusBarKeyguardViewManager statusBarKeyguardViewManager, KeyguardManager keyguardManager, IDreamManager iDreamManager, Optional<BubblesManager> optional, Lazy lazy, NotificationRemoteInputManager notificationRemoteInputManager, NotificationLockscreenUserManager notificationLockscreenUserManager, ShadeController shadeController, KeyguardStateController keyguardStateController, NotificationInterruptStateProvider notificationInterruptStateProvider, LockPatternUtils lockPatternUtils, StatusBarRemoteInputCallback statusBarRemoteInputCallback, ActivityIntentHelper activityIntentHelper, MetricsLogger metricsLogger, StatusBarNotificationActivityStarterLogger statusBarNotificationActivityStarterLogger, OnUserInteractionCallback onUserInteractionCallback, CentralSurfaces centralSurfaces, NotificationPresenter notificationPresenter, ShadeViewController shadeViewController, ActivityLaunchAnimator activityLaunchAnimator, NotificationLaunchAnimatorControllerProvider notificationLaunchAnimatorControllerProvider, LaunchFullScreenIntentProvider launchFullScreenIntentProvider, FeatureFlags featureFlags, UserTracker userTracker) {
        this.mContext = context;
        this.mMainThreadHandler = handler;
        this.mUiBgExecutor = executor;
        this.mVisibilityProvider = notificationVisibilityProvider;
        this.mHeadsUpManager = headsUpManagerPhone;
        this.mActivityStarter = activityStarter;
        this.mClickNotifier = notificationClickNotifier;
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        this.mKeyguardManager = keyguardManager;
        this.mDreamManager = iDreamManager;
        this.mBubblesManagerOptional = optional;
        this.mAssistManagerLazy = lazy;
        this.mRemoteInputManager = notificationRemoteInputManager;
        this.mLockscreenUserManager = notificationLockscreenUserManager;
        this.mShadeController = shadeController;
        this.mKeyguardStateController = keyguardStateController;
        this.mLockPatternUtils = lockPatternUtils;
        this.mStatusBarRemoteInputCallback = statusBarRemoteInputCallback;
        this.mActivityIntentHelper = activityIntentHelper;
        this.mMetricsLogger = metricsLogger;
        this.mLogger = statusBarNotificationActivityStarterLogger;
        this.mOnUserInteractionCallback = onUserInteractionCallback;
        this.mCentralSurfaces = centralSurfaces;
        this.mPresenter = notificationPresenter;
        this.mActivityLaunchAnimator = activityLaunchAnimator;
        this.mNotificationAnimationProvider = notificationLaunchAnimatorControllerProvider;
        this.mUserTracker = userTracker;
        launchFullScreenIntentProvider.listeners.addIfAbsent(new StatusBarNotificationActivityStarter$$ExternalSyntheticLambda0(this));
    }

    public static boolean shouldAutoCancel(StatusBarNotification statusBarNotification) {
        if ((statusBarNotification.getNotification().flags & 16) != 16) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void launchFullScreenIntent(com.android.systemui.statusbar.notification.collection.NotificationEntry r15) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter.launchFullScreenIntent(com.android.systemui.statusbar.notification.collection.NotificationEntry):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ad, code lost:
    
        if (r4 == false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onNotificationClicked(final com.android.systemui.statusbar.notification.collection.NotificationEntry r17, final com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r18) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter.onNotificationClicked(com.android.systemui.statusbar.notification.collection.NotificationEntry, com.android.systemui.statusbar.notification.row.ExpandableNotificationRow):void");
    }

    public final void removeHunAfterClick(ExpandableNotificationRow expandableNotificationRow) {
        String key = expandableNotificationRow.mEntry.mSbn.getKey();
        HeadsUpManagerPhone headsUpManagerPhone = this.mHeadsUpManager;
        if (headsUpManagerPhone != null && headsUpManagerPhone.isAlerting(key)) {
            if (((StatusBarNotificationPresenter) this.mPresenter).isPresenterFullyCollapsed()) {
                HeadsUpUtil.setNeedsHeadsUpDisappearAnimationAfterClick(expandableNotificationRow, true);
            }
            headsUpManagerPhone.removeNotification(key, true);
        }
    }
}
