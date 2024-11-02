package com.android.systemui.statusbar.notification;

import android.R;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.Prefs;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter;
import com.android.systemui.statusbar.notification.SubscreenNotificationInfo;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import dagger.Lazy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubscreenDeviceModelCommon extends SubscreenDeviceModelParent implements ConfigurationController.ConfigurationListener {
    public Boolean isNightMode;
    public View mPopUpViewLayout;
    public final SubscreenDeviceModelCommon$mSettingsListener$1 mSettingsListener;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;
    public boolean needsRedaction;
    public SubscreenNotificationInfo popupInfo;

    /* JADX WARN: Type inference failed for: r1v8, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$mSettingsListener$1] */
    public SubscreenDeviceModelCommon(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, UserContextProvider userContextProvider, SubscreenNotificationController subscreenNotificationController, Lazy lazy, CommonNotifCollection commonNotifCollection, LogBuffer logBuffer, NotificationInterruptStateProvider notificationInterruptStateProvider, Lazy lazy2, Lazy lazy3, NotificationVisibilityProvider notificationVisibilityProvider, BindEventManager bindEventManager, NotificationController notificationController, UserManager userManager, ConversationNotificationManager conversationNotificationManager) {
        super(context, keyguardUpdateMonitor, settingsHelper, userContextProvider, subscreenNotificationController, lazy, commonNotifCollection, logBuffer, notificationInterruptStateProvider, lazy2, lazy3, notificationVisibilityProvider, bindEventManager, notificationController, userManager, conversationNotificationManager);
        boolean z;
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            z = true;
        } else {
            z = false;
        }
        this.isNightMode = Boolean.valueOf(z);
        this.mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$mUpdateMonitorCallback$1
            /* JADX WARN: Code restructure failed: missing block: B:19:0x0042, code lost:
            
                if (r1.needsRedaction() == true) goto L25;
             */
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onBiometricAuthenticated(int r4, android.hardware.biometrics.BiometricSourceType r5, boolean r6) {
                /*
                    r3 = this;
                    com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon r3 = com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon.this
                    r3.hideDetailNotificationIfCallback()
                    com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r4 = r3.mSubRoomNotification
                    r5 = 0
                    if (r4 == 0) goto L17
                    com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager r4 = r4.mNotificationInfoManager
                    if (r4 == 0) goto L17
                    int r4 = com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager.getNotificationInfoArraySize()
                    java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                    goto L18
                L17:
                    r4 = r5
                L18:
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
                    int r4 = r4.intValue()
                    r6 = 0
                    r0 = r6
                L21:
                    if (r0 >= r4) goto L56
                    com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r1 = r3.mSubRoomNotification
                    if (r1 == 0) goto L36
                    com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager r1 = r1.mNotificationInfoManager
                    if (r1 == 0) goto L36
                    java.util.ArrayList r1 = com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray
                    if (r1 == 0) goto L36
                    java.lang.Object r1 = r1.get(r0)
                    com.android.systemui.statusbar.LockscreenNotificationInfo r1 = (com.android.systemui.statusbar.LockscreenNotificationInfo) r1
                    goto L37
                L36:
                    r1 = r5
                L37:
                    if (r1 == 0) goto L45
                    com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r1 = r1.mRow
                    if (r1 == 0) goto L45
                    boolean r1 = r1.needsRedaction()
                    r2 = 1
                    if (r1 != r2) goto L45
                    goto L46
                L45:
                    r2 = r6
                L46:
                    if (r2 == 0) goto L53
                    com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r1 = r3.mSubRoomNotification
                    if (r1 == 0) goto L53
                    com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter r1 = r1.mNotificationListAdapter
                    if (r1 == 0) goto L53
                    r1.notifyItemChanged(r0)
                L53:
                    int r0 = r0 + 1
                    goto L21
                L56:
                    r3.showUnlockIconAnim()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$mUpdateMonitorCallback$1.onBiometricAuthenticated(int, android.hardware.biometrics.BiometricSourceType, boolean):void");
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUserSwitchComplete(int i) {
                SubscreenDeviceModelCommon subscreenDeviceModelCommon = SubscreenDeviceModelCommon.this;
                subscreenDeviceModelCommon.updateShowNotificationTip();
                subscreenDeviceModelCommon.updateNotiShowBlocked();
            }
        };
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$mSettingsListener$1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (Intrinsics.areEqual(uri, Settings.Secure.getUriFor("lock_screen_show_notifications")) || Intrinsics.areEqual(uri, Settings.Secure.getUriFor("turn_on_cover_screen_for_notification")) || Intrinsics.areEqual(uri, Settings.Secure.getUriFor("cover_screen_show_notification"))) {
                    SubscreenDeviceModelCommon subscreenDeviceModelCommon = SubscreenDeviceModelCommon.this;
                    subscreenDeviceModelCommon.updateShowNotificationTip();
                    subscreenDeviceModelCommon.updateNotiShowBlocked();
                }
            }
        };
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void dimissTopPopupNotification() {
        if (this.popupViewShowing) {
            dismissImmediately(2);
        }
        if (this.presentationShowing && useTopPresentation()) {
            dismissImmediately(1);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public void foldStateChanged(boolean z) {
        String str;
        boolean z2;
        if (z) {
            str = "FOLD ";
        } else {
            str = "UNFOLD ";
        }
        Log.d("S.S.N.", " FOLD STATE common- ".concat(str));
        super.foldStateChanged(z);
        if (!z) {
            SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
            if (subscreenSubRoomNotification != null) {
                subscreenSubRoomNotification.updateNotificationState(null, 2);
            }
        } else {
            SettingsHelper settingsHelper = this.mSettingsHelper;
            settingsHelper.getClass();
            if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON && settingsHelper.mItemLists.get("cover_screen_show_notification_tip").getIntValue() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
                if (subscreenSubRoomNotification2 != null) {
                    Log.d("SubscreenSubRoomNotification", "initTipData");
                    subscreenSubRoomNotification2.mNotificationRecyclerView.setAdapter(subscreenSubRoomNotification2.mSubRoomNotificationTipAdapter);
                }
            } else {
                SubscreenSubRoomNotification subscreenSubRoomNotification3 = this.mSubRoomNotification;
                if (subscreenSubRoomNotification3 != null) {
                    subscreenSubRoomNotification3.initData();
                }
            }
            this.mIsChangedToFoldState = true;
            boolean isNightModeActive = this.mContext.getResources().getConfiguration().isNightModeActive();
            if (!Intrinsics.areEqual(this.isNightMode, Boolean.valueOf(isNightModeActive))) {
                this.isNightMode = Boolean.valueOf(isNightModeActive);
                enableGoToTopButton();
                SubscreenSubRoomNotification subscreenSubRoomNotification4 = this.mSubRoomNotification;
                if (subscreenSubRoomNotification4 != null) {
                    SubscreenSubRoomNotification.getDeviceModel().initMainHeaderView(subscreenSubRoomNotification4.mSubscreenMainLayout);
                }
            }
        }
        this.mIsFolded = z;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final WindowManager.LayoutParams getTopPopupLp() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2021, R.id.KEYCODE_POUND, -3);
        if (!this.mSettingsHelper.isVoiceAssistantEnabled()) {
            layoutParams.flags |= 8;
        }
        layoutParams.setTitle("SubscreenNotification");
        layoutParams.gravity = 48;
        return layoutParams;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final ImageView initDetailAdapterBackButton(View view) {
        ImageView imageView = (ImageView) view.findViewById(com.android.systemui.R.id.back_key);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$initDetailAdapterBackButton$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SubscreenDeviceModelCommon.this.hideDetailNotificationAnimated(300, false);
            }
        });
        return imageView;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public void initDetailAdapterItemViewHolder(Context context, final SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, final SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        super.initDetailAdapterItemViewHolder(context, subscreenNotificationDetailAdapter, itemViewHolder);
        itemViewHolder.mCallBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubRoom.StateChangeListener stateChangeListener;
                Log.d("SubscreenNotificationDetailAdapter", "Click call back button");
                SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2 = SubscreenNotificationDetailAdapter.this;
                subscreenNotificationDetailAdapter2.mCallbackClicked = true;
                SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder2 = itemViewHolder;
                PendingIntent pendingIntent = itemViewHolder2.mInfo.mSemanticCallPendingIntent;
                subscreenNotificationDetailAdapter2.mSelectHolder = itemViewHolder2;
                if (this.isRunOnCoverAvailable()) {
                    Intent intent = new Intent();
                    intent.putExtra("runOnCover", true);
                    intent.putExtra("afterKeyguardGone", true);
                    intent.putExtra("ignoreKeyguardState", true);
                    SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
                    if (subscreenSubRoomNotification != null && (stateChangeListener = subscreenSubRoomNotification.mStateChangeListener) != null) {
                        stateChangeListener.requestCoverPopup(pendingIntent, intent);
                    }
                    if (!((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isSecure() || ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isKeyguardUnlocking()) {
                        this.hideDetailNotification();
                    }
                } else {
                    SubscreenSubRoomNotification subscreenSubRoomNotification2 = this.mSubRoomNotification;
                    if (subscreenSubRoomNotification2 != null) {
                        String str = itemViewHolder.mInfo.mKey;
                        SubRoom.StateChangeListener stateChangeListener2 = subscreenSubRoomNotification2.mStateChangeListener;
                        if (stateChangeListener2 != null) {
                            stateChangeListener2.requestCoverPopup(pendingIntent, str);
                        }
                    }
                }
                SystemUIAnalytics.sendEventLog("QPN102", "QPNE0208");
            }
        });
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initGroupAdapterHeaderViewHolder(Context context, View view, final SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter, SubscreenNotificationGroupAdapter.HeaderViewHolder headerViewHolder) {
        super.initGroupAdapterHeaderViewHolder(context, view, subscreenNotificationGroupAdapter, headerViewHolder);
        headerViewHolder.mBackButton = (ImageView) view.findViewById(com.android.systemui.R.id.back_key);
        headerViewHolder.mBackButton.setContentDescription(context.getResources().getString(com.android.systemui.R.string.subscreen_back_button_content_description));
        headerViewHolder.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SubscreenDeviceModelCommon subscreenDeviceModelCommon = SubscreenDeviceModelCommon.this;
                SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelCommon.mSubRoomNotification;
                if (subscreenSubRoomNotification != null) {
                    subscreenSubRoomNotification.mRecyclerViewItemSelectKey = subscreenNotificationGroupAdapter.mSummaryInfo.mKey;
                }
                subscreenDeviceModelCommon.hideGroupNotification();
            }
        });
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initialize() {
        super.initialize();
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        updateShowNotificationTip();
        this.mSettingsHelper.registerCallback(this.mSettingsListener, Settings.Secure.getUriFor("lock_screen_show_notifications"), Settings.Secure.getUriFor("turn_on_cover_screen_for_notification"), Settings.Secure.getUriFor("cover_screen_show_notification"));
        ((ConfigurationControllerImpl) ((ConfigurationController) Dependency.get(ConfigurationController.class))).addCallback(this);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isProper(NotificationEntry notificationEntry, boolean z) {
        if (super.isProper(notificationEntry, z) && this.mIsFolded) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void makePopupDetailView(Context context, NotificationEntry notificationEntry, boolean z, FrameLayout frameLayout) {
        String str;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager;
        SubscreenNotificationInfo subscreenNotificationInfo = null;
        ExpandableNotificationRow expandableNotificationRow = null;
        subscreenNotificationInfo = null;
        if (notificationEntry != null) {
            str = notificationEntry.mKey;
        } else {
            str = null;
        }
        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("makePopupDetailView Common- ", str, "S.S.N.");
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null && (subscreenNotificationInfoManager = subscreenSubRoomNotification.mNotificationInfoManager) != null) {
            if (notificationEntry != null) {
                expandableNotificationRow = notificationEntry.row;
            }
            subscreenNotificationInfo = subscreenNotificationInfoManager.createItemsData(expandableNotificationRow);
        }
        this.popupInfo = subscreenNotificationInfo;
        setPopupViewLayout(context, z, frameLayout);
        setPopupItemInfo(context, notificationEntry, z, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public void onBindDetailAdapterItemViewHolder(SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        SubscreenNotificationInfo subscreenNotificationInfo = itemViewHolder.mInfo;
        boolean z = subscreenNotificationInfo.mIsMissedCall;
        View view = itemViewHolder.mCallBackButton;
        if (z && subscreenNotificationInfo.mHasSemanticCall) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void onTipButtonClicked() {
        Prefs.putBoolean(((UserTrackerImpl) this.mUserContextProvider).getUserContext(), "NotiShowCoverScreenTip", true);
        updateShowNotificationTip();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean panelsEnabled() {
        return ((CommandQueue) Dependency.get(CommandQueue.class)).panelsEnabled();
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setDetailAdapterItemHolderButtonContentDescription(SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        super.setDetailAdapterItemHolderButtonContentDescription(subscreenNotificationDetailAdapter, itemViewHolder);
        String string = subscreenNotificationDetailAdapter.mContext.getResources().getString(com.android.systemui.R.string.subscreen_back_button_content_description);
        subscreenNotificationDetailAdapter.mContext.getResources().getString(com.android.systemui.R.string.subscreen_detail_adapter_reply_button_text);
        subscreenNotificationDetailAdapter.mContext.getResources().getString(com.android.systemui.R.string.accessibility_button);
        itemViewHolder.mBackButton.setContentDescription(string);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setDetailAdapterTextHolderButtonContentDescription(SubscreenNotificationDetailAdapter.TextViewHolder textViewHolder, SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter) {
        super.setDetailAdapterTextHolderButtonContentDescription(textViewHolder, subscreenNotificationDetailAdapter);
        textViewHolder.mBackButton.setContentDescription(subscreenNotificationDetailAdapter.mContext.getResources().getString(com.android.systemui.R.string.subscreen_back_button_content_description));
    }

    public final void setEditButton(SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        TextView textView = itemViewHolder.mEditButton;
        textView.setVisibility(8);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon$setEditButton$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction("com.samsung.settings.SubScreenQuickReplySettings");
                intent.setFlags(335544320);
                PendingIntent activityAsUser = PendingIntent.getActivityAsUser(SubscreenDeviceModelCommon.this.mContext, 0, intent, 167772160, null, UserHandle.CURRENT);
                KeyguardManager keyguardManager = (KeyguardManager) SubscreenDeviceModelCommon.this.mContext.getSystemService("keyguard");
                Intent intent2 = new Intent();
                intent2.putExtra("showCoverToast", true);
                intent2.putExtra("ignoreKeyguardState", true);
                keyguardManager.semSetPendingIntentAfterUnlock(activityAsUser, intent2);
            }
        });
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setKeyguardStateWhenAddLockscreenNotificationInfoArray(boolean z) {
        this.mIsKeyguardStateWhenAddLockscreenNotificationInfoArray = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0181 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setPopupItemInfo(android.content.Context r28, com.android.systemui.statusbar.notification.collection.NotificationEntry r29, boolean r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1070
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon.setPopupItemInfo(android.content.Context, com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean, boolean):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setRightIcon(Context context, SubscreenNotificationInfo subscreenNotificationInfo, View view) {
        Drawable drawable;
        ImageView imageView = (ImageView) view.findViewById(com.android.systemui.R.id.subscreen_right_icon);
        if (imageView == null) {
            return;
        }
        int size = subscreenNotificationInfo.mMessageingStyleInfoArray.size();
        if (subscreenNotificationInfo.mIsMessagingStyle && size > 0) {
            drawable = ((SubscreenNotificationInfo.MessagingStyleInfo) subscreenNotificationInfo.mMessageingStyleInfoArray.get(size - 1)).mUriImage;
        } else {
            Icon icon = subscreenNotificationInfo.mLargeIcon;
            if (icon != null) {
                drawable = icon.loadDrawable(context);
            } else {
                drawable = null;
            }
        }
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }

    public final void updateShowNotificationTip() {
        Boolean bool;
        boolean z;
        int i = 0;
        boolean z2 = Prefs.getBoolean(((UserTrackerImpl) this.mUserContextProvider).getUserContext(), "NotiShowCoverScreenTip", false);
        Boolean bool2 = null;
        SettingsHelper settingsHelper = this.mSettingsHelper;
        if (settingsHelper != null) {
            bool = Boolean.valueOf(settingsHelper.isShowNotificationOnKeyguard());
        } else {
            bool = null;
        }
        if (settingsHelper != null) {
            if ((!NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON && !NotiRune.NOTI_SUBSCREEN_CLEAR_COVER) || settingsHelper.mItemLists.get("cover_screen_show_notification").getIntValue() == 1) {
                z = true;
            } else {
                z = false;
            }
            bool2 = Boolean.valueOf(z);
        }
        if (settingsHelper != null) {
            if (!z2) {
                Intrinsics.checkNotNull(bool);
                if (!bool.booleanValue()) {
                    Intrinsics.checkNotNull(bool2);
                    if (!bool2.booleanValue()) {
                        i = 1;
                    }
                }
            }
            if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON) {
                Settings.Secure.putIntForUser(settingsHelper.mContext.getContentResolver(), "cover_screen_show_notification_tip", i, -2);
                settingsHelper.mItemLists.get("cover_screen_show_notification_tip").mIntValue = i;
            }
        }
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
    }

    public void setMarqueeItem(TextView textView) {
    }

    public void hideDetailNotificationIfCallback() {
    }

    public void showUnlockIconAnim() {
    }

    public void setPopupViewLayout(Context context, boolean z, FrameLayout frameLayout) {
    }
}
