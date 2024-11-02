package com.android.systemui.statusbar;

import android.R;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserManager;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.ArrayMap;
import android.util.IndentingPrintWriter;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.RemoteViews;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.Dumpable;
import com.android.systemui.LsRune;
import com.android.systemui.NotiRune;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.statusbar.RemoteInputController;
import com.android.systemui.statusbar.notification.NotifPipelineFlags;
import com.android.systemui.statusbar.notification.RemoteInputControllerLogger;
import com.android.systemui.statusbar.notification.SubscreenNotificationController;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.coordinator.RemoteInputCoordinator;
import com.android.systemui.statusbar.notification.collection.provider.NotificationVisibilityProviderImpl;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.phone.StatusBarRemoteInputCallback;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.RemoteInputUriController;
import com.android.systemui.util.DumpUtilsKt;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.util.SystemUIAnalytics;
import dagger.Lazy;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationRemoteInputManager implements Dumpable {
    public static final boolean ENABLE_REMOTE_INPUT = SystemProperties.getBoolean("debug.enable_remote_input", true);
    public static final boolean FORCE_REMOTE_INPUT_HISTORY = SystemProperties.getBoolean("debug.force_remoteinput_history", false);
    public final ActivityManager mActivityManager;
    public Callback mCallback;
    public final Lazy mCentralSurfacesOptionalLazy;
    public final NotificationClickNotifier mClickNotifier;
    public final Context mContext;
    public final KeyguardManager mKeyguardManager;
    public final NotificationLockscreenUserManager mLockscreenUserManager;
    public final ActionClickLogger mLogger;
    public RemoteInputController mRemoteInputController;
    public final RemoteInputControllerLogger mRemoteInputControllerLogger;
    public RemoteInputCoordinator mRemoteInputListener;
    public final RemoteInputUriController mRemoteInputUriController;
    public final SmartReplyController mSmartReplyController;
    public final StatusBarStateController mStatusBarStateController;
    public final UserManager mUserManager;
    public final NotificationVisibilityProvider mVisibilityProvider;
    public final List mControllerCallbacks = new ArrayList();
    public final ListenerSet mActionPressListeners = new ListenerSet();
    public final AnonymousClass1 mInteractionHandler = new AnonymousClass1();
    public final IStatusBarService mBarService = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
    public final KeyguardStateController mKeyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.NotificationRemoteInputManager$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements RemoteViews.InteractionHandler {
        public AnonymousClass1() {
        }

        public static Notification.Action getActionFromView(View view, NotificationEntry notificationEntry, PendingIntent pendingIntent) {
            Integer num = (Integer) view.getTag(R.id.search_close_btn);
            if (num == null) {
                return null;
            }
            if (notificationEntry == null) {
                Log.w("NotifRemoteInputManager", "Couldn't determine notification for click.");
                return null;
            }
            StatusBarNotification statusBarNotification = notificationEntry.mSbn;
            Notification.Action[] actionArr = statusBarNotification.getNotification().actions;
            if (actionArr != null && num.intValue() < actionArr.length) {
                Notification.Action action = statusBarNotification.getNotification().actions[num.intValue()];
                if (!Objects.equals(action.actionIntent, pendingIntent)) {
                    Log.w("NotifRemoteInputManager", "actionIntent does not match");
                    return null;
                }
                return action;
            }
            Log.w("NotifRemoteInputManager", "statusBarNotification.getNotification().actions is null or invalid");
            return null;
        }

        public final boolean onInteraction(View view, final PendingIntent pendingIntent, RemoteViews.RemoteResponse remoteResponse) {
            String str;
            NotificationEntry notificationEntry;
            String str2;
            String str3;
            boolean z;
            RemoteInput[] remoteInputArr;
            boolean z2;
            boolean isAuthenticationRequired;
            int i;
            NotificationListenerService.Ranking ranking;
            NotificationChannel channel;
            ((Optional) NotificationRemoteInputManager.this.mCentralSurfacesOptionalLazy.get()).ifPresent(new NotificationRemoteInputManager$1$$ExternalSyntheticLambda0());
            ViewParent parent = view.getParent();
            while (true) {
                str = null;
                if (parent != null) {
                    if (parent instanceof ExpandableNotificationRow) {
                        notificationEntry = ((ExpandableNotificationRow) parent).mEntry;
                        break;
                    }
                    parent = parent.getParent();
                } else {
                    notificationEntry = null;
                    break;
                }
            }
            ActionClickLogger actionClickLogger = NotificationRemoteInputManager.this.mLogger;
            actionClickLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            ActionClickLogger$logInitialClick$2 actionClickLogger$logInitialClick$2 = new Function1() { // from class: com.android.systemui.statusbar.ActionClickLogger$logInitialClick$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    String str1 = logMessage.getStr1();
                    String str22 = logMessage.getStr2();
                    String str32 = logMessage.getStr3();
                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("ACTION CLICK ", str1, " (channel=", str22, ") for pending intent ");
                    m.append(str32);
                    return m.toString();
                }
            };
            LogBuffer logBuffer = actionClickLogger.buffer;
            LogMessage obtain = logBuffer.obtain("ActionClickLogger", logLevel, actionClickLogger$logInitialClick$2, null);
            if (notificationEntry != null) {
                str2 = notificationEntry.mKey;
            } else {
                str2 = null;
            }
            obtain.setStr1(str2);
            if (notificationEntry != null && (ranking = notificationEntry.mRanking) != null && (channel = ranking.getChannel()) != null) {
                str3 = channel.getId();
            } else {
                str3 = null;
            }
            obtain.setStr2(str3);
            obtain.setStr3(pendingIntent.getIntent().toString());
            logBuffer.commit(obtain);
            boolean z3 = false;
            if ((((StatusBarRemoteInputCallback) NotificationRemoteInputManager.this.mCallback).mDisabled2 & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                z2 = true;
            } else {
                Object tag = view.getTag(R.id.timePickerLayout);
                if (tag instanceof RemoteInput[]) {
                    remoteInputArr = (RemoteInput[]) tag;
                } else {
                    remoteInputArr = null;
                }
                if (remoteInputArr != null) {
                    RemoteInput remoteInput = null;
                    for (RemoteInput remoteInput2 : remoteInputArr) {
                        if (remoteInput2.getAllowFreeFormInput()) {
                            remoteInput = remoteInput2;
                        }
                    }
                    if (remoteInput != null) {
                        z2 = NotificationRemoteInputManager.this.activateRemoteInput(view, remoteInputArr, remoteInput, pendingIntent, null, null);
                    }
                }
                z2 = false;
            }
            if (z2) {
                if (notificationEntry != null) {
                    SystemUIAnalytics.sendEventCDLog("QPN001", "QPNE0010", "app", notificationEntry.mSbn.getPackageName());
                }
                ActionClickLogger actionClickLogger2 = NotificationRemoteInputManager.this.mLogger;
                actionClickLogger2.getClass();
                LogLevel logLevel2 = LogLevel.DEBUG;
                ActionClickLogger$logRemoteInputWasHandled$2 actionClickLogger$logRemoteInputWasHandled$2 = new Function1() { // from class: com.android.systemui.statusbar.ActionClickLogger$logRemoteInputWasHandled$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return PathParser$$ExternalSyntheticOutline0.m("  [Action click] Triggered remote input (for ", ((LogMessage) obj).getStr1(), "))");
                    }
                };
                LogBuffer logBuffer2 = actionClickLogger2.buffer;
                LogMessage obtain2 = logBuffer2.obtain("ActionClickLogger", logLevel2, actionClickLogger$logRemoteInputWasHandled$2, null);
                if (notificationEntry != null) {
                    str = notificationEntry.mKey;
                }
                obtain2.setStr1(str);
                logBuffer2.commit(obtain2);
                return true;
            }
            if (notificationEntry != null) {
                SystemUIAnalytics.sendEventCDLog("QPN001", "QPNE0009", "app", notificationEntry.mSbn.getPackageName());
            }
            Notification.Action actionFromView = getActionFromView(view, notificationEntry, pendingIntent);
            if (actionFromView != null) {
                ViewParent parent2 = view.getParent();
                String key = notificationEntry.mSbn.getKey();
                if (view.getId() == 16908724 && parent2 != null && (parent2 instanceof ViewGroup)) {
                    i = ((ViewGroup) parent2).indexOfChild(view);
                } else {
                    i = -1;
                }
                int i2 = i;
                NotificationVisibility obtain3 = ((NotificationVisibilityProviderImpl) NotificationRemoteInputManager.this.mVisibilityProvider).obtain(notificationEntry);
                NotificationClickNotifier notificationClickNotifier = NotificationRemoteInputManager.this.mClickNotifier;
                notificationClickNotifier.getClass();
                try {
                    notificationClickNotifier.barService.onNotificationActionClick(key, i2, actionFromView, obtain3, false);
                } catch (RemoteException unused) {
                }
                notificationClickNotifier.mainExecutor.execute(new NotificationClickNotifier$onNotificationActionClick$1(notificationClickNotifier, key));
            }
            try {
                ActivityManager.getService().resumeAppSwitches();
            } catch (RemoteException unused2) {
            }
            if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_FIFTH && pendingIntent.isActivity()) {
                SubscreenNotificationController subscreenNotificationController = (SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class);
                String creatorPackage = pendingIntent.getCreatorPackage();
                if (subscreenNotificationController.mDeviceModel.isSubScreen()) {
                    subscreenNotificationController.mDeviceModel.getClass();
                    if (ArraysKt___ArraysKt.contains(new String[]{"com.skt.prod.dialer", "com.samsung.android.incallui"}, creatorPackage)) {
                        Log.d("NotifRemoteInputManager", "handle call notification clicked. start activity directly on subscreen. pkg: ".concat(creatorPackage));
                        RemoteViews.startPendingIntent(view, pendingIntent, remoteResponse.getLaunchOptions(view));
                        return true;
                    }
                }
            }
            Notification.Action actionFromView2 = getActionFromView(view, notificationEntry, pendingIntent);
            Callback callback = NotificationRemoteInputManager.this.mCallback;
            if (actionFromView2 == null) {
                isAuthenticationRequired = false;
            } else {
                isAuthenticationRequired = actionFromView2.isAuthenticationRequired();
            }
            final NotificationRemoteInputManager$$ExternalSyntheticLambda1 notificationRemoteInputManager$$ExternalSyntheticLambda1 = new NotificationRemoteInputManager$$ExternalSyntheticLambda1(this, remoteResponse, view, notificationEntry, pendingIntent);
            final StatusBarRemoteInputCallback statusBarRemoteInputCallback = (StatusBarRemoteInputCallback) callback;
            statusBarRemoteInputCallback.getClass();
            if (!pendingIntent.isActivity() && !isAuthenticationRequired) {
                return notificationRemoteInputManager$$ExternalSyntheticLambda1.handleClick();
            }
            statusBarRemoteInputCallback.mActionClickLogger.logWaitingToCloseKeyguard(pendingIntent);
            if (statusBarRemoteInputCallback.mActivityIntentHelper.getPendingTargetActivityInfo(((NotificationLockscreenUserManagerImpl) statusBarRemoteInputCallback.mLockscreenUserManager).mCurrentUserId, pendingIntent) == null) {
                z3 = true;
            }
            if (LsRune.SECURITY_SWIPE_BOUNCER) {
                statusBarRemoteInputCallback.mStatusBarKeyguardViewManager.setShowSwipeBouncer(true);
            }
            statusBarRemoteInputCallback.mActivityStarter.dismissKeyguardThenExecute(new ActivityStarter.OnDismissAction() { // from class: com.android.systemui.statusbar.phone.StatusBarRemoteInputCallback$$ExternalSyntheticLambda0
                @Override // com.android.systemui.plugins.ActivityStarter.OnDismissAction
                public final boolean onDismiss() {
                    StatusBarRemoteInputCallback statusBarRemoteInputCallback2 = StatusBarRemoteInputCallback.this;
                    statusBarRemoteInputCallback2.mActionClickLogger.logKeyguardGone(pendingIntent);
                    try {
                        ActivityManager.getService().resumeAppSwitches();
                    } catch (RemoteException unused3) {
                    }
                    if (notificationRemoteInputManager$$ExternalSyntheticLambda1.handleClick()) {
                        ((ShadeControllerImpl) statusBarRemoteInputCallback2.mShadeController).closeShadeIfOpen();
                        return false;
                    }
                    return false;
                }
            }, null, z3);
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    public NotificationRemoteInputManager(Context context, NotifPipelineFlags notifPipelineFlags, NotificationLockscreenUserManager notificationLockscreenUserManager, SmartReplyController smartReplyController, NotificationVisibilityProvider notificationVisibilityProvider, Lazy lazy, StatusBarStateController statusBarStateController, RemoteInputUriController remoteInputUriController, RemoteInputControllerLogger remoteInputControllerLogger, NotificationClickNotifier notificationClickNotifier, ActionClickLogger actionClickLogger, DumpManager dumpManager) {
        this.mContext = context;
        this.mLockscreenUserManager = notificationLockscreenUserManager;
        this.mSmartReplyController = smartReplyController;
        this.mVisibilityProvider = notificationVisibilityProvider;
        this.mCentralSurfacesOptionalLazy = lazy;
        this.mLogger = actionClickLogger;
        this.mUserManager = (UserManager) context.getSystemService("user");
        this.mActivityManager = (ActivityManager) context.getSystemService("activity");
        this.mKeyguardManager = (KeyguardManager) context.getSystemService(KeyguardManager.class);
        this.mStatusBarStateController = statusBarStateController;
        this.mRemoteInputUriController = remoteInputUriController;
        this.mRemoteInputControllerLogger = remoteInputControllerLogger;
        this.mClickNotifier = notificationClickNotifier;
        dumpManager.registerDumpable(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x0097, code lost:
    
        if (r3.mSecure == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean activateRemoteInput(final android.view.View r15, final android.app.RemoteInput[] r16, final android.app.RemoteInput r17, final android.app.PendingIntent r18, final com.android.systemui.statusbar.notification.collection.NotificationEntry.EditedSuggestionInfo r19, final java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 758
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationRemoteInputManager.activateRemoteInput(android.view.View, android.app.RemoteInput[], android.app.RemoteInput, android.app.PendingIntent, com.android.systemui.statusbar.notification.collection.NotificationEntry$EditedSuggestionInfo, java.lang.String):boolean");
    }

    public final void addControllerCallback(RemoteInputController.Callback callback) {
        RemoteInputController remoteInputController = this.mRemoteInputController;
        if (remoteInputController != null) {
            remoteInputController.getClass();
            Objects.requireNonNull(callback);
            remoteInputController.mCallbacks.add(callback);
            return;
        }
        ((ArrayList) this.mControllerCallbacks).add(callback);
    }

    public final void closeRemoteInputs(boolean z) {
        RemoteInputController remoteInputController = this.mRemoteInputController;
        if (remoteInputController != null) {
            if (z) {
                remoteInputController.closeRemoteInputs(z);
            } else {
                remoteInputController.closeRemoteInputs(false);
            }
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        final PrintWriter asIndenting = DumpUtilsKt.asIndenting(printWriter);
        if (this.mRemoteInputController != null) {
            asIndenting.println("mRemoteInputController: " + this.mRemoteInputController);
            asIndenting.increaseIndent();
            final RemoteInputController remoteInputController = this.mRemoteInputController;
            remoteInputController.getClass();
            asIndenting.print("mLastAppliedRemoteInputActive: ");
            asIndenting.println(remoteInputController.mLastAppliedRemoteInputActive);
            asIndenting.print("isRemoteInputActive: ");
            asIndenting.println(remoteInputController.isRemoteInputActive$1());
            asIndenting.println("mOpen: " + remoteInputController.mOpen.size());
            final int i = 0;
            DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable() { // from class: com.android.systemui.statusbar.RemoteInputController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    switch (i) {
                        case 0:
                            RemoteInputController remoteInputController2 = remoteInputController;
                            IndentingPrintWriter indentingPrintWriter = asIndenting;
                            Iterator it = remoteInputController2.mOpen.iterator();
                            while (it.hasNext()) {
                                NotificationEntry notificationEntry = (NotificationEntry) ((WeakReference) ((Pair) it.next()).first).get();
                                if (notificationEntry == null) {
                                    str = "???";
                                } else {
                                    str = notificationEntry.mKey;
                                }
                                indentingPrintWriter.println(str);
                            }
                            return;
                        default:
                            RemoteInputController remoteInputController3 = remoteInputController;
                            IndentingPrintWriter indentingPrintWriter2 = asIndenting;
                            Iterator it2 = remoteInputController3.mSpinning.keySet().iterator();
                            while (it2.hasNext()) {
                                indentingPrintWriter2.println((String) it2.next());
                            }
                            return;
                    }
                }
            });
            StringBuilder sb = new StringBuilder("mSpinning: ");
            ArrayMap arrayMap = remoteInputController.mSpinning;
            sb.append(arrayMap.size());
            asIndenting.println(sb.toString());
            final int i2 = 1;
            DumpUtilsKt.withIncreasedIndent(asIndenting, new Runnable() { // from class: com.android.systemui.statusbar.RemoteInputController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    switch (i2) {
                        case 0:
                            RemoteInputController remoteInputController2 = remoteInputController;
                            IndentingPrintWriter indentingPrintWriter = asIndenting;
                            Iterator it = remoteInputController2.mOpen.iterator();
                            while (it.hasNext()) {
                                NotificationEntry notificationEntry = (NotificationEntry) ((WeakReference) ((Pair) it.next()).first).get();
                                if (notificationEntry == null) {
                                    str = "???";
                                } else {
                                    str = notificationEntry.mKey;
                                }
                                indentingPrintWriter.println(str);
                            }
                            return;
                        default:
                            RemoteInputController remoteInputController3 = remoteInputController;
                            IndentingPrintWriter indentingPrintWriter2 = asIndenting;
                            Iterator it2 = remoteInputController3.mSpinning.keySet().iterator();
                            while (it2.hasNext()) {
                                indentingPrintWriter2.println((String) it2.next());
                            }
                            return;
                    }
                }
            });
            asIndenting.println(arrayMap);
            asIndenting.print("mDelegate: ");
            asIndenting.println(remoteInputController.mDelegate);
            asIndenting.decreaseIndent();
        }
        RemoteInputCoordinator remoteInputCoordinator = this.mRemoteInputListener;
        if (remoteInputCoordinator instanceof Dumpable) {
            asIndenting.println("mRemoteInputListener: ".concat(remoteInputCoordinator.getClass().getSimpleName()));
            asIndenting.increaseIndent();
            this.mRemoteInputListener.dump(asIndenting, strArr);
            asIndenting.decreaseIndent();
        }
    }

    public final boolean isNotificationKeptForRemoteInputHistory(String str) {
        boolean z;
        RemoteInputCoordinator remoteInputCoordinator = this.mRemoteInputListener;
        if (remoteInputCoordinator == null) {
            return false;
        }
        if (!remoteInputCoordinator.mRemoteInputHistoryExtender.isExtending(str) && !remoteInputCoordinator.mSmartReplyHistoryExtender.isExtending(str)) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isRemoteInputActive() {
        RemoteInputController remoteInputController = this.mRemoteInputController;
        if (remoteInputController != null && remoteInputController.isRemoteInputActive$1()) {
            return true;
        }
        return false;
    }

    public final void startAppLockCheckService(String str) {
        Intent intent = new Intent("com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE");
        intent.setPackage("com.samsung.android.applock");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.flags |= 524288;
        intent.putExtra("LOCKED_PACKAGE_WINDOW_ATTRIBUTES", layoutParams);
        intent.putExtra("LAUNCH_FROM_RESUME", true);
        intent.putExtra("LOCKED_APP_CAN_SHOW_WHEN_LOCKED", true);
        intent.putExtra("LOCKED_PACKAGE_NAME", str);
        intent.putExtra("startFromNotification", true);
        intent.putExtra("LOCKED_PACKAGE_DISPLAYID", 0);
        this.mContext.startService(intent);
    }
}
