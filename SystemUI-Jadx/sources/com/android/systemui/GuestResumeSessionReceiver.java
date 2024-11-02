package com.android.systemui;

import android.app.AlertDialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.os.Bundle;
import android.os.UserHandle;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.qs.QSUserSwitcherEvent;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.UserSwitcherController;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GuestResumeSessionReceiver {
    public static final String SETTING_GUEST_HAS_LOGGED_IN = "systemui.guest_has_logged_in";
    public final GuestSessionNotification mGuestSessionNotification;
    public final Executor mMainExecutor;
    public AlertDialog mNewSessionDialog;
    public final ResetSessionDialog.Factory mResetSessionDialogFactory;
    public final SecureSettings mSecureSettings;
    public final UserTracker.Callback mUserChangedCallback = new UserTracker.Callback() { // from class: com.android.systemui.GuestResumeSessionReceiver.1
        @Override // com.android.systemui.settings.UserTracker.Callback
        public final void onUserChanged(int i, Context context) {
            boolean z;
            String string;
            GuestResumeSessionReceiver guestResumeSessionReceiver = GuestResumeSessionReceiver.this;
            AlertDialog alertDialog = guestResumeSessionReceiver.mNewSessionDialog;
            if (alertDialog != null && alertDialog.isShowing()) {
                guestResumeSessionReceiver.mNewSessionDialog.cancel();
                guestResumeSessionReceiver.mNewSessionDialog = null;
            }
            UserInfo userInfo = ((UserTrackerImpl) guestResumeSessionReceiver.mUserTracker).getUserInfo();
            if (!userInfo.isGuest()) {
                return;
            }
            int intForUser = guestResumeSessionReceiver.mSecureSettings.getIntForUser(0, i, GuestResumeSessionReceiver.SETTING_GUEST_HAS_LOGGED_IN);
            if (intForUser == 0) {
                guestResumeSessionReceiver.mSecureSettings.putIntForUser(1, i, GuestResumeSessionReceiver.SETTING_GUEST_HAS_LOGGED_IN);
                intForUser = 1;
            } else if (intForUser == 1) {
                guestResumeSessionReceiver.mSecureSettings.putIntForUser(2, i, GuestResumeSessionReceiver.SETTING_GUEST_HAS_LOGGED_IN);
                intForUser = 2;
            }
            GuestSessionNotification guestSessionNotification = guestResumeSessionReceiver.mGuestSessionNotification;
            if (intForUser <= 1) {
                z = true;
            } else {
                z = false;
            }
            guestSessionNotification.getClass();
            if (userInfo.isGuest()) {
                boolean isEphemeral = userInfo.isEphemeral();
                Context context2 = guestSessionNotification.mContext;
                if (isEphemeral) {
                    string = context2.getString(R.string.guest_notification_ephemeral);
                } else if (z) {
                    string = context2.getString(R.string.guest_notification_non_ephemeral);
                } else {
                    string = context2.getString(R.string.guest_notification_non_ephemeral_non_first_login);
                }
                Intent intent = new Intent("android.intent.action.GUEST_EXIT");
                Intent intent2 = new Intent("android.settings.USER_SETTINGS");
                PendingIntent broadcastAsUser = PendingIntent.getBroadcastAsUser(context2, 0, intent, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY, UserHandle.SYSTEM);
                Notification.Builder contentIntent = new Notification.Builder(context2, "ALR").setSmallIcon(R.drawable.ic_account_circle).setContentTitle(context2.getString(R.string.guest_notification_session_active)).setContentText(string).setPriority(0).setOngoing(true).setContentIntent(PendingIntent.getActivityAsUser(guestSessionNotification.mContext, 0, intent2, 335544320, null, UserHandle.of(userInfo.id)));
                if (!z) {
                    contentIntent.addAction(R.drawable.ic_sysbar_home, context2.getString(R.string.guest_reset_guest_confirm_button), PendingIntent.getBroadcastAsUser(context2, 0, new Intent("android.intent.action.GUEST_RESET"), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY, UserHandle.SYSTEM));
                }
                contentIntent.addAction(R.drawable.ic_sysbar_home, context2.getString(R.string.guest_exit_button), broadcastAsUser);
                Bundle bundle = new Bundle();
                bundle.putString("android.substName", context2.getString(R.string.guest_notification_app_name));
                contentIntent.addExtras(bundle);
                guestSessionNotification.mNotificationManager.notifyAsUser(null, 70, contentIntent.build(), UserHandle.of(userInfo.id));
            }
            if (intForUser > 1) {
                guestResumeSessionReceiver.mNewSessionDialog = guestResumeSessionReceiver.mResetSessionDialogFactory.create(i);
                guestResumeSessionReceiver.mNewSessionDialog.show();
            }
        }
    };
    public final UserTracker mUserTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class ResetSessionDialog extends SystemUIDialog implements DialogInterface.OnClickListener {
        public static final int BUTTON_DONTWIPE = -1;
        public static final int BUTTON_WIPE = -2;
        public final UiEventLogger mUiEventLogger;
        public final int mUserId;
        public final UserSwitcherController mUserSwitcherController;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public interface Factory {
            ResetSessionDialog create(int i);
        }

        public ResetSessionDialog(Context context, UserSwitcherController userSwitcherController, UiEventLogger uiEventLogger, int i) {
            super(context, 2132018527, false);
            setTitle(context.getString(R.string.guest_wipe_session_title));
            setMessage(context.getString(R.string.guest_wipe_session_message));
            setCanceledOnTouchOutside(false);
            setButton(-2, context.getString(R.string.guest_wipe_session_wipe), this);
            setButton(-1, context.getString(R.string.guest_wipe_session_dontwipe), this);
            this.mUserSwitcherController = userSwitcherController;
            this.mUiEventLogger = uiEventLogger;
            this.mUserId = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -2) {
                this.mUiEventLogger.log(QSUserSwitcherEvent.QS_USER_GUEST_WIPE);
                UserSwitcherController userSwitcherController = this.mUserSwitcherController;
                userSwitcherController.getUserInteractor().removeGuestUser(this.mUserId);
                dismiss();
                return;
            }
            if (i == -1) {
                this.mUiEventLogger.log(QSUserSwitcherEvent.QS_USER_GUEST_CONTINUE);
                cancel();
            }
        }
    }

    public GuestResumeSessionReceiver(Executor executor, UserTracker userTracker, SecureSettings secureSettings, GuestSessionNotification guestSessionNotification, ResetSessionDialog.Factory factory) {
        this.mMainExecutor = executor;
        this.mUserTracker = userTracker;
        this.mSecureSettings = secureSettings;
        this.mGuestSessionNotification = guestSessionNotification;
        this.mResetSessionDialogFactory = factory;
    }
}
