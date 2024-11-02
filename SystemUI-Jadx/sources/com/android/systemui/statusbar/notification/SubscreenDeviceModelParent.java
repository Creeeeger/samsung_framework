package com.android.systemui.statusbar.notification;

import android.animation.Animator;
import android.app.ActivityManager;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.UserInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.UserManager;
import android.service.notification.StatusBarNotification;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.ArraySet;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.DateTimeView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.internal.util.ContrastColorUtil;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfo;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotifCollection$$ExternalSyntheticLambda6;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.GroupMembershipManager;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.phone.StatusBarNotificationActivityStarter;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.android.systemui.util.wakelock.SettableWakeLock;
import com.android.systemui.util.wakelock.WakeLock;
import com.android.wm.shell.bubbles.BubbleController;
import com.android.wm.shell.bubbles.Bubbles;
import com.samsung.android.edge.SemEdgeManager;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import noticolorpicker.NotificationColorPicker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubscreenDeviceModelParent {
    public ActivityManager activityManager;
    public NotificationEntry currentPopupViewEntry;
    public NotificationEntry currentPresentationEntry;
    public NotificationEntry mBubbleReplyEntry;
    public final LogBuffer mBuffer;
    public FrameLayout mCallFullPopupBacgroundView;
    public final Context mContext;
    public final SubscreenNotificationController mController;
    public Context mDisplayContext;
    public SemEdgeManager mEdgeManager;
    public final NotificationInterruptStateProvider mInterruptionStateProvider;
    public boolean mIsChangedToFoldState;
    public boolean mIsCovered;
    public boolean mIsFlexMode;
    public boolean mIsFolded;
    public boolean mIsFullscreenFullPopupWindowClosing;
    public boolean mIsKeyguardStateWhenAddLockscreenNotificationInfoArray;
    public boolean mIsNotificationRemoved;
    public boolean mIsRemoving;
    public boolean mIsReplyNotification;
    public boolean mIsUpdatedAllMainList;
    public KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public int mListAdapterItemPosition;
    public Animator mMainViewAnimator;
    public int mNotiPopupType;
    public View mNotiPopupView;
    public final CommonNotifCollection mNotifCollection;
    public NotificationActivityStarter mNotificationActivityStarter;
    public PowerManager mPowerManager;
    public SubscreenNotificationPresentation mPresentation;
    public SettableWakeLock mScreenOnwakelock;
    public final SettingsHelper mSettingsHelper;
    public Display mSubDisplay;
    public SubscreenSubRoomNotification mSubRoomNotification;
    public final Lazy mSubScreenManagerLazy;
    public final UserContextProvider mUserContextProvider;
    public final UserManager mUserManager;
    public WindowManager mWindowManager;
    public boolean notiFullPopupBlocked;
    public boolean notiShowBlocked;
    public SubscreenNotificationTemplate popupViewNotiTemplate;
    public boolean popupViewShowing;
    public SubscreenDeviceModelParent$initTimeoutRunnable$2 popupViewTimeoutRunnable;
    public SubscreenNotificationDetail presentationNotiTemplate;
    public boolean presentationShowing;
    public SubscreenDeviceModelParent$initTimeoutRunnable$1 presentationTimeoutRunnable;
    public int bModeUserId = -1;
    public int currentUserId = ActivityManager.getCurrentUser();
    public final Handler mHandler = new Handler();
    public final LinkedHashMap mFullScreenIntentEntries = new LinkedHashMap();
    public final HashSet mNotiKeySet = new HashSet();
    public final LinkedHashMap mMainListArrayHashMap = new LinkedHashMap();
    public final LinkedHashMap mMainListUpdateItemHashMap = new LinkedHashMap();
    public final LinkedHashMap mMainListAddEntryHashMap = new LinkedHashMap();
    public final LinkedHashMap mMainListRemoveEntryHashMap = new LinkedHashMap();
    public final GroupMembershipManager mGroupMembershipManager = (GroupMembershipManager) Dependency.get(GroupMembershipManager.class);
    public final SubscreenDeviceModelParent$marqueeStartRunnable$1 marqueeStartRunnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$marqueeStartRunnable$1
        @Override // java.lang.Runnable
        public final void run() {
            TextView textView;
            SubscreenNotificationTemplate subscreenNotificationTemplate = SubscreenDeviceModelParent.this.popupViewNotiTemplate;
            if (subscreenNotificationTemplate != null && (textView = subscreenNotificationTemplate.mMarqueeText) != null) {
                textView.setSelected(true);
            }
        }
    };
    public final SubscreenDeviceModelParent$topPopupAnimationListener$1 topPopupAnimationListener = new Animator.AnimatorListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$topPopupAnimationListener$1
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
            Log.d("S.S.N.", " topPopupAnimationListener - onAnimationEnd , mNotiPopupView : " + subscreenDeviceModelParent.mNotiPopupView + ", popupViewNotiTemplate : " + subscreenDeviceModelParent.popupViewNotiTemplate);
            View view = SubscreenDeviceModelParent.this.mNotiPopupView;
            if (view != null) {
                if (view != null) {
                    view.setVisibility(4);
                }
                SubscreenDeviceModelParent subscreenDeviceModelParent2 = SubscreenDeviceModelParent.this;
                WindowManager windowManager = subscreenDeviceModelParent2.mWindowManager;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(subscreenDeviceModelParent2.mNotiPopupView);
                }
            }
            SubscreenDeviceModelParent subscreenDeviceModelParent3 = SubscreenDeviceModelParent.this;
            subscreenDeviceModelParent3.mNotiPopupView = null;
            subscreenDeviceModelParent3.popupViewNotiTemplate = null;
            subscreenDeviceModelParent3.currentPopupViewEntry = null;
            subscreenDeviceModelParent3.popupViewShowing = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    };
    public final ArraySet showPopupEntryKeySet = new ArraySet();
    public final SubscreenDeviceModelParent$mWakefulnessObserver$1 mWakefulnessObserver = new WakefulnessLifecycle.Observer() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$mWakefulnessObserver$1
        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onFinishedGoingToSleep() {
            Log.d("S.S.N.", " onFinishedGoingToSleep");
            SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
            if (subscreenDeviceModelParent.popupViewShowing) {
                Log.d("S.S.N.", " onFinishedGoingToSleep and HUN is showing, so dismiss it");
                subscreenDeviceModelParent.dismissImmediately(2);
            }
            if (subscreenDeviceModelParent.presentationShowing && subscreenDeviceModelParent.isDismissiblePopup()) {
                Log.d("S.S.N.", " onFinishedGoingToSleep and PRESENTATION is showing, so dismiss it");
                subscreenDeviceModelParent.dismissImmediately(1);
            }
            if (subscreenDeviceModelParent.showPopupEntryKeySet.size() > 0) {
                ListPopupWindow$$ExternalSyntheticOutline0.m(" onFinishedGoingToSleep - clear popup key set : ", subscreenDeviceModelParent.showPopupEntryKeySet.size(), "S.S.N.");
                subscreenDeviceModelParent.showPopupEntryKeySet.clear();
            }
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onStartedGoingToSleep() {
            SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter;
            SubscreenNotificationInfo subscreenNotificationInfo;
            ExpandableNotificationRow expandableNotificationRow;
            SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
            if (subscreenDeviceModelParent.isSubScreen()) {
                Log.d("S.S.N.", " onStartedGoingToSleep");
                if (subscreenDeviceModelParent.isShownDetail()) {
                    subscreenDeviceModelParent.hideDetailNotification();
                    SubscreenNotificationReplyActivity subscreenNotificationReplyActivity = subscreenDeviceModelParent.mController.replyActivity;
                    if (subscreenNotificationReplyActivity != null) {
                        subscreenNotificationReplyActivity.finish();
                    }
                }
                if (subscreenDeviceModelParent.isShownGroup()) {
                    SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelParent.mSubRoomNotification;
                    boolean z = false;
                    if (subscreenSubRoomNotification != null && (subscreenNotificationGroupAdapter = subscreenSubRoomNotification.mNotificationGroupAdapter) != null && (subscreenNotificationInfo = subscreenNotificationGroupAdapter.mSummaryInfo) != null && (expandableNotificationRow = subscreenNotificationInfo.mRow) != null && expandableNotificationRow.needsRedaction()) {
                        z = true;
                    }
                    if (z) {
                        subscreenDeviceModelParent.hideGroupNotification();
                    }
                }
            }
        }

        @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
        public final void onStartedWakingUp() {
            int i = ((WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class)).mLastWakeReason;
            ListPopupWindow$$ExternalSyntheticOutline0.m(" onStartedWakingUp - why: ", i, "S.S.N.");
            if (i == 6 || i == 15 || i == 113) {
                SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
                if (subscreenDeviceModelParent.mPresentation != null && !subscreenDeviceModelParent.useTopPresentation()) {
                    subscreenDeviceModelParent.updateContentScroll();
                    SubscreenNotificationDetail subscreenNotificationDetail = subscreenDeviceModelParent.presentationNotiTemplate;
                    if (subscreenNotificationDetail != null) {
                        subscreenNotificationDetail.performClick();
                    }
                }
            }
        }
    };
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$mUpdateMonitorCallback$1
        @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
        public final void onUserSwitchComplete(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("onUserSwitchComplete : ", i, "S.S.N.");
            SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
            subscreenDeviceModelParent.updateNotiShowBlocked();
            subscreenDeviceModelParent.currentUserId = i;
            subscreenDeviceModelParent.updateBModeStatus();
            subscreenDeviceModelParent.updateSamsungAccount();
        }
    };

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
    public final class MainListHashMapItem {
        public NotificationEntry mEntry;
        public SubscreenNotificationInfo mInfo;
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$marqueeStartRunnable$1] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$topPopupAnimationListener$1] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$mWakefulnessObserver$1] */
    public SubscreenDeviceModelParent(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, UserContextProvider userContextProvider, SubscreenNotificationController subscreenNotificationController, Lazy lazy, CommonNotifCollection commonNotifCollection, LogBuffer logBuffer, NotificationInterruptStateProvider notificationInterruptStateProvider, Lazy lazy2, Lazy lazy3, NotificationVisibilityProvider notificationVisibilityProvider, BindEventManager bindEventManager, NotificationController notificationController, UserManager userManager, ConversationNotificationManager conversationNotificationManager) {
        this.mContext = context;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mSettingsHelper = settingsHelper;
        this.mUserContextProvider = userContextProvider;
        this.mController = subscreenNotificationController;
        this.mSubScreenManagerLazy = lazy;
        this.mNotifCollection = commonNotifCollection;
        this.mBuffer = logBuffer;
        this.mInterruptionStateProvider = notificationInterruptStateProvider;
        this.mUserManager = userManager;
    }

    public static boolean isOnlyGroupSummary(NotificationEntry notificationEntry) {
        NotificationChildrenContainer notificationChildrenContainer = notificationEntry.row.mChildrenContainer;
        if (notificationEntry.mSbn.getNotification().isGroupSummary() && (notificationChildrenContainer == null || notificationChildrenContainer.getNotificationChildCount() == 0)) {
            return true;
        }
        return false;
    }

    public static void updateKnoxIcon(ImageView imageView, SubscreenNotificationInfo subscreenNotificationInfo) {
        if (imageView != null && subscreenNotificationInfo != null) {
            Drawable drawable = subscreenNotificationInfo.mKnoxBadgeDrawable;
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                imageView.setImageDrawable(drawable);
            }
        }
    }

    public static void updateTwoPhoneIcon(ImageView imageView, SubscreenNotificationInfo subscreenNotificationInfo) {
        if (imageView != null && subscreenNotificationInfo != null) {
            if (subscreenNotificationInfo.mNeedsOnePhoneIcon) {
                Log.d("S.S.N.", "set sim_1 icon: " + subscreenNotificationInfo.mKey);
                imageView.setImageResource(R.drawable.subscreen_stat_notify_multi_sim_1);
                imageView.setVisibility(0);
                return;
            }
            if (subscreenNotificationInfo.mNeedsTwoPhoneIcon) {
                Log.d("S.S.N.", "set sim_2 icon: " + subscreenNotificationInfo.mKey);
                imageView.setImageResource(R.drawable.subscreen_stat_notify_multi_sim_2);
                imageView.setVisibility(0);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public void bindImageBitmap(ImageView imageView, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        imageView.setImageBitmap(bitmap);
    }

    public final boolean checkBubbleLastHistoryReply(NotificationEntry notificationEntry) {
        String str;
        SubscreenNotificationInfo subscreenNotificationInfo;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        if (this.mBubbleReplyEntry != null && notificationEntry.canBubble()) {
            NotificationEntry notificationEntry2 = this.mBubbleReplyEntry;
            ArrayList arrayList = null;
            if (notificationEntry2 != null) {
                str = notificationEntry2.mKey;
            } else {
                str = null;
            }
            if (notificationEntry.mKey.equals(str)) {
                SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
                if (subscreenSubRoomNotification != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification.mNotificationInfoManager) != null) {
                    subscreenNotificationInfo = subscreenNotificationInfoManager.createItemsData(notificationEntry.row);
                } else {
                    subscreenNotificationInfo = null;
                }
                if (subscreenNotificationInfo != null) {
                    arrayList = subscreenNotificationInfo.mMessageingStyleInfoArray;
                }
                Intrinsics.checkNotNull(arrayList);
                if (!this.mController.useHistory(notificationEntry) || (arrayList.size() > 0 && ((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(arrayList.size() - 1)).mIsReply)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public final void clearMainList() {
        Log.d("S.S.N.", " clearMainList");
        this.mMainListArrayHashMap.clear();
        this.mMainListUpdateItemHashMap.clear();
        this.mMainListAddEntryHashMap.clear();
        if (!this.mIsNotificationRemoved) {
            this.mMainListRemoveEntryHashMap.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void detailClicked(final com.android.systemui.statusbar.notification.collection.NotificationEntry r6) {
        /*
            r5 = this;
            boolean r0 = r5.skipDetailClicked(r6)
            if (r0 == 0) goto L7
            return
        L7:
            r0 = 0
            r1 = 0
            if (r6 == 0) goto L8a
            boolean r2 = r5.launchApp(r6)
            if (r2 != 0) goto L8a
            boolean r2 = r5.isShownDetail()
            r3 = 1
            if (r2 == 0) goto L3e
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r2 = r5.mSubRoomNotification
            if (r2 == 0) goto L23
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r4 = r2.mNotificationDetailAdapter
            if (r4 == 0) goto L23
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r4 = r4.mSelectNotificationInfo
            goto L24
        L23:
            r4 = r1
        L24:
            if (r4 == 0) goto L3e
            if (r2 == 0) goto L33
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r2 = r2.mNotificationDetailAdapter
            if (r2 == 0) goto L33
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r2 = r2.mSelectNotificationInfo
            if (r2 == 0) goto L33
            java.lang.String r2 = r2.mKey
            goto L34
        L33:
            r2 = r1
        L34:
            java.lang.String r4 = r6.mKey
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L3e
            r2 = r3
            goto L3f
        L3e:
            r2 = r0
        L3f:
            dagger.Lazy r4 = r5.mSubScreenManagerLazy
            if (r2 == 0) goto L65
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r2 = r5.mSubRoomNotification
            if (r2 == 0) goto L4a
            r2.notifyNotificationSubRoomRequest()
        L4a:
            java.lang.Object r2 = r4.get()
            com.android.systemui.subscreen.SubScreenManager r2 = (com.android.systemui.subscreen.SubScreenManager) r2
            r2.startSubHomeActivity()
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r2 = r5.mSubRoomNotification
            if (r2 == 0) goto L8a
            com.android.systemui.statusbar.notification.SubscreenRecyclerView r2 = r2.mNotificationRecyclerView
            if (r2 == 0) goto L8a
            android.view.View r2 = r2.getChildAt(r0)
            if (r2 == 0) goto L8a
            r5.moveDetailAdapterContentScroll(r2, r0, r0, r3)
            goto L8a
        L65:
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r2 = r5.mSubRoomNotification
            if (r2 == 0) goto L72
            com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r3 = r6.row
            com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager r2 = r2.mNotificationInfoManager
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r2 = r2.createItemsData(r3)
            goto L73
        L72:
            r2 = r1
        L73:
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r3 = r5.mSubRoomNotification
            if (r3 == 0) goto L7a
            r3.notifyNotificationSubRoomRequest()
        L7a:
            java.lang.Object r3 = r4.get()
            com.android.systemui.subscreen.SubScreenManager r3 = (com.android.systemui.subscreen.SubScreenManager) r3
            r3.startSubHomeActivity()
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r3 = r5.mSubRoomNotification
            if (r3 == 0) goto L8a
            r3.showDetailNotification(r2)
        L8a:
            boolean r2 = r5.isCoverBriefAllowed(r6)
            if (r2 != 0) goto Lb1
            android.os.Handler r2 = r5.mHandler
            com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$detailClicked$2 r3 = new com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$detailClicked$2
            r3.<init>()
            if (r6 == 0) goto L9c
            java.lang.String r6 = r6.mKey
            goto L9d
        L9c:
            r6 = r1
        L9d:
            com.android.systemui.statusbar.notification.collection.NotificationEntry r5 = r5.currentPresentationEntry
            if (r5 == 0) goto La3
            java.lang.String r1 = r5.mKey
        La3:
            boolean r5 = kotlin.text.StringsKt__StringsJVMKt.equals(r6, r1, r0)
            if (r5 == 0) goto Lac
            r5 = 300(0x12c, double:1.48E-321)
            goto Lae
        Lac:
            r5 = 0
        Lae:
            r2.postDelayed(r3, r5)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent.detailClicked(com.android.systemui.statusbar.notification.collection.NotificationEntry):void");
    }

    public final void dismissImmediately(int i) {
        View view;
        Animator popUpViewDismissAnimator;
        boolean z = this.popupViewShowing;
        boolean z2 = this.presentationShowing;
        View view2 = this.mNotiPopupView;
        SubscreenNotificationPresentation subscreenNotificationPresentation = this.mPresentation;
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m(" DISMISS IMMEDIATELY(popupType) - popupViewShowing : ", z, ", presentationShowing : ", z2, ", mNotiPopupView : ");
        m.append(view2);
        m.append(", mPresentation : ");
        m.append(subscreenNotificationPresentation);
        m.append(", popupType : ");
        RecyclerView$$ExternalSyntheticOutline0.m(m, i, "S.S.N.");
        Handler handler = this.mHandler;
        handler.removeCallbacks(this.marqueeStartRunnable);
        if (i == 2) {
            SubscreenDeviceModelParent$initTimeoutRunnable$2 subscreenDeviceModelParent$initTimeoutRunnable$2 = this.popupViewTimeoutRunnable;
            if (subscreenDeviceModelParent$initTimeoutRunnable$2 == null) {
                subscreenDeviceModelParent$initTimeoutRunnable$2 = null;
            }
            handler.removeCallbacks(subscreenDeviceModelParent$initTimeoutRunnable$2);
            if (this.popupViewShowing && (view = this.mNotiPopupView) != null && (popUpViewDismissAnimator = getPopUpViewDismissAnimator(view)) != null) {
                popUpViewDismissAnimator.start();
            }
            if (this.mPresentation == null) {
                updateWakeLock(false, false);
            }
        }
        if (i == 1) {
            this.mIsRemoving = false;
            SubscreenDeviceModelParent$initTimeoutRunnable$1 subscreenDeviceModelParent$initTimeoutRunnable$1 = this.presentationTimeoutRunnable;
            handler.removeCallbacks(subscreenDeviceModelParent$initTimeoutRunnable$1 != null ? subscreenDeviceModelParent$initTimeoutRunnable$1 : null);
            SubscreenNotificationPresentation subscreenNotificationPresentation2 = this.mPresentation;
            if (subscreenNotificationPresentation2 != null) {
                subscreenNotificationPresentation2.dismiss();
            }
        }
        this.mNotiPopupType = 0;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public void foldStateChanged(boolean z) {
        String str;
        NotificationActivityStarter notificationActivityStarter;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager2;
        NotificationActivityStarter notificationActivityStarter2;
        if (z) {
            str = "FOLD ";
        } else {
            str = "UNFOLD ";
        }
        Log.d("S.S.N.", " FOLD STATE parent- ".concat(str));
        if (!z) {
            if (NotiRune.NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT && (notificationActivityStarter2 = this.mNotificationActivityStarter) != null) {
                StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) notificationActivityStarter2;
                statusBarNotificationActivityStarter.mShouldSkipFullScreenIntent = false;
                NotificationEntry notificationEntry = statusBarNotificationActivityStarter.mPendingFullscreenEntry;
                if (notificationEntry != null && notificationEntry.mSbn.getNotification().fullScreenIntent != null) {
                    statusBarNotificationActivityStarter.launchFullScreenIntent(statusBarNotificationActivityStarter.mPendingFullscreenEntry);
                    statusBarNotificationActivityStarter.mPendingFullscreenEntry = null;
                }
            }
            LinkedHashMap linkedHashMap = this.mFullScreenIntentEntries;
            if (linkedHashMap.size() > 0) {
                Log.d("S.S.N.", " foldStateChanged - clear mFullScreenIntentEntries");
                linkedHashMap.clear();
            }
            SubscreenNotificationPresentation subscreenNotificationPresentation = this.mPresentation;
            Handler handler = this.mHandler;
            if (subscreenNotificationPresentation != null) {
                Log.d("S.S.N.", " foldStateChanged - dismiss Presentation");
                SubscreenDeviceModelParent$initTimeoutRunnable$1 subscreenDeviceModelParent$initTimeoutRunnable$1 = this.presentationTimeoutRunnable;
                if (subscreenDeviceModelParent$initTimeoutRunnable$1 == null) {
                    subscreenDeviceModelParent$initTimeoutRunnable$1 = null;
                }
                handler.removeCallbacks(subscreenDeviceModelParent$initTimeoutRunnable$1);
                SubscreenNotificationPresentation subscreenNotificationPresentation2 = this.mPresentation;
                if (subscreenNotificationPresentation2 != null) {
                    subscreenNotificationPresentation2.dismiss();
                }
            }
            if (this.mNotiPopupView != null) {
                Log.d("S.S.N.", " foldStateChanged - remove top popup window");
                WindowManager windowManager = this.mWindowManager;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.mNotiPopupView);
                }
                this.mNotiPopupView = null;
                this.currentPopupViewEntry = null;
                SubscreenDeviceModelParent$initTimeoutRunnable$2 subscreenDeviceModelParent$initTimeoutRunnable$2 = this.popupViewTimeoutRunnable;
                if (subscreenDeviceModelParent$initTimeoutRunnable$2 == null) {
                    subscreenDeviceModelParent$initTimeoutRunnable$2 = null;
                }
                handler.removeCallbacks(subscreenDeviceModelParent$initTimeoutRunnable$2);
                this.popupViewNotiTemplate = null;
                this.popupViewShowing = false;
            }
            ArraySet arraySet = this.showPopupEntryKeySet;
            if (arraySet.size() > 0) {
                Log.d("S.S.N.", " foldStateChanged - clear popup key set : " + arraySet.size());
                arraySet.clear();
            }
            clearMainList();
            SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            String str2 = "SubscreenNotificationInfoManager";
            if (subscreenSubRoomNotification != null && (subscreenNotificationInfoManager2 = subscreenSubRoomNotification.mNotificationInfoManager) != null) {
                Log.d("SubscreenNotificationInfoManager", " clearArrayListAll");
                subscreenNotificationInfoManager2.clearAllRecyclerViewItem();
                subscreenNotificationInfoManager2.mGroupDataArray.clear();
                SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.clear();
                subscreenNotificationInfoManager2.mNotificationListAdapter.notifyDataSetChanged();
                subscreenNotificationInfoManager2.mNotificationGroupAdapter.notifyDataSetChanged();
                subscreenNotificationInfoManager2.mNotificationDetailAdapter.notifyDataSetChanged();
            }
            SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
            if (subscreenSubRoomNotification2 != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification2.mNotificationInfoManager) != null) {
                int notificationInfoArraySize = SubscreenNotificationInfoManager.getNotificationInfoArraySize();
                for (int i = 0; i < notificationInfoArraySize; i++) {
                    NotificationEntry notificationEntry2 = ((LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i)).mRow.mEntry;
                    if (notificationEntry2.canBubble()) {
                        NotifCollection notifCollection = subscreenNotificationInfoManager.mNotifCollection;
                        notifCollection.getClass();
                        notifCollection.mMainHandler.post(new NotifCollection$$ExternalSyntheticLambda6(notificationEntry2.mSbn, notifCollection, str2, "Update the bubble notification in the subscreen state"));
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (NotiRune.NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT && (notificationActivityStarter = this.mNotificationActivityStarter) != null) {
            ((StatusBarNotificationActivityStarter) notificationActivityStarter).mShouldSkipFullScreenIntent = true;
        }
    }

    public int getDetailAdapterAutoScrollCurrentPositionByReceive(View view) {
        return 0;
    }

    public int getDetailAdapterContentViewResource() {
        return -1;
    }

    public View getDetailAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        return null;
    }

    public int getDetailAdapterReplyWordResource() {
        return -1;
    }

    public ImageView.ScaleType getDetailContentImageScaleType() {
        return ImageView.ScaleType.FIT_CENTER;
    }

    public int getDispalyHeight() {
        return -1;
    }

    public int getFullPopupWindowType() {
        return 2026;
    }

    public View getGroupAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        return null;
    }

    public int getLayoutInDisplayCutoutMode() {
        return 0;
    }

    public int getListAdapterGroupItemResource() {
        return -1;
    }

    public View getListAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        return null;
    }

    public final Context getMDisplayContext() {
        Context context = this.mDisplayContext;
        if (context != null) {
            return context;
        }
        return null;
    }

    public int getMainHeaderViewHeight() {
        return 0;
    }

    public Animator getPopUpViewDismissAnimator(View view) {
        return null;
    }

    public Animator getPopUpViewShowAnimator(View view) {
        return null;
    }

    public View getReplyButtonView() {
        return null;
    }

    public int getSelectedReplyBGColor() {
        return -1;
    }

    public boolean getSubIconVisible(boolean z, boolean z2) {
        return true;
    }

    public final SubscreenSubRoomNotification getSubRoomNotification() {
        if (this.mSubRoomNotification == null) {
            this.mSubRoomNotification = SubscreenSubRoomNotification.getInstance(getMDisplayContext());
        }
        return this.mSubRoomNotification;
    }

    public int getSubscreenNotificationTipResource() {
        return -1;
    }

    public final String getTopActivityName() {
        List<ActivityManager.RunningTaskInfo> list;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        try {
            ActivityManager activityManager = this.activityManager;
            String str = null;
            if (activityManager != null) {
                list = activityManager.getRunningTasks(1);
            } else {
                list = null;
            }
            if (list != null && (runningTaskInfo = list.get(0)) != null && (componentName = runningTaskInfo.topActivity) != null) {
                str = componentName.getClassName();
            }
            if (str == null) {
                return "";
            }
            return str;
        } catch (SecurityException unused) {
            Log.e("S.S.N.", "SecurityException while get top activity");
            return "";
        }
    }

    public WindowManager.LayoutParams getTopPopupLp() {
        return null;
    }

    public Animator getTopPresentationDismissAnimator(View view) {
        return null;
    }

    public final void hideDetailNotification() {
        hideDetailNotificationAnimated(300, true);
    }

    public final void hideDetailNotificationAnimated(int i, boolean z) {
        Animator animator;
        if (z) {
            this.mIsUpdatedAllMainList = true;
        }
        setIsReplySendButtonLoading();
        if (this.mMainViewAnimator == null) {
            Log.d("S.S.N.", "hideDetailNotificationAnimated start animtion");
            final SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null) {
                animator = subscreenSubRoomNotification.mNotificationAnimatorManager.alphaAnimatedMainView(subscreenSubRoomNotification.mSubscreenMainLayout, new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$hideDetailNotificationAnimated$1$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION) {
                            SubscreenDeviceModelParent.this.mController.hideDetailNotif();
                        }
                        subscreenSubRoomNotification.hideDetailNotification();
                    }
                }, i);
            } else {
                animator = null;
            }
            this.mMainViewAnimator = animator;
            return;
        }
        Log.d("S.S.N.", "hideDetailNotificationAnimated already animtion");
        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION) {
            this.mController.hideDetailNotif();
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
        if (subscreenSubRoomNotification2 != null) {
            subscreenSubRoomNotification2.hideDetailNotification();
        }
    }

    public final void hideGroupNotification() {
        Animator animator;
        this.mIsUpdatedAllMainList = true;
        if (this.mMainViewAnimator == null) {
            Log.d("S.S.N.", "hideGroupNotificationAnimated start animtion");
            final SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null) {
                subscreenSubRoomNotification.mIsShownGroup = false;
                animator = subscreenSubRoomNotification.mNotificationAnimatorManager.alphaAnimatedMainView(subscreenSubRoomNotification.mSubscreenMainLayout, new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$hideGroupNotificationAnimated$1$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscreenSubRoomNotification.this.hideGroupNotification();
                    }
                }, 300);
            } else {
                animator = null;
            }
            this.mMainViewAnimator = animator;
            return;
        }
        Log.d("S.S.N.", "hideGroupNotificationAnimated already animtion");
        SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
        if (subscreenSubRoomNotification2 != null) {
            subscreenSubRoomNotification2.hideGroupNotification();
        }
    }

    public ImageView initDetailAdapterBackButton(View view) {
        return null;
    }

    public void initDetailAdapterItemViewHolder(Context context, final SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, final SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        itemViewHolder.mAdapter = subscreenNotificationDetailAdapter;
        itemViewHolder.mOpenAppButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubscreenNotificationInfo subscreenNotificationInfo = SubscreenNotificationDetailAdapter.ItemViewHolder.this.mInfo;
                String str = subscreenNotificationInfo.mKey;
                String str2 = subscreenNotificationInfo.mPkg;
                String str3 = subscreenNotificationInfo.mAppName;
                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Click BodyLayout Key: ", str, ", mInfo.getPkg()", str2, ", mInfo.getAppName() ");
                m.append(str3);
                Log.e("SubscreenNotificationDetailAdapter", m.toString());
                subscreenNotificationDetailAdapter.getClass();
                SubscreenParentDetailItemViewHolder subscreenParentDetailItemViewHolder = SubscreenNotificationDetailAdapter.ItemViewHolder.this;
                subscreenParentDetailItemViewHolder.startWaitState(subscreenNotificationDetailAdapter, subscreenParentDetailItemViewHolder);
                SystemUIAnalytics.sendEventLog("QPN102", "QPNE0204");
            }
        });
    }

    public void initDisplay() {
        Context context = this.mContext;
        Display[] displays = ((DisplayManager) context.getSystemService("display")).getDisplays("com.samsung.android.hardware.display.category.BUILTIN");
        if (displays.length > 1) {
            Display display = displays[1];
            this.mSubDisplay = display;
            this.mDisplayContext = context.createDisplayContext(display);
        } else {
            this.mDisplayContext = context;
            ListPopupWindow$$ExternalSyntheticOutline0.m("Parent - fail to get subDisplay, display list size is ", displays.length, "S.S.N.");
        }
    }

    public void initGroupAdapterHeaderViewHolder(Context context, View view, SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter, SubscreenNotificationGroupAdapter.HeaderViewHolder headerViewHolder) {
        headerViewHolder.mIcon = (ImageView) view.findViewById(R.id.subscreen_header_icon);
        headerViewHolder.mAppName = (TextView) view.findViewById(R.id.subscreen_header_app_name);
        headerViewHolder.mTwoPhoneIcon = (ImageView) view.findViewById(R.id.two_phone_icon);
        headerViewHolder.mSecureIcon = (ImageView) view.findViewById(R.id.secure_icon);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initTimeoutRunnable$1] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initTimeoutRunnable$2] */
    public void initialize() {
        PowerManager.WakeLock wakeLock;
        Context context = this.mContext;
        this.mEdgeManager = (SemEdgeManager) context.getSystemService("edge");
        this.activityManager = (ActivityManager) context.getSystemService("activity");
        initDisplay();
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mWindowManager = (WindowManager) getMDisplayContext().getSystemService("window");
        PowerManager powerManager = this.mPowerManager;
        if (powerManager != null) {
            wakeLock = powerManager.newWakeLock(268435466, "SystemUI:SubscreenNotification");
        } else {
            wakeLock = null;
        }
        this.mScreenOnwakelock = new SettableWakeLock(WakeLock.wrap(wakeLock, null, 300000L), "S.S.N.:ScreenOn");
        ((WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class)).addObserver(this.mWakefulnessObserver);
        this.presentationTimeoutRunnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initTimeoutRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
                NotificationEntry notificationEntry = subscreenDeviceModelParent.currentPresentationEntry;
                if (notificationEntry != null) {
                    str = notificationEntry.mKey;
                } else {
                    str = null;
                }
                Log.d("S.S.N.", " TIMEOUT Run Parent PRESENTATION - RELEASE DOZE STATE - TIMEOUT : " + str + " , presentationShowing : " + subscreenDeviceModelParent.presentationShowing + ", mPresentation : " + subscreenDeviceModelParent.mPresentation);
                SubscreenDeviceModelParent subscreenDeviceModelParent2 = SubscreenDeviceModelParent.this;
                subscreenDeviceModelParent2.mIsRemoving = true;
                subscreenDeviceModelParent2.updateWakeLock(false, false);
                final SubscreenDeviceModelParent subscreenDeviceModelParent3 = SubscreenDeviceModelParent.this;
                subscreenDeviceModelParent3.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initTimeoutRunnable$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscreenNotificationPresentation subscreenNotificationPresentation;
                        SubscreenDeviceModelParent subscreenDeviceModelParent4 = SubscreenDeviceModelParent.this;
                        Log.d("S.S.N.", " DISMISS Run - isRemoving: " + subscreenDeviceModelParent4.mIsRemoving + ", presentation: " + subscreenDeviceModelParent4.mPresentation);
                        SubscreenDeviceModelParent subscreenDeviceModelParent5 = SubscreenDeviceModelParent.this;
                        if (subscreenDeviceModelParent5.mIsRemoving && (subscreenNotificationPresentation = subscreenDeviceModelParent5.mPresentation) != null) {
                            if (subscreenNotificationPresentation != null) {
                                subscreenNotificationPresentation.dismiss();
                            }
                            SubscreenDeviceModelParent.this.mIsRemoving = false;
                            Log.d("S.S.N.", "updateWakeLock false in timeoutRunnable");
                        }
                    }
                }, 1000L);
                SubscreenDeviceModelParent.this.mNotiPopupType = 0;
            }
        };
        this.popupViewTimeoutRunnable = new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$initTimeoutRunnable$2
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                View view;
                Animator popUpViewDismissAnimator;
                SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
                NotificationEntry notificationEntry = subscreenDeviceModelParent.currentPopupViewEntry;
                String str2 = null;
                if (notificationEntry != null) {
                    str = notificationEntry.mKey;
                } else {
                    str = null;
                }
                Log.d("S.S.N.", " TIMEOUT Run Parent POPUPVIEW - RELEASE DOZE STATE - TIMEOUT : " + str + " ,popupViewShowing : " + subscreenDeviceModelParent.popupViewShowing + " , mNotiPopupView : " + subscreenDeviceModelParent.mNotiPopupView);
                SubscreenDeviceModelParent subscreenDeviceModelParent2 = SubscreenDeviceModelParent.this;
                if (subscreenDeviceModelParent2.popupViewShowing && (view = subscreenDeviceModelParent2.mNotiPopupView) != null && (popUpViewDismissAnimator = subscreenDeviceModelParent2.getPopUpViewDismissAnimator(view)) != null) {
                    popUpViewDismissAnimator.start();
                }
                SubscreenDeviceModelParent subscreenDeviceModelParent3 = SubscreenDeviceModelParent.this;
                boolean z = subscreenDeviceModelParent3.presentationShowing;
                LinkedHashMap linkedHashMap = subscreenDeviceModelParent3.mFullScreenIntentEntries;
                NotificationEntry notificationEntry2 = subscreenDeviceModelParent3.currentPresentationEntry;
                if (notificationEntry2 != null) {
                    str2 = notificationEntry2.mKey;
                }
                subscreenDeviceModelParent3.updateWakeLock(z, linkedHashMap.containsKey(str2));
                SubscreenDeviceModelParent.this.mNotiPopupType = 0;
            }
        };
        updateNotiShowBlocked();
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        updateBModeStatus();
        loadOnDeviceMetaData();
    }

    public final boolean isBubbleNotificationSuppressed(NotificationEntry notificationEntry) {
        if (notificationEntry.canBubble()) {
            SubscreenNotificationController subscreenNotificationController = this.mController;
            if (subscreenNotificationController.bubblesOptional.isPresent()) {
                Bubbles bubbles = (Bubbles) subscreenNotificationController.bubblesOptional.get();
                if (((BubbleController.BubblesImpl) bubbles).isBubbleNotificationSuppressedFromShade(notificationEntry.mKey, notificationEntry.mSbn.getGroupKey())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public boolean isCoverBriefAllowed(NotificationEntry notificationEntry) {
        return false;
    }

    public boolean isDismissiblePopup() {
        return this.mFullScreenIntentEntries.isEmpty();
    }

    public final boolean isGrayScaleIcon(NotificationEntry notificationEntry) {
        if (notificationEntry == null) {
            return false;
        }
        boolean isImportantConversation = notificationEntry.getChannel().isImportantConversation();
        Context context = this.mContext;
        if (isImportantConversation) {
            ImageView imageView = new ImageView(context);
            imageView.setImageIcon(notificationEntry.mSbn.getNotification().getSmallIcon());
            return NotificationUtils.isGrayscale(imageView, ContrastColorUtil.getInstance(context));
        }
        return NotificationUtils.isGrayscale(notificationEntry.mIcons.mStatusBarIcon, ContrastColorUtil.getInstance(context));
    }

    public boolean isKeyguardStats() {
        return true;
    }

    public boolean isKnoxSecurity(NotificationEntry notificationEntry) {
        return true;
    }

    public boolean isLaunchApp(NotificationEntry notificationEntry) {
        return false;
    }

    public boolean isNotShwonNotificationState(NotificationEntry notificationEntry) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
    
        if (r0 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00a8, code lost:
    
        if ((r13.flags & 8) != 0) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0178 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isProper(com.android.systemui.statusbar.notification.collection.NotificationEntry r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent.isProper(com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean):boolean");
    }

    public boolean isRunOnCoverAvailable() {
        return true;
    }

    public boolean isSamsungAccountLoggedIn() {
        return false;
    }

    public boolean isShowNotificationAppIcon() {
        return true;
    }

    public boolean isShowingRemoteView(String str) {
        return false;
    }

    public final boolean isShownDetail() {
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification == null || subscreenSubRoomNotification == null) {
            return false;
        }
        return subscreenSubRoomNotification.mIsShownDetail;
    }

    public final boolean isShownGroup() {
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification == null || subscreenSubRoomNotification == null) {
            return false;
        }
        return subscreenSubRoomNotification.mIsShownGroup;
    }

    public boolean isSkipFullscreenIntentClicked(NotificationEntry notificationEntry) {
        if (this.mFullScreenIntentEntries.get(notificationEntry.mKey) == null && !this.mIsFullscreenFullPopupWindowClosing) {
            return false;
        }
        return true;
    }

    public final boolean isSubScreen() {
        if (!this.mIsFolded && !this.mIsCovered) {
            return false;
        }
        return true;
    }

    public boolean isUpdatedRemoteView(String str) {
        return false;
    }

    public boolean launchApp(NotificationEntry notificationEntry) {
        return false;
    }

    public boolean launchFullscreenIntent(NotificationEntry notificationEntry) {
        return false;
    }

    public final void makeSubScreenNotification(NotificationEntry notificationEntry) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        Boolean bool;
        boolean z3;
        String str3;
        FrameLayout frameLayout;
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow != null && (expandableNotificationRow.mIsCustomNotification || expandableNotificationRow.mIsCustomBigNotification || expandableNotificationRow.mIsCustomHeadsUpNotification || expandableNotificationRow.mIsCustomPublicNotification)) {
            z = true;
        } else {
            z = false;
        }
        boolean needsRedaction = expandableNotificationRow.needsRedaction();
        if (notificationEntry.mSbn.getNotification().publicVersion != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        NotificationEntry notificationEntry2 = this.currentPopupViewEntry;
        String str4 = null;
        if (notificationEntry2 != null) {
            str = notificationEntry2.mKey;
        } else {
            str = null;
        }
        NotificationEntry notificationEntry3 = this.currentPresentationEntry;
        if (notificationEntry3 != null) {
            str2 = notificationEntry3.mKey;
        } else {
            str2 = null;
        }
        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m(" MAKE DETAIL : exist Parent- PopupView: ", str, " Presentation: ", str2, " entry key - ");
        String str5 = notificationEntry.mKey;
        m.append(str5);
        m.append(" isCustom - ");
        m.append(z);
        m.append(" needsRedaction - ");
        KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(m, needsRedaction, " hasPublic - ", z2, "S.S.N.");
        PowerManager powerManager = this.mPowerManager;
        if (powerManager != null) {
            bool = Boolean.valueOf(powerManager.isInteractive());
        } else {
            bool = null;
        }
        Intrinsics.checkNotNull(bool);
        boolean booleanValue = bool.booleanValue();
        if (this.mFullScreenIntentEntries.get(str5) != null) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (booleanValue && !z3) {
            this.mNotiPopupType = 2;
            this.currentPopupViewEntry = notificationEntry;
        } else {
            this.mNotiPopupType = 1;
            this.currentPresentationEntry = notificationEntry;
        }
        if (!z3) {
            if (this.notiShowBlocked) {
                Log.d("S.S.N.", " MAKE DETAIL : show notification is disabled. popup not showing");
                this.mNotiPopupType = 0;
                this.presentationNotiTemplate = null;
                this.popupViewNotiTemplate = null;
                this.currentPresentationEntry = null;
                this.currentPopupViewEntry = null;
                return;
            }
            if (this.notiFullPopupBlocked && this.mNotiPopupType == 1) {
                Log.d("S.S.N.", " MAKE DETAIL : full popup not showing");
                this.mNotiPopupType = 0;
                this.presentationNotiTemplate = null;
                this.popupViewNotiTemplate = null;
                this.currentPresentationEntry = null;
                this.currentPopupViewEntry = null;
                return;
            }
        }
        NotificationEntry notificationEntry4 = this.currentPopupViewEntry;
        if (notificationEntry4 != null) {
            str3 = notificationEntry4.mKey;
        } else {
            str3 = null;
        }
        NotificationEntry notificationEntry5 = this.currentPresentationEntry;
        if (notificationEntry5 != null) {
            str4 = notificationEntry5.mKey;
        }
        int i = this.mNotiPopupType;
        StringBuilder sb = new StringBuilder(" MAKE DETAIL : isInteractive - ");
        sb.append(booleanValue);
        sb.append(" currentPopupViewEntry - ");
        sb.append(str3);
        sb.append(" currentPresentationEntry - ");
        sb.append(str4);
        sb.append(" notiPopupType - ");
        sb.append(i);
        sb.append(" fullScreenNoti - ");
        ActionBarContextView$$ExternalSyntheticOutline0.m(sb, z3, "S.S.N.");
        if (this.popupViewShowing && this.mNotiPopupType == 2) {
            SubscreenNotificationTemplate subscreenNotificationTemplate = this.popupViewNotiTemplate;
            if (subscreenNotificationTemplate != null && (frameLayout = subscreenNotificationTemplate.mLayout) != null) {
                frameLayout.removeAllViews();
            }
            SubscreenNotificationTemplate subscreenNotificationTemplate2 = this.popupViewNotiTemplate;
            if (subscreenNotificationTemplate2 != null) {
                subscreenNotificationTemplate2.makeView(this.currentPopupViewEntry, true);
                return;
            }
            return;
        }
        if (this.mNotiPopupType == 2) {
            SubscreenNotificationDetail subscreenNotificationDetail = new SubscreenNotificationDetail(getMDisplayContext());
            subscreenNotificationDetail.makeView(this.currentPopupViewEntry, true);
            this.popupViewNotiTemplate = subscreenNotificationDetail;
        }
        if (this.mNotiPopupType == 1) {
            SubscreenNotificationDetail subscreenNotificationDetail2 = new SubscreenNotificationDetail(getMDisplayContext());
            subscreenNotificationDetail2.makeView(this.currentPresentationEntry, false);
            this.presentationNotiTemplate = subscreenNotificationDetail2;
        }
    }

    public final int notifyGroupAdapterItemRemoved(NotificationEntry notificationEntry) {
        Integer num;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        SubscreenSubRoomNotification subscreenSubRoomNotification;
        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager2;
        if (!isShownGroup()) {
            return -1;
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
        Integer num2 = null;
        if (subscreenSubRoomNotification2 != null && (subscreenNotificationInfoManager2 = subscreenSubRoomNotification2.mNotificationInfoManager) != null) {
            num = Integer.valueOf(subscreenNotificationInfoManager2.removeGroupDataArrayItem(notificationEntry));
        } else {
            num = null;
        }
        Intrinsics.checkNotNull(num);
        int intValue = num.intValue();
        if (intValue > -1 && (subscreenSubRoomNotification = this.mSubRoomNotification) != null && (subscreenNotificationGroupAdapter = subscreenSubRoomNotification.mNotificationGroupAdapter) != null) {
            subscreenNotificationGroupAdapter.notifyItemRemoved(intValue);
        }
        Log.d("S.S.N.", "notifyGroupAdapterItemRemoved parent - Entry  : " + notificationEntry.mKey + ", index :" + intValue + ", isLaunchApp :" + isLaunchApp(notificationEntry) + ", mMainViewAnimator :" + this.mMainViewAnimator);
        if (!isShownDetail()) {
            SubscreenSubRoomNotification subscreenSubRoomNotification3 = this.mSubRoomNotification;
            if (subscreenSubRoomNotification3 != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification3.mNotificationInfoManager) != null) {
                num2 = Integer.valueOf(subscreenNotificationInfoManager.getGroupDataArraySize());
            }
            Intrinsics.checkNotNull(num2);
            if (num2.intValue() <= 1) {
                hideGroupNotification();
            }
        }
        return intValue;
    }

    public final int notifyListAdapterItemRemoved(NotificationEntry notificationEntry) {
        Integer num;
        SubscreenNotificationListAdapter subscreenNotificationListAdapter;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && subscreenSubRoomNotification.mNotificationInfoManager != null) {
            num = Integer.valueOf(SubscreenNotificationInfoManager.removeLockscreenNotificationInfoItem(notificationEntry));
        } else {
            num = null;
        }
        Log.d("S.S.N.", "notifyListAdapterItemRemoved parent - Entry  : " + notificationEntry.mKey + ", index :" + num);
        if (num == null || num.intValue() <= -1) {
            return -1;
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
        if (subscreenSubRoomNotification2 != null && (subscreenNotificationListAdapter = subscreenSubRoomNotification2.mNotificationListAdapter) != null) {
            subscreenNotificationListAdapter.notifyItemRemoved(num.intValue());
        }
        return num.intValue();
    }

    public boolean panelsEnabled() {
        return true;
    }

    public final void putMainListArrayHashMap(NotificationEntry notificationEntry) {
        SubscreenNotificationInfo subscreenNotificationInfo;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification.mNotificationInfoManager) != null) {
            subscreenNotificationInfo = subscreenNotificationInfoManager.createItemsData(notificationEntry.row);
        } else {
            subscreenNotificationInfo = null;
        }
        MainListHashMapItem mainListHashMapItem = new MainListHashMapItem();
        if (subscreenNotificationInfo != null) {
            mainListHashMapItem.mEntry = notificationEntry;
            mainListHashMapItem.mInfo = subscreenNotificationInfo;
        }
        this.mMainListArrayHashMap.put(notificationEntry.mKey, mainListHashMapItem);
    }

    public final void removeMainHashItem(NotificationEntry notificationEntry) {
        HashSet hashSet = this.mNotiKeySet;
        String str = notificationEntry.mKey;
        hashSet.remove(str);
        this.mMainListArrayHashMap.remove(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r10v4 */
    public void setContentViewItem(Context context, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        boolean z;
        int i;
        int detailAdapterContentViewResource = getDetailAdapterContentViewResource();
        SubscreenNotificationInfo subscreenNotificationInfo = itemViewHolder.mInfo;
        boolean z2 = subscreenNotificationInfo.mIsMessagingStyle;
        int i2 = R.id.detail_clock;
        int i3 = R.id.detail_content_image;
        int i4 = R.id.detail_content_text;
        int i5 = 8;
        ?? r10 = 0;
        LinearLayout linearLayout = itemViewHolder.mContentLayout;
        if (z2) {
            ArrayList arrayList = subscreenNotificationInfo.mMessageingStyleInfoArray;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                View inflate = LayoutInflater.from(context).inflate(detailAdapterContentViewResource, linearLayout, (boolean) r10);
                TextView textView = (TextView) inflate.findViewById(R.id.detail_sender_text);
                TextView textView2 = (TextView) inflate.findViewById(i4);
                ImageView imageView = (ImageView) inflate.findViewById(i3);
                DateTimeView findViewById = inflate.findViewById(i2);
                if (itemViewHolder.mInfo.mIsGroupConversation) {
                    textView.setVisibility(r10);
                    textView.setText(((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mSender + " : ");
                } else {
                    String str = ((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mSender;
                    String str2 = itemViewHolder.mPrevSender;
                    if (str2 != null && !Intrinsics.areEqual(str2, str)) {
                        textView.setVisibility(r10);
                        textView.setText(((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mSender + " : ");
                    } else {
                        textView.setVisibility(i5);
                    }
                    itemViewHolder.mPrevSender = str;
                }
                textView2.setText(((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mContentText);
                if (((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mUriImage != null) {
                    try {
                        imageView.setImageDrawable(((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mUriImage);
                        imageView.setVisibility(0);
                    } catch (SecurityException e) {
                        SubscreenNotificationInfo subscreenNotificationInfo2 = itemViewHolder.mInfo;
                        Log.w("SubscreenNotificationDetailAdapter", "SecurityException: " + e + "appName : " + subscreenNotificationInfo2.mAppName + "packageName : " + subscreenNotificationInfo2.mSbn.getPackageName());
                        imageView.setImageURI(null);
                        imageView.setVisibility(8);
                    }
                } else {
                    imageView.setVisibility(i5);
                }
                long j = ((SubscreenNotificationInfo.MessagingStyleInfo) arrayList.get(i6)).mTimeStamp;
                if (j > 0 && itemViewHolder.mInfo.mShowWhen) {
                    findViewById.setVisibility(0);
                    findViewById.setTime(j);
                } else {
                    findViewById.setVisibility(8);
                }
                linearLayout.addView(inflate);
                if (textView.getVisibility() == 0) {
                    itemViewHolder.mBodyLayoutString = itemViewHolder.mBodyLayoutString + ((Object) textView.getText());
                }
                itemViewHolder.mBodyLayoutString = itemViewHolder.mBodyLayoutString + ((Object) textView2.getText()) + ((Object) findViewById.getText());
                i6++;
                i2 = R.id.detail_clock;
                i3 = R.id.detail_content_image;
                i4 = R.id.detail_content_text;
                i5 = 8;
                r10 = 0;
            }
            return;
        }
        View inflate2 = LayoutInflater.from(context).inflate(detailAdapterContentViewResource, (ViewGroup) linearLayout, false);
        TextView textView3 = (TextView) inflate2.findViewById(R.id.detail_content_text);
        ImageView imageView2 = (ImageView) inflate2.findViewById(R.id.detail_content_image);
        DateTimeView findViewById2 = inflate2.findViewById(R.id.detail_clock);
        SubscreenNotificationInfo subscreenNotificationInfo3 = itemViewHolder.mInfo;
        String str3 = subscreenNotificationInfo3.mBigText;
        if (str3 == null) {
            str3 = subscreenNotificationInfo3.mContent;
        }
        if (str3 != null && !StringsKt__StringsJVMKt.isBlank(str3)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            textView3.setVisibility(8);
            i = 0;
        } else {
            textView3.setText(str3);
            i = 0;
            textView3.setVisibility(0);
        }
        if (itemViewHolder.mInfo.mBitmap != null) {
            imageView2.setVisibility(i);
            imageView2.setScaleType(getDetailContentImageScaleType());
            bindImageBitmap(imageView2, itemViewHolder.mInfo.mBitmap);
        } else {
            imageView2.setVisibility(8);
        }
        SubscreenNotificationInfo subscreenNotificationInfo4 = itemViewHolder.mInfo;
        if (subscreenNotificationInfo4.mWhen > 0 && subscreenNotificationInfo4.mShowWhen) {
            findViewById2.setVisibility(0);
            findViewById2.setTime(itemViewHolder.mInfo.mWhen);
        } else {
            findViewById2.setVisibility(8);
        }
        linearLayout.addView(inflate2);
        itemViewHolder.mBodyLayoutString = itemViewHolder.mBodyLayoutString + ((Object) textView3.getText()) + ((Object) findViewById2.getText());
    }

    public void setDetailAdapterItemHolderButtonContentDescription(SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        String string = subscreenNotificationDetailAdapter.mContext.getResources().getString(R.string.subscreen_detail_adapter_open_app_button_text);
        String string2 = subscreenNotificationDetailAdapter.mContext.getResources().getString(R.string.clear_all_text);
        itemViewHolder.mOpenAppButton.setContentDescription(string);
        itemViewHolder.mClearButton.setContentDescription(string2);
        itemViewHolder.mBodyLayout.setContentDescription(itemViewHolder.mBodyLayoutString);
    }

    public void setDetailAdapterTextHolderButtonContentDescription(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder, SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter) {
        textViewHolder.mOpenAppButton.setContentDescription(subscreenNotificationDetailAdapter.mContext.getResources().getString(R.string.subscreen_detail_adapter_open_app_button_text));
    }

    public void setQuickReplyFocusBackground(View view) {
        view.setBackground(null);
    }

    public PopupWindow showReplyButtonViewPopupWindow(View view, View view2) {
        return null;
    }

    public final void showSubscreenNotification() {
        Runnable runnable;
        NotificationEntry notificationEntry;
        long j;
        final FrameLayout frameLayout;
        String str;
        String str2;
        FrameLayout frameLayout2;
        String str3;
        ViewParent parent;
        String str4;
        if (this.mSubDisplay == null) {
            Log.d("S.S.N.", "return showSubscreenNotification - subDisplay does not exist");
            return;
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("showSubscreenNotification Parent - ", this.mNotiPopupType, "S.S.N.");
        SubscreenDeviceModelParent$initTimeoutRunnable$1 subscreenDeviceModelParent$initTimeoutRunnable$1 = null;
        if (this.mNotiPopupType == 2) {
            if (this.presentationShowing && isDismissiblePopup()) {
                Log.d("S.S.N.", "showSubscreenNotification PopupView - dismiss top presentation if it's showing");
                dismissImmediately(1);
            }
            WindowManager.LayoutParams topPopupLp = getTopPopupLp();
            Display display = this.mSubDisplay;
            if (display != null && topPopupLp != null) {
                topPopupLp.width = display.getWidth();
            }
            SubscreenNotificationTemplate subscreenNotificationTemplate = this.popupViewNotiTemplate;
            if (subscreenNotificationTemplate != null) {
                if (this.popupViewShowing && this.mNotiPopupView != null) {
                    WindowManager windowManager = this.mWindowManager;
                    if (windowManager != null) {
                        windowManager.updateViewLayout(subscreenNotificationTemplate.mLayout, topPopupLp);
                    }
                    NotificationEntry notificationEntry2 = this.currentPopupViewEntry;
                    if (notificationEntry2 != null) {
                        str4 = notificationEntry2.mKey;
                    } else {
                        str4 = null;
                    }
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("  Noti popup updated - ", str4, "S.S.N.");
                } else {
                    FrameLayout frameLayout3 = subscreenNotificationTemplate.mLayout;
                    if (frameLayout3 != null && (parent = frameLayout3.getParent()) != null) {
                        ((ViewGroup) parent).removeView(subscreenNotificationTemplate.mLayout);
                    }
                    WindowManager windowManager2 = this.mWindowManager;
                    if (windowManager2 != null) {
                        windowManager2.addView(subscreenNotificationTemplate.mLayout, topPopupLp);
                    }
                    this.popupViewShowing = true;
                    this.mNotiPopupView = subscreenNotificationTemplate.mLayout;
                    NotificationEntry notificationEntry3 = this.currentPopupViewEntry;
                    if (notificationEntry3 != null) {
                        str3 = notificationEntry3.mKey;
                    } else {
                        str3 = null;
                    }
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("  Noti popup attached - ", str3, "S.S.N.");
                    Animator popUpViewShowAnimator = getPopUpViewShowAnimator(this.mNotiPopupView);
                    if (popUpViewShowAnimator != null) {
                        popUpViewShowAnimator.start();
                    }
                }
            }
            updateWakeLock(true, true);
            PowerManager powerManager = this.mPowerManager;
            if (powerManager != null) {
                powerManager.userActivity(SystemClock.uptimeMillis(), true);
            }
            runnable = this.popupViewTimeoutRunnable;
            if (runnable == null) {
                runnable = null;
            }
            notificationEntry = this.currentPopupViewEntry;
        } else {
            runnable = null;
            notificationEntry = null;
        }
        int i = this.mNotiPopupType;
        Handler handler = this.mHandler;
        if (i == 1) {
            if (this.popupViewShowing) {
                Log.d("S.S.N.", "showSubscreenNotification Presentation - dismiss top popup if it's showing");
                dismissImmediately(2);
            }
            this.mController.requestDozeState(64, true);
            if (this.mPresentation == null) {
                NotificationEntry notificationEntry4 = this.currentPresentationEntry;
                if (notificationEntry4 != null) {
                    str2 = notificationEntry4.mKey;
                } else {
                    str2 = null;
                }
                Log.d("S.S.N.", "  SHOW NEW - " + str2);
                Context mDisplayContext = getMDisplayContext();
                Display display2 = this.mSubDisplay;
                SubscreenNotificationDetail subscreenNotificationDetail = this.presentationNotiTemplate;
                if (subscreenNotificationDetail != null) {
                    frameLayout2 = subscreenNotificationDetail.mLayout;
                } else {
                    frameLayout2 = null;
                }
                SubscreenNotificationPresentation subscreenNotificationPresentation = new SubscreenNotificationPresentation(mDisplayContext, display2, frameLayout2, this);
                this.mPresentation = subscreenNotificationPresentation;
                try {
                    subscreenNotificationPresentation.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$showSubscreenNotification$3
                        @Override // android.content.DialogInterface.OnShowListener
                        public final void onShow(DialogInterface dialogInterface) {
                            String str5;
                            StatusBarNotificationActivityStarter statusBarNotificationActivityStarter;
                            NotificationEntry notificationEntry5;
                            SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenDeviceModelParent.this;
                            LinkedHashMap linkedHashMap = subscreenDeviceModelParent.mFullScreenIntentEntries;
                            NotificationEntry notificationEntry6 = subscreenDeviceModelParent.currentPresentationEntry;
                            if (notificationEntry6 != null) {
                                str5 = notificationEntry6.mKey;
                            } else {
                                str5 = null;
                            }
                            subscreenDeviceModelParent.updateWakeLock(true, linkedHashMap.containsKey(str5));
                            NotificationActivityStarter notificationActivityStarter = SubscreenDeviceModelParent.this.mNotificationActivityStarter;
                            if (notificationActivityStarter != null && (notificationEntry5 = (statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) notificationActivityStarter).mPendingFullscreenEntry) != null) {
                                if (!new ArrayList(Arrays.asList("com.tencent.mm", "us.zoom.videomeetings")).contains(notificationEntry5.mSbn.getPackageName())) {
                                    if (statusBarNotificationActivityStarter.mPendingFullscreenEntry.mSbn.getNotification().fullScreenIntent == null) {
                                        ExifInterface$$ExternalSyntheticOutline0.m(new StringBuilder("return launchFullScreenIntent() - fullScreenIntent is null: "), statusBarNotificationActivityStarter.mPendingFullscreenEntry.mKey, "StatusBarNotificationActivityStarter");
                                        statusBarNotificationActivityStarter.mPendingFullscreenEntry = null;
                                    } else {
                                        statusBarNotificationActivityStarter.mIsStartFullscreenIntentWhenSubscreen = Boolean.TRUE;
                                        statusBarNotificationActivityStarter.launchFullScreenIntent(statusBarNotificationActivityStarter.mPendingFullscreenEntry);
                                        statusBarNotificationActivityStarter.mPendingFullscreenEntry = null;
                                    }
                                }
                            }
                        }
                    });
                    SubscreenNotificationPresentation subscreenNotificationPresentation2 = this.mPresentation;
                    if (subscreenNotificationPresentation2 != null) {
                        subscreenNotificationPresentation2.show();
                    }
                    this.presentationShowing = true;
                } catch (WindowManager.InvalidDisplayException e) {
                    Log.w("S.S.N.", "Invalid display: ", e);
                    updateWakeLock(false, false);
                    SubscreenNotificationPresentation subscreenNotificationPresentation3 = this.mPresentation;
                    if (subscreenNotificationPresentation3 != null) {
                        subscreenNotificationPresentation3.setOnShowListener(null);
                    }
                    this.mPresentation = null;
                }
            } else {
                SubscreenNotificationDetail subscreenNotificationDetail2 = this.presentationNotiTemplate;
                if (subscreenNotificationDetail2 != null) {
                    frameLayout = subscreenNotificationDetail2.mLayout;
                } else {
                    frameLayout = null;
                }
                NotificationEntry notificationEntry5 = this.currentPresentationEntry;
                if (notificationEntry5 != null) {
                    str = notificationEntry5.mKey;
                } else {
                    str = null;
                }
                MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(" SHOW UPDATED - ", str, "S.S.N.");
                if (this.mPresentation != null) {
                    handler.post(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent$updateSubscreenNotificationView$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ViewGroup viewGroup;
                            ViewGroup viewGroup2;
                            SubscreenNotificationPresentation subscreenNotificationPresentation4 = SubscreenDeviceModelParent.this.mPresentation;
                            if (subscreenNotificationPresentation4 != null) {
                                viewGroup = subscreenNotificationPresentation4.contents;
                            } else {
                                viewGroup = null;
                            }
                            if (viewGroup != null && viewGroup.getChildCount() > 0) {
                                viewGroup.removeAllViews();
                            }
                            SubscreenNotificationPresentation subscreenNotificationPresentation5 = SubscreenDeviceModelParent.this.mPresentation;
                            if (subscreenNotificationPresentation5 != null && (viewGroup2 = subscreenNotificationPresentation5.contents) != null) {
                                viewGroup2.addView(frameLayout);
                            }
                        }
                    });
                }
            }
            SubscreenDeviceModelParent$initTimeoutRunnable$1 subscreenDeviceModelParent$initTimeoutRunnable$12 = this.presentationTimeoutRunnable;
            if (subscreenDeviceModelParent$initTimeoutRunnable$12 != null) {
                subscreenDeviceModelParent$initTimeoutRunnable$1 = subscreenDeviceModelParent$initTimeoutRunnable$12;
            }
            notificationEntry = this.currentPresentationEntry;
            runnable = subscreenDeviceModelParent$initTimeoutRunnable$1;
        }
        if (notificationEntry != null) {
            SubscreenDeviceModelParent$marqueeStartRunnable$1 subscreenDeviceModelParent$marqueeStartRunnable$1 = this.marqueeStartRunnable;
            handler.removeCallbacks(subscreenDeviceModelParent$marqueeStartRunnable$1);
            handler.postDelayed(subscreenDeviceModelParent$marqueeStartRunnable$1, 1000L);
            LinkedHashMap linkedHashMap = this.mFullScreenIntentEntries;
            String str5 = notificationEntry.mKey;
            long j2 = 300000;
            if (linkedHashMap.get(str5) != null) {
                if (notificationEntry.mFullscreenPopUpStartTime != 0) {
                    j2 = 300000 - (System.currentTimeMillis() - notificationEntry.mFullscreenPopUpStartTime);
                } else {
                    notificationEntry.mFullscreenPopUpStartTime = System.currentTimeMillis();
                }
            }
            Intrinsics.checkNotNull(runnable);
            handler.removeCallbacks(runnable);
            if (linkedHashMap.get(str5) != null) {
                j = j2;
            } else {
                j = 3000;
            }
            handler.postDelayed(runnable, j);
            if (linkedHashMap.get(str5) == null) {
                j2 = 3000;
            }
            Log.d("S.S.N.", "  showSubscreenNotification - " + str5 + ", " + j2);
        }
    }

    public final boolean skipDetailClicked(NotificationEntry notificationEntry) {
        String str;
        int i = 2;
        if (notificationEntry == null) {
            Log.d("S.S.N.", " TOAST CLICKED parent - entry is null");
            if (!this.popupViewShowing) {
                i = 1;
            }
            dismissImmediately(i);
            return true;
        }
        if (isCoverBriefAllowed(notificationEntry)) {
            Log.d("S.S.N.", " DETAIL CLICKED brief popup ");
            return false;
        }
        if (this.popupViewShowing && this.currentPopupViewEntry == null) {
            Log.d("S.S.N.", " TOAST CLICKED parent - currentPopupViewEntry is null");
            dismissImmediately(2);
            return true;
        }
        StringBuilder sb = new StringBuilder(" DETAIL CLICKED parent");
        String str2 = notificationEntry.mKey;
        ExifInterface$$ExternalSyntheticOutline0.m(sb, str2, "S.S.N.");
        NotificationEntry notificationEntry2 = this.currentPresentationEntry;
        if (notificationEntry2 != null) {
            str = notificationEntry2.mKey;
        } else {
            str = null;
        }
        if (!StringsKt__StringsJVMKt.equals(str, str2, false) || !isSkipFullscreenIntentClicked(notificationEntry)) {
            return false;
        }
        Log.d("S.S.N.", " DETAIL CLICKED fullscreenIntent so return");
        return true;
    }

    public int smallIconPadding(boolean z, boolean z2, boolean z3) {
        return 0;
    }

    public int squircleRadius(boolean z, boolean z2) {
        return 0;
    }

    public final void updateBModeStatus() {
        List<UserInfo> list;
        UserManager userManager = this.mUserManager;
        if (userManager != null) {
            list = userManager.getUsers();
        } else {
            list = null;
        }
        Intrinsics.checkNotNull(list);
        for (UserInfo userInfo : list) {
            if (userInfo.isBMode()) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("update bModeUserId : ", userInfo.id, "S.S.N.");
                this.bModeUserId = userInfo.id;
                return;
            }
        }
    }

    public final void updateIconColor(ImageView imageView, NotificationEntry notificationEntry) {
        int i;
        String str;
        boolean z;
        StatusBarNotification statusBarNotification;
        Notification notification2;
        String str2;
        StatusBarNotification statusBarNotification2;
        Notification notification3;
        ExpandableNotificationRow expandableNotificationRow;
        boolean z2 = false;
        if (notificationEntry != null && (expandableNotificationRow = notificationEntry.row) != null) {
            i = ((NotificationColorPicker) Dependency.get(NotificationColorPicker.class)).getAppPrimaryColor(expandableNotificationRow);
        } else {
            i = 0;
        }
        boolean isGrayScaleIcon = isGrayScaleIcon(notificationEntry);
        ExpandableNotificationRow expandableNotificationRow2 = null;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        Log.d("S.S.N.", "updateIconColor() isGrayScale = " + isGrayScaleIcon + ", " + str);
        if (imageView != null) {
            Context context = this.mContext;
            if (isGrayScaleIcon) {
                int color = context.getColor(R.color.notification_app_icon_color);
                if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                    imageView.setColorFilter(Color.argb(255, Color.red(color), Color.green(color), Color.blue(color)), PorterDuff.Mode.SRC_IN);
                } else {
                    if (notificationEntry != null && (statusBarNotification = notificationEntry.mSbn) != null && (notification2 = statusBarNotification.getNotification()) != null && !notification2.isColorized()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        imageView.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                    }
                }
                if (imageView.getBackground() != null) {
                    if (notificationEntry != null && (statusBarNotification2 = notificationEntry.mSbn) != null && (notification3 = statusBarNotification2.getNotification()) != null && notification3.isColorized()) {
                        z2 = true;
                    }
                    if (z2) {
                        if (notificationEntry != null) {
                            str2 = notificationEntry.mKey;
                        } else {
                            str2 = null;
                        }
                        Log.d("S.S.N.", "updateIconColor() - colorized " + str2);
                        NotificationColorPicker notificationColorPicker = (NotificationColorPicker) Dependency.get(NotificationColorPicker.class);
                        int notificationDefaultBgColor = notificationColorPicker.getNotificationDefaultBgColor();
                        boolean isNightModeActive = context.getResources().getConfiguration().isNightModeActive();
                        if (notificationEntry != null) {
                            expandableNotificationRow2 = notificationEntry.row;
                        }
                        i = notificationColorPicker.resolveContrastColor(notificationDefaultBgColor, isNightModeActive, expandableNotificationRow2);
                    }
                    imageView.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
                    return;
                }
                return;
            }
            imageView.setColorFilter(0);
            if (imageView.getBackground() != null) {
                int color2 = context.getColor(R.color.notification_non_grayscale_border_color);
                int color3 = context.getColor(R.color.notification_non_grayscale_fill_color);
                imageView.getBackground().setColorFilter(null);
                GradientDrawable gradientDrawable = (GradientDrawable) imageView.getBackground().mutate();
                gradientDrawable.setColor(color3);
                gradientDrawable.setStroke(context.getResources().getDimensionPixelSize(R.dimen.notification_icon_border_width), color2);
            }
        }
    }

    public final void updateNotiShowBlocked() {
        boolean z;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.getClass();
        boolean z2 = NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON;
        boolean z3 = false;
        if ((!z2 && !NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) || settingsHelper.mItemLists.get("cover_screen_show_notification").getIntValue() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.notiShowBlocked = !z;
        if ((!z2 && !NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) || settingsHelper.mItemLists.get("turn_on_cover_screen_for_notification").getIntValue() != 0) {
            z3 = true;
        }
        this.notiFullPopupBlocked = !z3;
    }

    public final void updateSmallIconSquircleBg(ImageView imageView, boolean z, boolean z2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(squircleRadius(z, z2));
        int smallIconPadding = smallIconPadding(z, z2, false);
        if (imageView != null) {
            imageView.setBackground(gradientDrawable);
            imageView.setPadding(smallIconPadding, smallIconPadding, smallIconPadding, smallIconPadding);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001f, code lost:
    
        if (r1 == true) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateWakeLock(boolean r4, boolean r5) {
        /*
            r3 = this;
            java.lang.String r0 = "S.S.N."
            java.lang.String r1 = " updateWakeLock - acquire : "
            java.lang.String r2 = ", force : "
            com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0.m(r1, r4, r2, r5, r0)
            r0 = 1
            if (r4 == 0) goto L16
            if (r5 == 0) goto L2f
            com.android.systemui.util.wakelock.SettableWakeLock r3 = r3.mScreenOnwakelock
            if (r3 == 0) goto L2f
            r3.setAcquired(r0)
            goto L2f
        L16:
            com.android.systemui.util.wakelock.SettableWakeLock r4 = r3.mScreenOnwakelock
            r5 = 0
            if (r4 == 0) goto L25
            monitor-enter(r4)
            boolean r1 = r4.mAcquired     // Catch: java.lang.Throwable -> L22
            monitor-exit(r4)
            if (r1 != r0) goto L25
            goto L26
        L22:
            r3 = move-exception
            monitor-exit(r4)
            throw r3
        L25:
            r0 = r5
        L26:
            if (r0 == 0) goto L2f
            com.android.systemui.util.wakelock.SettableWakeLock r3 = r3.mScreenOnwakelock
            if (r3 == 0) goto L2f
            r3.setAcquired(r5)
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelParent.updateWakeLock(boolean, boolean):void");
    }

    public boolean useTopPresentation() {
        return false;
    }

    public void initDetailAdapterTextViewHolder(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder) {
    }

    public void initMainHeaderView(LinearLayout linearLayout) {
    }

    public void onBindDetailAdapterTextViewHolder(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder) {
    }

    public void onStateChangedInDeviceStateCallback(int i) {
    }

    public void removeSmartReplyHashMap(String str) {
    }

    public void replyActivityFinished(boolean z) {
    }

    public void setDimOnMainBackground(View view) {
    }

    public void setFullPopupWindowKeyEventListener(FrameLayout frameLayout) {
    }

    public void setItemDecoration(SubscreenRecyclerView subscreenRecyclerView) {
    }

    public void setKeyguardStateWhenAddLockscreenNotificationInfoArray(boolean z) {
    }

    public void setListAdpaterFirstChildTopMargin(SubscreenParentItemViewHolder subscreenParentItemViewHolder) {
    }

    public void setListAdpaterPosition(int i) {
    }

    public void updateMainHeaderView(LinearLayout linearLayout) {
    }

    public void updateMainHeaderViewVisibility(int i) {
    }

    public void cancelReplySendButtonAnimator() {
    }

    public void closeFullscreenFullPopupWindow() {
    }

    public void dimissTopPopupNotification() {
    }

    public void enableGoToTopButton() {
    }

    public void initKeyguardActioninfo() {
    }

    public void initSmartReplyStatus() {
    }

    public void loadOnDeviceMetaData() {
    }

    public void onDisplayReady() {
    }

    public void onTipButtonClicked() {
    }

    public void registerAODTspReceiver() {
    }

    public void runSmartReplyUncompletedOperation() {
    }

    public void setIsReplySendButtonLoading() {
    }

    public void setStartedReplyActivity() {
    }

    public void showAIReply() {
    }

    public void unregisterAODTspReceiver() {
    }

    public void updateContentScroll() {
    }

    public void updateSamsungAccount() {
    }

    public void clickAdapterItem(Context context, SubscreenParentItemViewHolder subscreenParentItemViewHolder) {
    }

    public void onBindDetailAdapterItemViewHolder(SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
    }

    public void setClock(SubscreenNotificationInfo subscreenNotificationInfo, View view) {
    }

    public void setGroupAdapterFooterMargin(Context context, RecyclerView.ViewHolder viewHolder) {
    }

    public void setListItemTextLayout(Context context, View view) {
    }

    public void setReplyWordTextStyle(TextView textView, Typeface typeface) {
    }

    public void updateIconContainer(View view, boolean z) {
    }

    public void updateImportBadgeIconRing(View view, boolean z) {
    }

    public void updateShadowIconColor(View view, NotificationEntry notificationEntry) {
    }

    public final void dismissImmediately(NotificationEntry notificationEntry) {
        boolean z = this.popupViewShowing;
        boolean z2 = this.presentationShowing;
        NotificationEntry notificationEntry2 = this.currentPopupViewEntry;
        String str = notificationEntry2 != null ? notificationEntry2.mKey : null;
        NotificationEntry notificationEntry3 = this.currentPresentationEntry;
        String str2 = notificationEntry3 != null ? notificationEntry3.mKey : null;
        String str3 = notificationEntry != null ? notificationEntry.mKey : null;
        StringBuilder m = KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0.m(" DISMISS IMMEDIATELY(entry) - popupViewShowing : ", z, ", presentationShowing : ", z2, ", currentPopupViewEntry : ");
        AppOpItem$$ExternalSyntheticOutline0.m(m, str, ", currentPresentationEntry : ", str2, ", key : ");
        ExifInterface$$ExternalSyntheticOutline0.m(m, str3, "S.S.N.");
        if (notificationEntry == null) {
            return;
        }
        NotificationEntry notificationEntry4 = this.currentPresentationEntry;
        String str4 = notificationEntry4 != null ? notificationEntry4.mKey : null;
        String str5 = notificationEntry.mKey;
        if (StringsKt__StringsJVMKt.equals(str4, str5, false)) {
            dismissImmediately(1);
        }
        NotificationEntry notificationEntry5 = this.currentPopupViewEntry;
        if (StringsKt__StringsJVMKt.equals(notificationEntry5 != null ? notificationEntry5.mKey : null, str5, false)) {
            dismissImmediately(2);
        }
    }

    public void initMainHeaderViewItems(Context context, SubscreenNotificationInfo subscreenNotificationInfo, boolean z) {
    }

    public void setGroupAdapterIcon(Context context, SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter, SubscreenNotificationGroupAdapter.NotificationGroupItemViewHolder notificationGroupItemViewHolder) {
    }

    public void setRightIcon(Context context, SubscreenNotificationInfo subscreenNotificationInfo, View view) {
    }

    public void setSmartReplyResultValue(int i, StringBuilder sb, String str) {
    }

    public void makePopupDetailView(Context context, NotificationEntry notificationEntry, boolean z, FrameLayout frameLayout) {
    }

    public void moveDetailAdapterContentScroll(View view, boolean z, boolean z2, boolean z3) {
    }

    public void updateSmallIconBg(ImageView imageView, boolean z, boolean z2, boolean z3) {
    }
}
