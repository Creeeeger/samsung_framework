package com.android.systemui.statusbar.notification.row;

import android.R;
import android.app.ActivityManager;
import android.app.Notification;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.CancellationSignal;
import android.os.SystemClock;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.util.Pools;
import android.view.View;
import android.widget.RemoteViews;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.ImageMessageConsumer;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.media.controls.util.MediaFeatureFlag;
import com.android.systemui.statusbar.InflationTask;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.ConversationNotificationProcessor;
import com.android.systemui.statusbar.notification.ImageTransformState;
import com.android.systemui.statusbar.notification.InflationException;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.NotificationRowContentBinder;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper;
import com.android.systemui.statusbar.policy.InflatedSmartReplyState;
import com.android.systemui.statusbar.policy.InflatedSmartReplyViewHolder;
import com.android.systemui.statusbar.policy.SmartReplyStateInflater;
import com.android.systemui.util.Assert;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.Utils;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.rune.CoreRune;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Predicate;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationContentInflater implements NotificationRowContentBinder {
    public final Executor mBgExecutor;
    public final ConversationNotificationProcessor mConversationProcessor;
    public boolean mInflateSynchronously = false;
    public final boolean mIsMediaInQS;
    public final NotificationRemoteInputManager mRemoteInputManager;
    public final NotifRemoteViewCache mRemoteViewCache;
    public final SmartReplyStateInflater mSmartReplyStateInflater;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static abstract class ApplyCallback {
        public abstract RemoteViews getRemoteView();

        public abstract void setResultView(View view);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AsyncInflationTask extends AsyncTask implements NotificationRowContentBinder.InflationCallback, InflationTask {
        public final Executor mBgExecutor;
        public final NotificationRowContentBinder.InflationCallback mCallback;
        public CancellationSignal mCancellationSignal;
        public final Context mContext;
        public final ConversationNotificationProcessor mConversationProcessor;
        public final NotificationEntry mEntry;
        public Exception mError;
        public final boolean mInflateSynchronously;
        public final boolean mIsAllowPrivateNotificationsWhenUnsecure;
        public final boolean mIsLowPriority;
        public final int mReInflateFlags;
        public final NotifRemoteViewCache mRemoteViewCache;
        public final RemoteViews.InteractionHandler mRemoteViewClickHandler;
        public final ExpandableNotificationRow mRow;
        public final SmartReplyStateInflater mSmartRepliesInflater;
        public final boolean mUsesIncreasedHeadsUpHeight;
        public final boolean mUsesIncreasedHeight;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class RtlEnabledContext extends ContextWrapper {
            public /* synthetic */ RtlEnabledContext(Context context, int i) {
                this(context);
            }

            @Override // android.content.ContextWrapper, android.content.Context
            public final ApplicationInfo getApplicationInfo() {
                ApplicationInfo applicationInfo = new ApplicationInfo(super.getApplicationInfo());
                applicationInfo.flags |= QuickStepContract.SYSUI_STATE_BACK_DISABLED;
                return applicationInfo;
            }

            private RtlEnabledContext(Context context) {
                super(context);
            }
        }

        @Override // com.android.systemui.statusbar.InflationTask
        public final void abort() {
            cancel(true);
            CancellationSignal cancellationSignal = this.mCancellationSignal;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
        }

        @Override // android.os.AsyncTask
        public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
            return doInBackground();
        }

        public int getReInflateFlags() {
            return this.mReInflateFlags;
        }

        public final void handleError(Exception exc) {
            NotificationEntry notificationEntry = this.mEntry;
            notificationEntry.mRunningTask = null;
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            Log.e("CentralSurfaces", "couldn't inflate view for notification " + (statusBarNotification.getPackageName() + "/0x" + Integer.toHexString(statusBarNotification.getId())), exc);
            NotificationRowContentBinder.InflationCallback inflationCallback = this.mCallback;
            if (inflationCallback != null) {
                inflationCallback.handleInflationException(this.mRow.mEntry, new InflationException("Couldn't inflate contentViews" + exc));
            }
            NotificationInlineImageResolver notificationInlineImageResolver = this.mRow.mImageResolver;
            if (notificationInlineImageResolver.hasCache()) {
                ((NotificationInlineImageCache) notificationInlineImageResolver.mImageCache).mCache.forEach(new NotificationInlineImageCache$$ExternalSyntheticLambda1());
            }
        }

        @Override // com.android.systemui.statusbar.notification.row.NotificationRowContentBinder.InflationCallback
        public final void handleInflationException(NotificationEntry notificationEntry, Exception exc) {
            handleError(exc);
        }

        @Override // com.android.systemui.statusbar.notification.row.NotificationRowContentBinder.InflationCallback
        public final void onAsyncInflationFinished(NotificationEntry notificationEntry) {
            this.mEntry.mRunningTask = null;
            this.mRow.onNotificationUpdated();
            NotificationRowContentBinder.InflationCallback inflationCallback = this.mCallback;
            if (inflationCallback != null) {
                inflationCallback.onAsyncInflationFinished(this.mEntry);
            }
            NotificationInlineImageResolver notificationInlineImageResolver = this.mRow.mImageResolver;
            if (notificationInlineImageResolver.hasCache()) {
                NotificationInlineImageCache notificationInlineImageCache = (NotificationInlineImageCache) notificationInlineImageResolver.mImageCache;
                final Set set = notificationInlineImageCache.mResolver.mWantedUriSet;
                notificationInlineImageCache.mCache.entrySet().removeIf(new Predicate() { // from class: com.android.systemui.statusbar.notification.row.NotificationInlineImageCache$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return !set.contains(((Map.Entry) obj).getKey());
                    }
                });
            }
            NotificationInlineImageResolver notificationInlineImageResolver2 = this.mRow.mImageResolver;
            if (notificationInlineImageResolver2.hasCache()) {
                ((NotificationInlineImageCache) notificationInlineImageResolver2.mImageCache).mCache.forEach(new NotificationInlineImageCache$$ExternalSyntheticLambda1());
            }
        }

        private AsyncInflationTask(Executor executor, boolean z, int i, NotifRemoteViewCache notifRemoteViewCache, NotificationEntry notificationEntry, ConversationNotificationProcessor conversationNotificationProcessor, ExpandableNotificationRow expandableNotificationRow, boolean z2, boolean z3, boolean z4, NotificationRowContentBinder.InflationCallback inflationCallback, RemoteViews.InteractionHandler interactionHandler, boolean z5, SmartReplyStateInflater smartReplyStateInflater, boolean z6) {
            this.mEntry = notificationEntry;
            this.mRow = expandableNotificationRow;
            this.mBgExecutor = executor;
            this.mInflateSynchronously = z;
            this.mReInflateFlags = i;
            this.mRemoteViewCache = notifRemoteViewCache;
            this.mSmartRepliesInflater = smartReplyStateInflater;
            this.mContext = expandableNotificationRow.getContext();
            this.mIsLowPriority = z2;
            this.mUsesIncreasedHeight = z3;
            this.mUsesIncreasedHeadsUpHeight = z4;
            this.mRemoteViewClickHandler = interactionHandler;
            this.mCallback = inflationCallback;
            this.mConversationProcessor = conversationNotificationProcessor;
            this.mIsAllowPrivateNotificationsWhenUnsecure = z6;
            notificationEntry.abortTask();
            notificationEntry.mRunningTask = this;
        }

        public final InflationProgress doInBackground() {
            Set set;
            try {
                StatusBarNotification statusBarNotification = this.mEntry.mSbn;
                try {
                    Notification.addFieldsFromContext(this.mContext.getPackageManager().getApplicationInfoAsUser(statusBarNotification.getPackageName(), 8192, UserHandle.getUserId(statusBarNotification.getUid())), statusBarNotification.getNotification());
                } catch (PackageManager.NameNotFoundException unused) {
                }
                Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(this.mContext, statusBarNotification.getNotification());
                Context packageContext = statusBarNotification.getPackageContext(this.mContext);
                if (recoverBuilder.usesTemplate()) {
                    packageContext = new RtlEnabledContext(packageContext, 0);
                }
                if (this.mEntry.mRanking.isConversation()) {
                    this.mConversationProcessor.processNotification(this.mEntry, recoverBuilder);
                }
                InflationProgress createRemoteViews = NotificationContentInflater.createRemoteViews(this.mReInflateFlags, recoverBuilder, this.mIsLowPriority, this.mUsesIncreasedHeight, this.mUsesIncreasedHeadsUpHeight, packageContext, this.mIsAllowPrivateNotificationsWhenUnsecure);
                NotificationContentInflater.inflateSmartReplyViews(createRemoteViews, this.mReInflateFlags, this.mEntry, this.mContext, packageContext, this.mRow.mPrivateLayout.mCurrentSmartReplyState, this.mSmartRepliesInflater);
                final NotificationInlineImageResolver notificationInlineImageResolver = this.mRow.mImageResolver;
                if (notificationInlineImageResolver.hasCache() && (set = notificationInlineImageResolver.mWantedUriSet) != null) {
                    final long elapsedRealtime = SystemClock.elapsedRealtime() + 1000;
                    set.forEach(new Consumer() { // from class: com.android.systemui.statusbar.notification.row.NotificationInlineImageResolver$$ExternalSyntheticLambda1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            NotificationInlineImageResolver notificationInlineImageResolver2 = NotificationInlineImageResolver.this;
                            long j = elapsedRealtime;
                            notificationInlineImageResolver2.getClass();
                            notificationInlineImageResolver2.loadImageFromCache(j - SystemClock.elapsedRealtime(), (Uri) obj);
                        }
                    });
                }
                return createRemoteViews;
            } catch (Exception e) {
                this.mError = e;
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(InflationProgress inflationProgress) {
            Exception exc = this.mError;
            if (exc == null) {
                this.mCancellationSignal = NotificationContentInflater.apply(this.mBgExecutor, this.mInflateSynchronously, inflationProgress, this.mReInflateFlags, this.mRemoteViewCache, this.mEntry, this.mRow, this.mRemoteViewClickHandler, this);
            } else {
                handleError(exc);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class InflationProgress {
        public InflatedSmartReplyViewHolder expandedInflatedSmartReplies;
        public InflatedSmartReplyViewHolder headsUpInflatedSmartReplies;
        public CharSequence headsUpStatusBarText;
        public CharSequence headsUpStatusBarTextPublic;
        public View inflatedContentView;
        public View inflatedExpandedView;
        public View inflatedHeadsUpView;
        public View inflatedPublicView;
        public InflatedSmartReplyState inflatedSmartReplyState;
        public RemoteViews newContentView;
        public RemoteViews newExpandedView;
        public RemoteViews newHeadsUpView;
        public RemoteViews newPublicView;
        Context packageContext;
    }

    public NotificationContentInflater(NotifRemoteViewCache notifRemoteViewCache, NotificationRemoteInputManager notificationRemoteInputManager, ConversationNotificationProcessor conversationNotificationProcessor, MediaFeatureFlag mediaFeatureFlag, Executor executor, SmartReplyStateInflater smartReplyStateInflater) {
        this.mRemoteViewCache = notifRemoteViewCache;
        this.mRemoteInputManager = notificationRemoteInputManager;
        this.mConversationProcessor = conversationNotificationProcessor;
        this.mIsMediaInQS = Utils.useQsMediaPlayer(mediaFeatureFlag.context);
        this.mBgExecutor = executor;
        this.mSmartReplyStateInflater = smartReplyStateInflater;
    }

    public static CancellationSignal apply(Executor executor, boolean z, final InflationProgress inflationProgress, int i, NotifRemoteViewCache notifRemoteViewCache, NotificationEntry notificationEntry, ExpandableNotificationRow expandableNotificationRow, RemoteViews.InteractionHandler interactionHandler, NotificationRowContentBinder.InflationCallback inflationCallback) {
        HashMap hashMap;
        NotificationContentView notificationContentView;
        NotificationContentView notificationContentView2;
        RemoteViews remoteViews;
        RemoteViews remoteViews2;
        NotificationContentView notificationContentView3 = expandableNotificationRow.mPrivateLayout;
        NotificationContentView notificationContentView4 = expandableNotificationRow.mPublicLayout;
        HashMap hashMap2 = new HashMap();
        if ((i & 1) != 0) {
            hashMap = hashMap2;
            notificationContentView = notificationContentView4;
            notificationContentView2 = notificationContentView3;
            applyRemoteView(executor, z, inflationProgress, i, 1, (NotifRemoteViewCacheImpl) notifRemoteViewCache, notificationEntry, expandableNotificationRow, !canReapplyRemoteView(inflationProgress.newContentView, r5.getCachedView(notificationEntry, 1)), interactionHandler, inflationCallback, notificationContentView3, notificationContentView3.mContractedChild, notificationContentView3.getVisibleWrapper(0), hashMap, new ApplyCallback() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater.1
                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final RemoteViews getRemoteView() {
                    return InflationProgress.this.newContentView;
                }

                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final void setResultView(View view) {
                    InflationProgress.this.inflatedContentView = view;
                }
            });
        } else {
            hashMap = hashMap2;
            notificationContentView = notificationContentView4;
            notificationContentView2 = notificationContentView3;
        }
        if ((i & 2) != 0 && (remoteViews2 = inflationProgress.newExpandedView) != null) {
            NotificationContentView notificationContentView5 = notificationContentView2;
            notificationContentView2 = notificationContentView5;
            applyRemoteView(executor, z, inflationProgress, i, 2, (NotifRemoteViewCacheImpl) notifRemoteViewCache, notificationEntry, expandableNotificationRow, !canReapplyRemoteView(remoteViews2, r5.getCachedView(notificationEntry, 2)), interactionHandler, inflationCallback, notificationContentView2, notificationContentView5.mExpandedChild, notificationContentView5.getVisibleWrapper(1), hashMap, new ApplyCallback() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater.2
                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final RemoteViews getRemoteView() {
                    return InflationProgress.this.newExpandedView;
                }

                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final void setResultView(View view) {
                    InflationProgress.this.inflatedExpandedView = view;
                }
            });
        }
        if ((i & 4) != 0 && (remoteViews = inflationProgress.newHeadsUpView) != null) {
            NotificationContentView notificationContentView6 = notificationContentView2;
            applyRemoteView(executor, z, inflationProgress, i, 4, (NotifRemoteViewCacheImpl) notifRemoteViewCache, notificationEntry, expandableNotificationRow, !canReapplyRemoteView(remoteViews, r5.getCachedView(notificationEntry, 4)), interactionHandler, inflationCallback, notificationContentView6, notificationContentView6.mHeadsUpChild, notificationContentView6.getVisibleWrapper(2), hashMap, new ApplyCallback() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater.3
                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final RemoteViews getRemoteView() {
                    return InflationProgress.this.newHeadsUpView;
                }

                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final void setResultView(View view) {
                    InflationProgress.this.inflatedHeadsUpView = view;
                }
            });
        }
        if ((i & 8) != 0) {
            NotificationContentView notificationContentView7 = notificationContentView;
            applyRemoteView(executor, z, inflationProgress, i, 8, (NotifRemoteViewCacheImpl) notifRemoteViewCache, notificationEntry, expandableNotificationRow, !canReapplyRemoteView(inflationProgress.newPublicView, r5.getCachedView(notificationEntry, 8)), interactionHandler, inflationCallback, notificationContentView7, notificationContentView7.mContractedChild, notificationContentView7.getVisibleWrapper(0), hashMap, new ApplyCallback() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater.4
                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final RemoteViews getRemoteView() {
                    return InflationProgress.this.newPublicView;
                }

                @Override // com.android.systemui.statusbar.notification.row.NotificationContentInflater.ApplyCallback
                public final void setResultView(View view) {
                    InflationProgress.this.inflatedPublicView = view;
                }
            });
        }
        finishIfDone(inflationProgress, i, notifRemoteViewCache, hashMap, inflationCallback, notificationEntry, expandableNotificationRow);
        CancellationSignal cancellationSignal = new CancellationSignal();
        final HashMap hashMap3 = hashMap;
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater$$ExternalSyntheticLambda1
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                hashMap3.values().forEach(new NotificationContentInflater$$ExternalSyntheticLambda0(1));
            }
        });
        return cancellationSignal;
    }

    public static void applyRemoteView(Executor executor, boolean z, final InflationProgress inflationProgress, final int i, final int i2, final NotifRemoteViewCache notifRemoteViewCache, final NotificationEntry notificationEntry, final ExpandableNotificationRow expandableNotificationRow, final boolean z2, final RemoteViews.InteractionHandler interactionHandler, final NotificationRowContentBinder.InflationCallback inflationCallback, final NotificationContentView notificationContentView, final View view, final NotificationViewWrapper notificationViewWrapper, final HashMap<Integer, CancellationSignal> hashMap, final ApplyCallback applyCallback) {
        CancellationSignal reapplyAsync;
        final RemoteViews remoteView = applyCallback.getRemoteView();
        if (z) {
            try {
                if (z2) {
                    View apply = remoteView.apply(inflationProgress.packageContext, notificationContentView, interactionHandler);
                    String isValidView = isValidView(apply, notificationEntry, expandableNotificationRow.getResources());
                    if (isValidView == null) {
                        apply.setIsRootNamespace(true);
                        applyCallback.setResultView(apply);
                        return;
                    }
                    throw new InflationException(isValidView);
                }
                remoteView.reapply(inflationProgress.packageContext, view, interactionHandler);
                String isValidView2 = isValidView(view, notificationEntry, expandableNotificationRow.getResources());
                if (isValidView2 == null) {
                    notificationViewWrapper.onReinflated();
                    return;
                }
                throw new InflationException(isValidView2);
            } catch (Exception e) {
                handleInflationError(hashMap, e, expandableNotificationRow.mEntry, inflationCallback);
                hashMap.put(Integer.valueOf(i2), new CancellationSignal());
                return;
            }
        }
        RemoteViews.OnViewAppliedListener onViewAppliedListener = new RemoteViews.OnViewAppliedListener() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater.5
            public final void onError(Exception exc) {
                try {
                    View view2 = view;
                    if (z2) {
                        view2 = remoteView.apply(inflationProgress.packageContext, notificationContentView, interactionHandler);
                    } else {
                        remoteView.reapply(inflationProgress.packageContext, view2, interactionHandler);
                    }
                    Log.wtf("NotifContentInflater", "Async Inflation failed but normal inflation finished normally.", exc);
                    onViewApplied(view2);
                } catch (Exception unused) {
                    hashMap.remove(Integer.valueOf(i2));
                    NotificationContentInflater.handleInflationError(hashMap, exc, ExpandableNotificationRow.this.mEntry, inflationCallback);
                }
            }

            public final void onViewApplied(View view2) {
                CachingIconView findViewById;
                boolean z3;
                boolean z4;
                Drawable semGetApplicationIconForIconTray;
                String isValidView3 = NotificationContentInflater.isValidView(view2, notificationEntry, ExpandableNotificationRow.this.getResources());
                if (isValidView3 != null) {
                    NotificationContentInflater.handleInflationError(hashMap, new InflationException(isValidView3), ExpandableNotificationRow.this.mEntry, inflationCallback);
                    hashMap.remove(Integer.valueOf(i2));
                    return;
                }
                if (z2) {
                    view2.setIsRootNamespace(true);
                    applyCallback.setResultView(view2);
                } else {
                    NotificationViewWrapper notificationViewWrapper2 = notificationViewWrapper;
                    if (notificationViewWrapper2 != null) {
                        notificationViewWrapper2.onReinflated();
                    }
                }
                hashMap.remove(Integer.valueOf(i2));
                NotificationContentInflater.finishIfDone(inflationProgress, i, notifRemoteViewCache, hashMap, inflationCallback, notificationEntry, ExpandableNotificationRow.this);
                final NotificationColorPicker notificationColorPicker = (NotificationColorPicker) Dependency.get(NotificationColorPicker.class);
                if ((view2.findViewById(R.id.icon) instanceof CachingIconView) && (findViewById = view2.findViewById(R.id.icon)) != null) {
                    Pools.SimplePool simplePool = ImageTransformState.sInstancePool;
                    findViewById.setTag(com.android.systemui.R.id.image_icon_tag, ExpandableNotificationRow.this.mEntry.mSbn.getNotification().getSmallIcon());
                    if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                        try {
                            PackageManager packageManager = ExpandableNotificationRow.this.getContext().getPackageManager();
                            String packageName = ExpandableNotificationRow.this.mEntry.mSbn.getPackageName();
                            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 4202624);
                            if (!packageName.equals("android") && !packageName.equals("com.android.systemui") && applicationInfo.icon != 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
                                settingsHelper.getClass();
                                if (CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER && settingsHelper.mItemLists.get("colortheme_app_icon").getIntValue() == 1) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (z4) {
                                    List<LauncherActivityInfo> activityList = ((LauncherApps) ExpandableNotificationRow.this.getContext().getSystemService(LauncherApps.class)).getActivityList(packageName, UserHandle.getUserHandleForUid(applicationInfo.uid));
                                    if (!activityList.isEmpty()) {
                                        semGetApplicationIconForIconTray = activityList.get(0).semGetBadgedIconForIconTray(ExpandableNotificationRow.this.getContext().getResources().getDisplayMetrics().densityDpi);
                                    } else {
                                        semGetApplicationIconForIconTray = packageManager.semGetApplicationIconForIconTray(applicationInfo, 1);
                                    }
                                } else {
                                    semGetApplicationIconForIconTray = packageManager.semGetApplicationIconForIconTray(applicationInfo, 1);
                                }
                                findViewById.setColorFilter((ColorFilter) null);
                                findViewById.setBackground((Drawable) null);
                                findViewById.setPadding(0, 0, 0, 0);
                                findViewById.setImageDrawable(semGetApplicationIconForIconTray);
                                findViewById.setTag(com.android.systemui.R.id.use_app_icon, Boolean.TRUE);
                            } else {
                                ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateSmallIcon(view2, ExpandableNotificationRow.this, findViewById);
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            e2.printStackTrace();
                        }
                    } else {
                        ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).updateSmallIcon(view2, ExpandableNotificationRow.this, findViewById);
                    }
                }
                ExpandableNotificationRow expandableNotificationRow2 = ExpandableNotificationRow.this;
                if (expandableNotificationRow2.mAnimationRunning) {
                    expandableNotificationRow2.setAnimationRunning(true);
                } else {
                    expandableNotificationRow2.setAnimationRunning(false);
                }
                Optional.ofNullable(ExpandableNotificationRow.this).filter(new NotificationContentInflater$5$$ExternalSyntheticLambda0()).ifPresent(new Consumer() { // from class: com.android.systemui.statusbar.notification.row.NotificationContentInflater$5$$ExternalSyntheticLambda1
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ExpandableNotificationRow expandableNotificationRow3 = (ExpandableNotificationRow) obj;
                        NotificationColorPicker.this.updateAllTextViewColors(expandableNotificationRow3, expandableNotificationRow3.mDimmed);
                    }
                });
                ExpandableNotificationRow expandableNotificationRow3 = ExpandableNotificationRow.this;
                notificationColorPicker.getClass();
                if (NotificationColorPicker.isNeedToUpdated(expandableNotificationRow3)) {
                    ExpandableNotificationRow expandableNotificationRow4 = ExpandableNotificationRow.this;
                    if (expandableNotificationRow4.mDimmed) {
                        notificationColorPicker.updateBig(view2, notificationColorPicker.getAppPrimaryColor(expandableNotificationRow4), notificationColorPicker.isGrayScaleIcon(ExpandableNotificationRow.this), notificationViewWrapper, true, ExpandableNotificationRow.this);
                    }
                }
                ExpandableNotificationRow expandableNotificationRow5 = ExpandableNotificationRow.this;
                if (expandableNotificationRow5.mIsPinned) {
                    ExpandableNotificationRow.this.applyHeadsUpBackground(NotificationColorPicker.isCustom(expandableNotificationRow5));
                }
            }

            public final void onViewInflated(View view2) {
                if (view2 instanceof ImageMessageConsumer) {
                    ((ImageMessageConsumer) view2).setImageResolver(ExpandableNotificationRow.this.mImageResolver);
                }
            }
        };
        if (z2) {
            reapplyAsync = remoteView.applyAsync(inflationProgress.packageContext, notificationContentView, executor, onViewAppliedListener, interactionHandler);
        } else {
            reapplyAsync = remoteView.reapplyAsync(inflationProgress.packageContext, view, executor, onViewAppliedListener, interactionHandler);
        }
        hashMap.put(Integer.valueOf(i2), reapplyAsync);
    }

    public static boolean canReapplyRemoteView(RemoteViews remoteViews, RemoteViews remoteViews2) {
        if (remoteViews == null && remoteViews2 == null) {
            return true;
        }
        if (remoteViews != null && remoteViews2 != null && remoteViews2.getPackage() != null && remoteViews.getPackage() != null && remoteViews.getPackage().equals(remoteViews2.getPackage()) && remoteViews.getLayoutId() == remoteViews2.getLayoutId() && !remoteViews2.hasFlags(1)) {
            return true;
        }
        return false;
    }

    public static InflationProgress createRemoteViews(int i, Notification.Builder builder, boolean z, boolean z2, boolean z3, Context context, boolean z4) {
        RemoteViews createContentView;
        InflationProgress inflationProgress = new InflationProgress();
        if ((i & 1) != 0) {
            if (z) {
                createContentView = builder.makeLowPriorityContentView(false);
            } else {
                createContentView = builder.createContentView(z2);
            }
            inflationProgress.newContentView = createContentView;
        }
        if ((i & 2) != 0) {
            RemoteViews createBigContentView = builder.createBigContentView();
            if (createBigContentView == null) {
                if (z) {
                    createBigContentView = builder.createContentView();
                    Notification.Builder.makeHeaderExpanded(createBigContentView);
                } else {
                    createBigContentView = null;
                }
            }
            inflationProgress.newExpandedView = createBigContentView;
        }
        if ((i & 4) != 0) {
            inflationProgress.newHeadsUpView = builder.createHeadsUpContentView(z3);
        }
        if ((i & 8) != 0) {
            inflationProgress.newPublicView = builder.makePublicContentView(z, z4);
        }
        inflationProgress.packageContext = context;
        inflationProgress.headsUpStatusBarText = builder.getHeadsUpStatusBarText(false);
        inflationProgress.headsUpStatusBarTextPublic = builder.getHeadsUpStatusBarText(true);
        return inflationProgress;
    }

    public static boolean finishIfDone(InflationProgress inflationProgress, int i, NotifRemoteViewCache notifRemoteViewCache, HashMap hashMap, NotificationRowContentBinder.InflationCallback inflationCallback, NotificationEntry notificationEntry, ExpandableNotificationRow expandableNotificationRow) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        Assert.isMainThread();
        NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
        NotificationContentView notificationContentView2 = expandableNotificationRow.mPublicLayout;
        boolean z5 = false;
        if (!hashMap.isEmpty()) {
            return false;
        }
        if ((i & 1) != 0) {
            View view = inflationProgress.inflatedContentView;
            if (view != null) {
                notificationContentView.setContractedChild(view);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).putCachedView(notificationEntry, 1, inflationProgress.newContentView);
            } else {
                NotifRemoteViewCacheImpl notifRemoteViewCacheImpl = (NotifRemoteViewCacheImpl) notifRemoteViewCache;
                if (notifRemoteViewCacheImpl.getCachedView(notificationEntry, 1) != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4) {
                    notifRemoteViewCacheImpl.putCachedView(notificationEntry, 1, inflationProgress.newContentView);
                }
            }
        }
        expandableNotificationRow.mIsCustomNotification = isCustomNotification(notificationEntry.mSbn.getNotification(), notificationContentView.mContractedChild, notificationEntry.mSbn.getNotification().contentView);
        if ((i & 2) != 0) {
            View view2 = inflationProgress.inflatedExpandedView;
            if (view2 != null) {
                notificationContentView.setExpandedChild(view2);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).putCachedView(notificationEntry, 2, inflationProgress.newExpandedView);
            } else if (inflationProgress.newExpandedView == null) {
                notificationContentView.setExpandedChild(null);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).removeCachedView(notificationEntry, 2);
            } else {
                NotifRemoteViewCacheImpl notifRemoteViewCacheImpl2 = (NotifRemoteViewCacheImpl) notifRemoteViewCache;
                if (notifRemoteViewCacheImpl2.getCachedView(notificationEntry, 2) != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    notifRemoteViewCacheImpl2.putCachedView(notificationEntry, 2, inflationProgress.newExpandedView);
                }
            }
            RemoteViews remoteViews = inflationProgress.newExpandedView;
            if (remoteViews != null) {
                InflatedSmartReplyViewHolder inflatedSmartReplyViewHolder = inflationProgress.expandedInflatedSmartReplies;
                notificationContentView.mExpandedInflatedSmartReplies = inflatedSmartReplyViewHolder;
                if (inflatedSmartReplyViewHolder == null) {
                    notificationContentView.mExpandedSmartReplyView = null;
                }
            } else {
                notificationContentView.mExpandedInflatedSmartReplies = null;
                notificationContentView.mExpandedSmartReplyView = null;
            }
            if (remoteViews != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            expandableNotificationRow.mExpandable = z3;
            expandableNotificationRow.mPrivateLayout.updateExpandButtonsDuringLayout(expandableNotificationRow.isExpandable(), false);
            expandableNotificationRow.mIsCustomBigNotification = isCustomNotification(notificationEntry.mSbn.getNotification(), notificationContentView.mExpandedChild, notificationEntry.mSbn.getNotification().bigContentView);
        }
        if ((i & 4) != 0) {
            View view3 = inflationProgress.inflatedHeadsUpView;
            if (view3 != null) {
                notificationContentView.setHeadsUpChild(view3);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).putCachedView(notificationEntry, 4, inflationProgress.newHeadsUpView);
            } else if (inflationProgress.newHeadsUpView == null) {
                notificationContentView.setHeadsUpChild(null);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).removeCachedView(notificationEntry, 4);
            } else {
                NotifRemoteViewCacheImpl notifRemoteViewCacheImpl3 = (NotifRemoteViewCacheImpl) notifRemoteViewCache;
                if (notifRemoteViewCacheImpl3.getCachedView(notificationEntry, 4) != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    notifRemoteViewCacheImpl3.putCachedView(notificationEntry, 4, inflationProgress.newHeadsUpView);
                }
            }
            if (inflationProgress.newHeadsUpView != null) {
                InflatedSmartReplyViewHolder inflatedSmartReplyViewHolder2 = inflationProgress.headsUpInflatedSmartReplies;
                notificationContentView.mHeadsUpInflatedSmartReplies = inflatedSmartReplyViewHolder2;
                if (inflatedSmartReplyViewHolder2 == null) {
                    notificationContentView.mHeadsUpSmartReplyView = null;
                }
            } else {
                notificationContentView.mHeadsUpInflatedSmartReplies = null;
                notificationContentView.mHeadsUpSmartReplyView = null;
            }
            expandableNotificationRow.mIsCustomHeadsUpNotification = isCustomNotification(notificationEntry.mSbn.getNotification(), notificationContentView.mHeadsUpChild, notificationEntry.mSbn.getNotification().headsUpContentView);
        }
        notificationContentView.mCurrentSmartReplyState = inflationProgress.inflatedSmartReplyState;
        if ((i & 8) != 0) {
            View view4 = inflationProgress.inflatedPublicView;
            if (view4 != null) {
                notificationContentView2.setContractedChild(view4);
                ((NotifRemoteViewCacheImpl) notifRemoteViewCache).putCachedView(notificationEntry, 8, inflationProgress.newPublicView);
            } else {
                NotifRemoteViewCacheImpl notifRemoteViewCacheImpl4 = (NotifRemoteViewCacheImpl) notifRemoteViewCache;
                if (notifRemoteViewCacheImpl4.getCachedView(notificationEntry, 8) != null) {
                    z5 = true;
                }
                if (z5) {
                    notifRemoteViewCacheImpl4.putCachedView(notificationEntry, 8, inflationProgress.newPublicView);
                }
            }
            if (notificationEntry.mSbn.getNotification().publicVersion != null) {
                expandableNotificationRow.mIsCustomPublicNotification = isCustomNotification(notificationEntry.mSbn.getNotification().publicVersion, notificationContentView2.mContractedChild, notificationEntry.mSbn.getNotification().publicVersion.contentView);
            }
        }
        notificationEntry.headsUpStatusBarText = inflationProgress.headsUpStatusBarText;
        notificationEntry.headsUpStatusBarTextPublic = inflationProgress.headsUpStatusBarTextPublic;
        if (inflationCallback != null) {
            inflationCallback.onAsyncInflationFinished(notificationEntry);
        }
        return true;
    }

    public static void handleInflationError(HashMap hashMap, Exception exc, NotificationEntry notificationEntry, NotificationRowContentBinder.InflationCallback inflationCallback) {
        Assert.isMainThread();
        hashMap.values().forEach(new NotificationContentInflater$$ExternalSyntheticLambda0(0));
        if (inflationCallback != null) {
            inflationCallback.handleInflationException(notificationEntry, exc);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0175 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void inflateSmartReplyViews(com.android.systemui.statusbar.notification.row.NotificationContentInflater.InflationProgress r20, int r21, com.android.systemui.statusbar.notification.collection.NotificationEntry r22, android.content.Context r23, android.content.Context r24, com.android.systemui.statusbar.policy.InflatedSmartReplyState r25, com.android.systemui.statusbar.policy.SmartReplyStateInflater r26) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.row.NotificationContentInflater.inflateSmartReplyViews(com.android.systemui.statusbar.notification.row.NotificationContentInflater$InflationProgress, int, com.android.systemui.statusbar.notification.collection.NotificationEntry, android.content.Context, android.content.Context, com.android.systemui.statusbar.policy.InflatedSmartReplyState, com.android.systemui.statusbar.policy.SmartReplyStateInflater):void");
    }

    public static boolean isCustomNotification(Notification notification2, View view, RemoteViews remoteViews) {
        boolean z;
        boolean z2;
        if (view == null) {
            return false;
        }
        if (remoteViews != null) {
            z = true;
        } else {
            z = false;
        }
        Class notificationStyle = notification2.getNotificationStyle();
        if (!Notification.DecoratedCustomViewStyle.class.equals(notificationStyle) && !Notification.DecoratedMediaCustomViewStyle.class.equals(notificationStyle)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (!z2 && !z && (view.getId() == 16909810 || view.getId() == 16909393)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String isValidView(android.view.View r4, com.android.systemui.statusbar.notification.collection.NotificationEntry r5, android.content.res.Resources r6) {
        /*
            int r0 = r5.targetSdk
            r1 = 31
            r2 = 1
            r3 = 0
            if (r0 < r1) goto L9
            goto L1b
        L9:
            android.service.notification.StatusBarNotification r5 = r5.mSbn
            android.app.Notification r5 = r5.getNotification()
            android.widget.RemoteViews r0 = r5.contentView
            if (r0 != 0) goto L1d
            android.widget.RemoteViews r0 = r5.bigContentView
            if (r0 != 0) goto L1d
            android.widget.RemoteViews r5 = r5.headsUpContentView
            if (r5 != 0) goto L1d
        L1b:
            r5 = r3
            goto L1e
        L1d:
            r5 = r2
        L1e:
            if (r5 != 0) goto L21
            goto L4c
        L21:
            java.lang.String r5 = "NotificationContentInflater#satisfiesMinHeightRequirement"
            android.os.Trace.beginSection(r5)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r3)
            r0 = 2131167808(0x7f070a40, float:1.79499E38)
            int r0 = r6.getDimensionPixelSize(r0)
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r4.measure(r0, r5)
            r5 = 2131167807(0x7f070a3f, float:1.7949898E38)
            int r5 = r6.getDimensionPixelSize(r5)
            int r4 = r4.getMeasuredHeight()
            if (r4 < r5) goto L48
            goto L49
        L48:
            r2 = r3
        L49:
            android.os.Trace.endSection()
        L4c:
            if (r2 != 0) goto L51
            java.lang.String r4 = "inflated notification does not meet minimum height requirement"
            return r4
        L51:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.row.NotificationContentInflater.isValidView(android.view.View, com.android.systemui.statusbar.notification.collection.NotificationEntry, android.content.res.Resources):java.lang.String");
    }

    public InflationProgress inflateNotificationViews(NotificationEntry notificationEntry, ExpandableNotificationRow expandableNotificationRow, NotificationRowContentBinder.BindParams bindParams, boolean z, int i, Notification.Builder builder, Context context, SmartReplyStateInflater smartReplyStateInflater) {
        boolean z2;
        if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE) {
            z2 = ((SettingsHelper) Dependency.get(SettingsHelper.class)).isAllowPrivateNotificationsWhenUnsecure(ActivityManager.getCurrentUser());
        } else {
            z2 = false;
        }
        InflationProgress createRemoteViews = createRemoteViews(i, builder, bindParams.isLowPriority, bindParams.usesIncreasedHeight, bindParams.usesIncreasedHeadsUpHeight, context, z2);
        inflateSmartReplyViews(createRemoteViews, i, notificationEntry, expandableNotificationRow.getContext(), context, expandableNotificationRow.mPrivateLayout.mCurrentSmartReplyState, smartReplyStateInflater);
        apply(this.mBgExecutor, z, createRemoteViews, i, this.mRemoteViewCache, notificationEntry, expandableNotificationRow, this.mRemoteInputManager.mInteractionHandler, null);
        return createRemoteViews;
    }

    public void setInflateSynchronously(boolean z) {
        this.mInflateSynchronously = z;
    }
}
