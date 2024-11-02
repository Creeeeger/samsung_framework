package com.android.systemui.statusbar.notification.collection.coordinator;

import android.app.Notification;
import android.net.Uri;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.ArraySet;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.statusbar.IStatusBarService;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.statusbar.NotificationLockscreenUserManagerImpl;
import com.android.systemui.statusbar.notification.InflationException;
import com.android.systemui.statusbar.notification.NotificationClicker$$ExternalSyntheticOutline0;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.NotificationUtilsKt;
import com.android.systemui.statusbar.notification.collection.GroupEntry;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda4;
import com.android.systemui.statusbar.notification.collection.NotifInflaterImpl;
import com.android.systemui.statusbar.notification.collection.NotifPipeline;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManagerImpl;
import com.android.systemui.statusbar.notification.collection.inflation.NotifInflater;
import com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustment;
import com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustmentProvider;
import com.android.systemui.statusbar.notification.collection.inflation.NotificationRowBinderImpl;
import com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeFinalizeFilterListener;
import com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter;
import com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener;
import com.android.systemui.statusbar.notification.collection.render.NotifViewBarn;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import com.android.systemui.statusbar.notification.row.NotifInflationErrorManager;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.util.SettingsHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PreparationCoordinator implements Coordinator {
    public final NotifUiAdjustmentProvider mAdjustmentProvider;
    public final BindEventManagerImpl mBindEventManager;
    public final int mChildBindCutoff;
    public final ArraySet mInflatingNotifs;
    public final ArrayMap mInflationAdjustments;
    public final AnonymousClass4 mInflationErrorListener;
    public final ArrayMap mInflationStates;
    public boolean mIsChanged;
    public final PreparationCoordinatorLogger mLogger;
    public final long mMaxGroupInflationDelay;
    public final AnonymousClass1 mNotifCollectionListener;
    public final NotifInflationErrorManager mNotifErrorManager;
    public final NotifInflater mNotifInflater;
    public final AnonymousClass3 mNotifInflatingFilter;
    public final AnonymousClass2 mNotifInflationErrorFilter;
    public NotifCollection$$ExternalSyntheticLambda4 mNotifUpdate;
    public final PreparationCoordinator$$ExternalSyntheticLambda0 mSettingsHelperCallback;
    public final IStatusBarService mStatusBarService;
    public final NotifViewBarn mViewBarn;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 {
        public AnonymousClass4() {
        }
    }

    public static void $r8$lambda$T1DwXSSxf_XS7CenlmlbkE5FMFw(PreparationCoordinator preparationCoordinator, NotificationEntry notificationEntry, ExpandableNotificationRowController expandableNotificationRowController) {
        PreparationCoordinatorLogger preparationCoordinatorLogger = preparationCoordinator.mLogger;
        preparationCoordinatorLogger.getClass();
        LogLevel logLevel = LogLevel.DEBUG;
        PreparationCoordinatorLogger$logNotifInflated$2 preparationCoordinatorLogger$logNotifInflated$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logNotifInflated$2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyAttributes$$ExternalSyntheticOutline0.m("Inflation completed for notif ", ((LogMessage) obj).getStr1());
            }
        };
        LogBuffer logBuffer = preparationCoordinatorLogger.buffer;
        LogMessage obtain = logBuffer.obtain("PreparationCoordinator", logLevel, preparationCoordinatorLogger$logNotifInflated$2, null);
        NotificationClicker$$ExternalSyntheticOutline0.m(notificationEntry, obtain, logBuffer, obtain);
        preparationCoordinator.mInflatingNotifs.remove(notificationEntry);
        preparationCoordinator.mViewBarn.rowMap.put(notificationEntry.mKey, expandableNotificationRowController);
        preparationCoordinator.mInflationStates.put(notificationEntry, 1);
        Iterator it = preparationCoordinator.mBindEventManager.listeners.iterator();
        while (it.hasNext()) {
            ((BindEventManager.Listener) it.next()).onViewBound(notificationEntry);
        }
        preparationCoordinator.mNotifInflatingFilter.invalidateList("onInflationFinished for " + NotificationUtils.logKey(notificationEntry));
    }

    public PreparationCoordinator(PreparationCoordinatorLogger preparationCoordinatorLogger, NotifInflater notifInflater, NotifInflationErrorManager notifInflationErrorManager, NotifViewBarn notifViewBarn, NotifUiAdjustmentProvider notifUiAdjustmentProvider, IStatusBarService iStatusBarService, BindEventManagerImpl bindEventManagerImpl) {
        this(preparationCoordinatorLogger, notifInflater, notifInflationErrorManager, notifViewBarn, notifUiAdjustmentProvider, iStatusBarService, bindEventManagerImpl, 9, 500L);
    }

    public final void abortInflation(NotificationEntry notificationEntry, String str) {
        ((NotifInflaterImpl) this.mNotifInflater).getClass();
        boolean abortTask = notificationEntry.abortTask();
        boolean remove = this.mInflatingNotifs.remove(notificationEntry);
        if (abortTask || remove) {
            PreparationCoordinatorLogger preparationCoordinatorLogger = this.mLogger;
            preparationCoordinatorLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            PreparationCoordinatorLogger$logInflationAborted$2 preparationCoordinatorLogger$logInflationAborted$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logInflationAborted$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    return FontProvider$$ExternalSyntheticOutline0.m("Infation aborted for notif ", logMessage.getStr1(), " reason=", logMessage.getStr2());
                }
            };
            LogBuffer logBuffer = preparationCoordinatorLogger.buffer;
            LogMessage obtain = logBuffer.obtain("PreparationCoordinator", logLevel, preparationCoordinatorLogger$logInflationAborted$2, null);
            obtain.setStr1(NotificationUtilsKt.getLogKey(notificationEntry));
            obtain.setStr2(str);
            logBuffer.commit(obtain);
        }
    }

    @Override // com.android.systemui.statusbar.notification.collection.coordinator.Coordinator
    public final void attach(NotifPipeline notifPipeline) {
        ((ArrayList) this.mNotifErrorManager.mListeners).add(this.mInflationErrorListener);
        Runnable runnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                invalidateList("adjustmentProviderChanged");
            }
        };
        NotifUiAdjustmentProvider notifUiAdjustmentProvider = this.mAdjustmentProvider;
        ListenerSet listenerSet = notifUiAdjustmentProvider.dirtyListeners;
        if (listenerSet.isEmpty()) {
            ((NotificationLockscreenUserManagerImpl) notifUiAdjustmentProvider.lockscreenUserManager).mNotifStateChangedListeners.addIfAbsent(notifUiAdjustmentProvider.notifStateChangedListener);
            notifUiAdjustmentProvider.updateSnoozeEnabled();
            notifUiAdjustmentProvider.secureSettings.registerContentObserverForUser("show_notification_snooze", notifUiAdjustmentProvider.settingsObserver, -1);
        }
        listenerSet.addIfAbsent(runnable);
        notifPipeline.addCollectionListener(this.mNotifCollectionListener);
        notifPipeline.addOnBeforeFinalizeFilterListener(new OnBeforeFinalizeFilterListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda2
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00c2, code lost:
            
                continue;
             */
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.OnBeforeFinalizeFilterListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onBeforeFinalizeFilter(java.util.List r15) {
                /*
                    r14 = this;
                    com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator r14 = com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator.this
                    r14.getClass()
                    int r0 = r15.size()
                    r1 = 0
                    r2 = r1
                Lb:
                    if (r2 >= r0) goto Lc6
                    java.lang.Object r3 = r15.get(r2)
                    com.android.systemui.statusbar.notification.collection.ListEntry r3 = (com.android.systemui.statusbar.notification.collection.ListEntry) r3
                    boolean r4 = r3 instanceof com.android.systemui.statusbar.notification.collection.GroupEntry
                    if (r4 == 0) goto Lbd
                    com.android.systemui.statusbar.notification.collection.GroupEntry r3 = (com.android.systemui.statusbar.notification.collection.GroupEntry) r3
                    com.android.systemui.statusbar.notification.collection.NotificationEntry r4 = r3.mSummary
                    r14.inflateRequiredNotifViews(r4)
                    r4 = r1
                L1f:
                    java.util.List r5 = r3.mUnmodifiableChildren
                    int r6 = r5.size()
                    if (r4 >= r6) goto Lc2
                    java.lang.Object r5 = r5.get(r4)
                    com.android.systemui.statusbar.notification.collection.NotificationEntry r5 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r5
                    int r6 = r14.mChildBindCutoff
                    r7 = 1
                    if (r4 >= r6) goto L34
                    r6 = r7
                    goto L35
                L34:
                    r6 = r1
                L35:
                    if (r6 == 0) goto L3c
                    r14.inflateRequiredNotifViews(r5)
                    goto Lb9
                L3c:
                    android.util.ArraySet r6 = r14.mInflatingNotifs
                    boolean r6 = r6.contains(r5)
                    java.lang.String r8 = "Past last visible group child"
                    if (r6 == 0) goto L49
                    r14.abortInflation(r5, r8)
                L49:
                    int r6 = r14.getInflationState(r5)
                    r9 = 2
                    if (r6 == r7) goto L55
                    if (r6 != r9) goto L53
                    goto L55
                L53:
                    r6 = r1
                    goto L56
                L55:
                    r6 = r7
                L56:
                    if (r6 == 0) goto Lb9
                    com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger r6 = r14.mLogger
                    r6.getClass()
                    com.android.systemui.log.LogLevel r10 = com.android.systemui.log.LogLevel.DEBUG
                    com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2 r11 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2
                        static {
                            /*
                                com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2 r0 = new com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2
                                r0.<init>()
                                
                                // error: 0x0005: SPUT 
  (r0 I:com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2)
 com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2.INSTANCE com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2.<clinit>():void");
                        }

                        {
                            /*
                                r1 = this;
                                r0 = 1
                                r1.<init>(r0)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2.<init>():void");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final java.lang.Object invoke(java.lang.Object r3) {
                            /*
                                r2 = this;
                                com.android.systemui.log.LogMessage r3 = (com.android.systemui.log.LogMessage) r3
                                java.lang.String r2 = r3.getStr1()
                                java.lang.String r3 = r3.getStr2()
                                java.lang.String r0 = "Freeing content views for notif "
                                java.lang.String r1 = " reason="
                                java.lang.String r2 = androidx.core.provider.FontProvider$$ExternalSyntheticOutline0.m(r0, r2, r1, r3)
                                return r2
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logFreeNotifViews$2.invoke(java.lang.Object):java.lang.Object");
                        }
                    }
                    com.android.systemui.log.LogBuffer r6 = r6.buffer
                    java.lang.String r12 = "PreparationCoordinator"
                    r13 = 0
                    com.android.systemui.log.LogMessage r10 = r6.obtain(r12, r10, r11, r13)
                    java.lang.String r11 = com.android.systemui.statusbar.notification.NotificationUtilsKt.getLogKey(r5)
                    r10.setStr1(r11)
                    r10.setStr2(r8)
                    r6.commit(r10)
                    com.android.systemui.statusbar.notification.collection.render.NotifViewBarn r6 = r14.mViewBarn
                    java.util.Map r6 = r6.rowMap
                    java.lang.String r8 = r5.getKey()
                    r6.remove(r8)
                    com.android.systemui.statusbar.notification.collection.inflation.NotifInflater r6 = r14.mNotifInflater
                    com.android.systemui.statusbar.notification.collection.NotifInflaterImpl r6 = (com.android.systemui.statusbar.notification.collection.NotifInflaterImpl) r6
                    com.android.systemui.statusbar.notification.collection.inflation.NotificationRowBinderImpl r6 = r6.mNotificationRowBinder
                    if (r6 == 0) goto Lb1
                    boolean r8 = r5.rowExists()
                    if (r8 != 0) goto L91
                    goto La7
                L91:
                    com.android.systemui.statusbar.notification.row.RowContentBindStage r6 = r6.mRowContentBindStage
                    java.lang.Object r8 = r6.getStageParams(r5)
                    com.android.systemui.statusbar.notification.row.RowContentBindParams r8 = (com.android.systemui.statusbar.notification.row.RowContentBindParams) r8
                    r8.markContentViewsFreeable(r7)
                    r8.markContentViewsFreeable(r9)
                    r7 = 8
                    r8.markContentViewsFreeable(r7)
                    r6.requestRebind(r5, r13)
                La7:
                    java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
                    android.util.ArrayMap r7 = r14.mInflationStates
                    r7.put(r5, r6)
                    goto Lb9
                Lb1:
                    java.lang.RuntimeException r14 = new java.lang.RuntimeException
                    java.lang.String r15 = "NotificationRowBinder must be attached before using NotifInflaterImpl."
                    r14.<init>(r15)
                    throw r14
                Lb9:
                    int r4 = r4 + 1
                    goto L1f
                Lbd:
                    com.android.systemui.statusbar.notification.collection.NotificationEntry r3 = (com.android.systemui.statusbar.notification.collection.NotificationEntry) r3
                    r14.inflateRequiredNotifViews(r3)
                Lc2:
                    int r2 = r2 + 1
                    goto Lb
                Lc6:
                    boolean r15 = com.android.systemui.NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE
                    if (r15 == 0) goto Ld0
                    boolean r15 = r14.mIsChanged
                    if (r15 == 0) goto Ld0
                    r14.mIsChanged = r1
                Ld0:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda2.onBeforeFinalizeFilter(java.util.List):void");
            }
        });
        notifPipeline.addFinalizeFilter(this.mNotifInflationErrorFilter);
        notifPipeline.addFinalizeFilter(this.mNotifInflatingFilter);
        if (NotiRune.NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE) {
            ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(this.mSettingsHelperCallback, Settings.Secure.getUriFor("lock_screen_allow_private_notifications_when_unsecure"));
        }
        NotifCollection notifCollection = notifPipeline.mNotifCollection;
        notifCollection.getClass();
        this.mNotifUpdate = new NotifCollection$$ExternalSyntheticLambda4(notifCollection, "PreparationCoordinator");
    }

    public final int getInflationState(NotificationEntry notificationEntry) {
        Integer num = (Integer) this.mInflationStates.get(notificationEntry);
        Objects.requireNonNull(num, "Asking state of a notification preparation coordinator doesn't know about");
        return num.intValue();
    }

    public final void inflateEntry(NotificationEntry notificationEntry, NotifUiAdjustment notifUiAdjustment, String str) {
        abortInflation(notificationEntry, str);
        this.mInflationAdjustments.put(notificationEntry, notifUiAdjustment);
        this.mInflatingNotifs.add(notificationEntry);
        NotifInflater.Params params = new NotifInflater.Params(notifUiAdjustment.isMinimized, str, notifUiAdjustment.isSnoozeEnabled);
        PreparationCoordinator$$ExternalSyntheticLambda3 preparationCoordinator$$ExternalSyntheticLambda3 = new PreparationCoordinator$$ExternalSyntheticLambda3(this, 0);
        NotifInflaterImpl notifInflaterImpl = (NotifInflaterImpl) this.mNotifInflater;
        NotifInflationErrorManager notifInflationErrorManager = notifInflaterImpl.mNotifErrorManager;
        try {
            NotificationRowBinderImpl notificationRowBinderImpl = notifInflaterImpl.mNotificationRowBinder;
            if (notificationRowBinderImpl != null) {
                notificationRowBinderImpl.inflateViews(notificationEntry, params, new NotifInflaterImpl.AnonymousClass1(preparationCoordinator$$ExternalSyntheticLambda3));
                return;
            }
            throw new RuntimeException("NotificationRowBinder must be attached before using NotifInflaterImpl.");
        } catch (InflationException e) {
            notifInflationErrorManager.setInflationError(notificationEntry, e);
        } catch (RuntimeException e2) {
            notifInflationErrorManager.setInflationError(notificationEntry, e2);
        }
    }

    public final void inflateRequiredNotifViews(NotificationEntry notificationEntry) {
        boolean z;
        boolean z2;
        boolean z3;
        NotifUiAdjustmentProvider notifUiAdjustmentProvider = this.mAdjustmentProvider;
        notifUiAdjustmentProvider.getClass();
        String str = notificationEntry.mKey;
        List<Notification.Action> smartActions = notificationEntry.mRanking.getSmartActions();
        List<CharSequence> smartReplies = notificationEntry.mRanking.getSmartReplies();
        boolean isConversation = notificationEntry.mRanking.isConversation();
        if (notifUiAdjustmentProvider.isSnoozeSettingsEnabled && !notificationEntry.isCanceled()) {
            z = true;
        } else {
            z = false;
        }
        if (notificationEntry.getSection() != null) {
            GroupEntry parent = notificationEntry.getParent();
            if (parent != null) {
                if (!notifUiAdjustmentProvider.highPriorityProvider.isHighPriority(notificationEntry, true) && notificationEntry.isAmbient()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean areEqual = Intrinsics.areEqual(parent, GroupEntry.ROOT_ENTRY);
                boolean areEqual2 = Intrinsics.areEqual(parent.mSummary, notificationEntry);
                if (z2 && (areEqual || areEqual2)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                NotifUiAdjustment notifUiAdjustment = new NotifUiAdjustment(str, smartActions, smartReplies, isConversation, z, z3, ((NotificationLockscreenUserManagerImpl) notifUiAdjustmentProvider.lockscreenUserManager).needsRedaction(notificationEntry));
                if (this.mInflatingNotifs.contains(notificationEntry)) {
                    if (needToReinflate(notificationEntry, notifUiAdjustment, "Inflating notification has no adjustments")) {
                        inflateEntry(notificationEntry, notifUiAdjustment, "adjustment changed while inflating");
                        return;
                    }
                    return;
                }
                ArrayMap arrayMap = this.mInflationStates;
                if (((Integer) arrayMap.get(notificationEntry)) == null) {
                    ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("entry : "), notificationEntry.mKey, " inflationState is null during inflateRequiredNotifViews", "PreparationCoordinator");
                    return;
                }
                int intValue = ((Integer) arrayMap.get(notificationEntry)).intValue();
                if (intValue != -1) {
                    if (intValue != 0) {
                        if (intValue != 1) {
                            if (intValue == 2) {
                                rebind(notificationEntry, notifUiAdjustment, "entryUpdated");
                                return;
                            }
                            return;
                        } else {
                            if (needToReinflate(notificationEntry, notifUiAdjustment, "Fully inflated notification has no adjustments")) {
                                rebind(notificationEntry, notifUiAdjustment, "adjustment changed after inflated");
                                return;
                            }
                            return;
                        }
                    }
                    inflateEntry(notificationEntry, notifUiAdjustment, "entryAdded");
                    return;
                }
                if (needToReinflate(notificationEntry, notifUiAdjustment, null)) {
                    inflateEntry(notificationEntry, notifUiAdjustment, "adjustment changed after error");
                    return;
                }
                return;
            }
            throw new IllegalStateException("Entry must have a parent to determine if minimized".toString());
        }
        throw new IllegalStateException("Entry must have a section to determine if minimized".toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0198 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[LOOP:1: B:54:0x0112->B:78:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:? A[LOOP:0: B:33:0x007d->B:89:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean needToReinflate(com.android.systemui.statusbar.notification.collection.NotificationEntry r7, com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustment r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator.needToReinflate(com.android.systemui.statusbar.notification.collection.NotificationEntry, com.android.systemui.statusbar.notification.collection.inflation.NotifUiAdjustment, java.lang.String):boolean");
    }

    public final void rebind(NotificationEntry notificationEntry, NotifUiAdjustment notifUiAdjustment, String str) {
        this.mInflationAdjustments.put(notificationEntry, notifUiAdjustment);
        this.mInflatingNotifs.add(notificationEntry);
        NotifInflater.Params params = new NotifInflater.Params(notifUiAdjustment.isMinimized, str, notifUiAdjustment.isSnoozeEnabled);
        PreparationCoordinator$$ExternalSyntheticLambda3 preparationCoordinator$$ExternalSyntheticLambda3 = new PreparationCoordinator$$ExternalSyntheticLambda3(this, 1);
        NotifInflaterImpl notifInflaterImpl = (NotifInflaterImpl) this.mNotifInflater;
        NotifInflationErrorManager notifInflationErrorManager = notifInflaterImpl.mNotifErrorManager;
        try {
            NotificationRowBinderImpl notificationRowBinderImpl = notifInflaterImpl.mNotificationRowBinder;
            if (notificationRowBinderImpl != null) {
                notificationRowBinderImpl.inflateViews(notificationEntry, params, new NotifInflaterImpl.AnonymousClass1(preparationCoordinator$$ExternalSyntheticLambda3));
                return;
            }
            throw new RuntimeException("NotificationRowBinder must be attached before using NotifInflaterImpl.");
        } catch (InflationException e) {
            notifInflationErrorManager.setInflationError(notificationEntry, e);
        } catch (RuntimeException e2) {
            notifInflationErrorManager.setInflationError(notificationEntry, e2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$1] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$3] */
    public PreparationCoordinator(PreparationCoordinatorLogger preparationCoordinatorLogger, NotifInflater notifInflater, NotifInflationErrorManager notifInflationErrorManager, NotifViewBarn notifViewBarn, NotifUiAdjustmentProvider notifUiAdjustmentProvider, IStatusBarService iStatusBarService, BindEventManagerImpl bindEventManagerImpl, int i, long j) {
        this.mInflationStates = new ArrayMap();
        this.mInflationAdjustments = new ArrayMap();
        this.mInflatingNotifs = new ArraySet();
        this.mSettingsHelperCallback = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator$$ExternalSyntheticLambda0
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                PreparationCoordinator.this.mIsChanged = true;
            }
        };
        this.mNotifCollectionListener = new NotifCollectionListener() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator.1
            @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
            public final void onEntryCleanUp(NotificationEntry notificationEntry) {
                PreparationCoordinator preparationCoordinator = PreparationCoordinator.this;
                preparationCoordinator.mInflationStates.remove(notificationEntry);
                preparationCoordinator.mViewBarn.rowMap.remove(notificationEntry.getKey());
                preparationCoordinator.mInflationAdjustments.remove(notificationEntry);
            }

            @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
            public final void onEntryInit(NotificationEntry notificationEntry) {
                PreparationCoordinator.this.mInflationStates.put(notificationEntry, 0);
            }

            @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
            public final void onEntryRemoved(NotificationEntry notificationEntry, int i2) {
                PreparationCoordinator.this.abortInflation(notificationEntry, "entryRemoved reason=" + i2);
            }

            @Override // com.android.systemui.statusbar.notification.collection.notifcollection.NotifCollectionListener
            public final void onEntryUpdated(NotificationEntry notificationEntry) {
                PreparationCoordinator preparationCoordinator = PreparationCoordinator.this;
                preparationCoordinator.abortInflation(notificationEntry, "entryUpdated");
                int inflationState = preparationCoordinator.getInflationState(notificationEntry);
                if (inflationState == 1) {
                    preparationCoordinator.mInflationStates.put(notificationEntry, 2);
                } else if (inflationState == -1) {
                    preparationCoordinator.mInflationStates.put(notificationEntry, 0);
                }
            }
        };
        this.mNotifInflationErrorFilter = new NotifFilter("PreparationCoordinatorInflationError") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator.2
            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
            public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j2) {
                if (PreparationCoordinator.this.getInflationState(notificationEntry) == -1) {
                    return true;
                }
                return false;
            }
        };
        this.mNotifInflatingFilter = new NotifFilter("PreparationCoordinatorInflating") { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinator.3
            public final Map mIsDelayedGroupCache = new ArrayMap();

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.Pluggable
            public final void onCleanup() {
                ((ArrayMap) this.mIsDelayedGroupCache).clear();
            }

            @Override // com.android.systemui.statusbar.notification.collection.listbuilder.pluggable.NotifFilter
            public final boolean shouldFilterOut(NotificationEntry notificationEntry, long j2) {
                boolean z;
                boolean z2;
                boolean z3;
                boolean z4;
                GroupEntry parent = notificationEntry.getParent();
                Objects.requireNonNull(parent);
                ArrayMap arrayMap = (ArrayMap) this.mIsDelayedGroupCache;
                Boolean bool = (Boolean) arrayMap.get(parent);
                PreparationCoordinator preparationCoordinator = PreparationCoordinator.this;
                if (bool == null) {
                    preparationCoordinator.getClass();
                    if (parent != GroupEntry.ROOT_ENTRY && !parent.wasAttachedInPreviousPass()) {
                        if (j2 - parent.mCreationTime > preparationCoordinator.mMaxGroupInflationDelay) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        PreparationCoordinatorLogger preparationCoordinatorLogger2 = preparationCoordinator.mLogger;
                        if (z3) {
                            preparationCoordinatorLogger2.getClass();
                            LogLevel logLevel = LogLevel.WARNING;
                            PreparationCoordinatorLogger$logGroupInflationTookTooLong$2 preparationCoordinatorLogger$logGroupInflationTookTooLong$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logGroupInflationTookTooLong$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return PathParser$$ExternalSyntheticOutline0.m("Group inflation took too long for ", ((LogMessage) obj).getStr1(), ", releasing children early");
                                }
                            };
                            LogBuffer logBuffer = preparationCoordinatorLogger2.buffer;
                            LogMessage obtain = logBuffer.obtain("PreparationCoordinator", logLevel, preparationCoordinatorLogger$logGroupInflationTookTooLong$2, null);
                            obtain.setStr1(NotificationUtilsKt.getLogKey(parent));
                            logBuffer.commit(obtain);
                        } else {
                            NotificationEntry notificationEntry2 = parent.mSummary;
                            if (notificationEntry2 != null) {
                                int inflationState = preparationCoordinator.getInflationState(notificationEntry2);
                                if (inflationState != 1 && inflationState != 2) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                                if (!z4) {
                                    preparationCoordinatorLogger2.logDelayingGroupRelease(parent, parent.mSummary);
                                    z2 = true;
                                    bool = Boolean.valueOf(z2);
                                    arrayMap.put(parent, bool);
                                }
                            }
                            for (NotificationEntry notificationEntry3 : parent.mUnmodifiableChildren) {
                                if (preparationCoordinator.mInflatingNotifs.contains(notificationEntry3) && !notificationEntry3.wasAttachedInPreviousPass()) {
                                    preparationCoordinatorLogger2.logDelayingGroupRelease(parent, notificationEntry3);
                                    z2 = true;
                                    break;
                                }
                            }
                            preparationCoordinatorLogger2.getClass();
                            LogLevel logLevel2 = LogLevel.DEBUG;
                            PreparationCoordinatorLogger$logDoneWaitingForGroupInflation$2 preparationCoordinatorLogger$logDoneWaitingForGroupInflation$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.coordinator.PreparationCoordinatorLogger$logDoneWaitingForGroupInflation$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return PathParser$$ExternalSyntheticOutline0.m("Finished inflating all members of group ", ((LogMessage) obj).getStr1(), ", releasing group");
                                }
                            };
                            LogBuffer logBuffer2 = preparationCoordinatorLogger2.buffer;
                            LogMessage obtain2 = logBuffer2.obtain("PreparationCoordinator", logLevel2, preparationCoordinatorLogger$logDoneWaitingForGroupInflation$2, null);
                            obtain2.setStr1(NotificationUtilsKt.getLogKey(parent));
                            logBuffer2.commit(obtain2);
                        }
                    }
                    z2 = false;
                    bool = Boolean.valueOf(z2);
                    arrayMap.put(parent, bool);
                }
                int inflationState2 = preparationCoordinator.getInflationState(notificationEntry);
                if (inflationState2 != 1 && inflationState2 != 2) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z || bool.booleanValue()) {
                    return true;
                }
                return false;
            }
        };
        this.mInflationErrorListener = new AnonymousClass4();
        this.mLogger = preparationCoordinatorLogger;
        this.mNotifInflater = notifInflater;
        this.mNotifErrorManager = notifInflationErrorManager;
        this.mViewBarn = notifViewBarn;
        this.mAdjustmentProvider = notifUiAdjustmentProvider;
        this.mStatusBarService = iStatusBarService;
        this.mChildBindCutoff = i;
        this.mMaxGroupInflationDelay = j;
        this.mBindEventManager = bindEventManagerImpl;
    }
}
