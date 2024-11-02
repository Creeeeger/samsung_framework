package com.android.systemui;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.UserInfo;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.qs.QSUserSwitcherEvent;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.UserSwitcherController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GuestResetOrExitSessionReceiver extends BroadcastReceiver {
    public final BroadcastDispatcher mBroadcastDispatcher;
    public ExitSessionDialog mExitSessionDialog;
    public final ExitSessionDialog.Factory mExitSessionDialogFactory;
    public ResetSessionDialog mResetSessionDialog;
    public final ResetSessionDialog.Factory mResetSessionDialogFactory;
    public final UserTracker mUserTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ExitSessionDialog extends SystemUIDialog implements DialogInterface.OnClickListener {
        public final boolean mIsEphemeral;
        public final int mUserId;
        public final UserSwitcherController mUserSwitcherController;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public interface Factory {
            ExitSessionDialog create(int i, boolean z);
        }

        public ExitSessionDialog(Context context, UserSwitcherController userSwitcherController, int i, boolean z) {
            super(context);
            if (z) {
                setTitle(context.getString(R.string.guest_exit_dialog_title));
                setMessage(context.getString(R.string.guest_exit_dialog_message));
                setButton(-3, context.getString(R.string.cancel), this);
                setButton(-1, context.getString(R.string.guest_exit_dialog_button), this);
            } else {
                setTitle(context.getString(R.string.guest_exit_dialog_title_non_ephemeral));
                setMessage(context.getString(R.string.guest_exit_dialog_message_non_ephemeral));
                setButton(-3, context.getString(R.string.cancel), this);
                setButton(-2, context.getString(R.string.guest_exit_clear_data_button), this);
                setButton(-1, context.getString(R.string.guest_exit_save_data_button), this);
            }
            setCanceledOnTouchOutside(false);
            this.mUserSwitcherController = userSwitcherController;
            this.mUserId = i;
            this.mIsEphemeral = z;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (this.mIsEphemeral) {
                if (i == -1) {
                    UserSwitcherController userSwitcherController = this.mUserSwitcherController;
                    userSwitcherController.getUserInteractor().exitGuestUser(this.mUserId, -10000, false);
                    return;
                } else {
                    if (i == -3) {
                        cancel();
                        return;
                    }
                    return;
                }
            }
            if (i == -1) {
                UserSwitcherController userSwitcherController2 = this.mUserSwitcherController;
                userSwitcherController2.getUserInteractor().exitGuestUser(this.mUserId, -10000, false);
            } else if (i == -2) {
                UserSwitcherController userSwitcherController3 = this.mUserSwitcherController;
                userSwitcherController3.getUserInteractor().exitGuestUser(this.mUserId, -10000, true);
            } else if (i == -3) {
                cancel();
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ResetSessionDialog extends SystemUIDialog implements DialogInterface.OnClickListener {
        public final UiEventLogger mUiEventLogger;
        public final int mUserId;
        public final UserSwitcherController mUserSwitcherController;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public interface Factory {
            ResetSessionDialog create(int i);
        }

        public ResetSessionDialog(Context context, UserSwitcherController userSwitcherController, UiEventLogger uiEventLogger, int i) {
            super(context);
            setTitle(R.string.guest_reset_and_restart_dialog_title);
            setMessage(context.getString(R.string.guest_reset_and_restart_dialog_message));
            setButton(-3, context.getString(R.string.cancel), this);
            setButton(-1, context.getString(R.string.guest_reset_guest_confirm_button), this);
            setCanceledOnTouchOutside(false);
            this.mUserSwitcherController = userSwitcherController;
            this.mUiEventLogger = uiEventLogger;
            this.mUserId = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == -1) {
                this.mUiEventLogger.log(QSUserSwitcherEvent.QS_USER_GUEST_REMOVE);
                UserSwitcherController userSwitcherController = this.mUserSwitcherController;
                userSwitcherController.getUserInteractor().removeGuestUser(this.mUserId);
                return;
            }
            if (i == -3) {
                cancel();
            }
        }
    }

    public GuestResetOrExitSessionReceiver(UserTracker userTracker, BroadcastDispatcher broadcastDispatcher, ResetSessionDialog.Factory factory, ExitSessionDialog.Factory factory2) {
        this.mUserTracker = userTracker;
        this.mBroadcastDispatcher = broadcastDispatcher;
        this.mResetSessionDialogFactory = factory;
        this.mExitSessionDialogFactory = factory2;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        ResetSessionDialog resetSessionDialog = this.mResetSessionDialog;
        if (resetSessionDialog != null && resetSessionDialog.isShowing()) {
            this.mResetSessionDialog.cancel();
            this.mResetSessionDialog = null;
        }
        ExitSessionDialog exitSessionDialog = this.mExitSessionDialog;
        if (exitSessionDialog != null && exitSessionDialog.isShowing()) {
            this.mExitSessionDialog.cancel();
            this.mExitSessionDialog = null;
        }
        UserInfo userInfo = ((UserTrackerImpl) this.mUserTracker).getUserInfo();
        if (!userInfo.isGuest()) {
            return;
        }
        if ("android.intent.action.GUEST_RESET".equals(action)) {
            ResetSessionDialog create = this.mResetSessionDialogFactory.create(userInfo.id);
            this.mResetSessionDialog = create;
            create.show();
        } else if ("android.intent.action.GUEST_EXIT".equals(action)) {
            ExitSessionDialog create2 = this.mExitSessionDialogFactory.create(userInfo.id, userInfo.isEphemeral());
            this.mExitSessionDialog = create2;
            create2.show();
        }
    }
}
