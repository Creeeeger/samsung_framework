package com.android.wm.shell.pip.tv;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.android.wm.shell.common.TvWindowMenuActionButton;
import com.android.wm.shell.pip.tv.TvPipAction;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipCustomAction extends TvPipAction {
    public final RemoteAction mRemoteAction;

    public TvPipCustomAction(int i, RemoteAction remoteAction, TvPipAction.SystemActionsHandler systemActionsHandler) {
        super(i, systemActionsHandler);
        Objects.requireNonNull(remoteAction);
        this.mRemoteAction = remoteAction;
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final void executeAction() {
        super.executeAction();
        try {
            this.mRemoteAction.getActionIntent().send();
        } catch (PendingIntent.CanceledException e) {
            if (ShellProtoLogCache.WM_SHELL_PICTURE_IN_PICTURE_enabled) {
                ShellProtoLogImpl.w(ShellProtoLogGroup.WM_SHELL_PICTURE_IN_PICTURE, -89364644, 0, "%s: Failed to send action, %s", "TvPipCustomAction", String.valueOf(e));
            }
        }
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final PendingIntent getPendingIntent() {
        return this.mRemoteAction.getActionIntent();
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final void populateButton(TvWindowMenuActionButton tvWindowMenuActionButton, Handler handler) {
        boolean z;
        boolean z2;
        if (tvWindowMenuActionButton != null && handler != null) {
            RemoteAction remoteAction = this.mRemoteAction;
            if (remoteAction.getContentDescription().length() > 0) {
                tvWindowMenuActionButton.setContentDescription(remoteAction.getContentDescription());
            } else {
                tvWindowMenuActionButton.setContentDescription(remoteAction.getTitle());
            }
            tvWindowMenuActionButton.setImageIconAsync(remoteAction.getIcon(), handler);
            int i = this.mActionType;
            boolean z3 = false;
            if (i != 1 && i != 5) {
                z = false;
            } else {
                z = true;
            }
            if (!z && !remoteAction.isEnabled()) {
                z2 = false;
            } else {
                z2 = true;
            }
            tvWindowMenuActionButton.setEnabled(z2);
            if (i == 1 || i == 5) {
                z3 = true;
            }
            tvWindowMenuActionButton.setIsCustomCloseAction(z3);
        }
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final Notification.Action toNotificationAction(Context context) {
        boolean z;
        RemoteAction remoteAction = this.mRemoteAction;
        Notification.Action.Builder builder = new Notification.Action.Builder(remoteAction.getIcon(), remoteAction.getTitle(), remoteAction.getActionIntent());
        Bundle bundle = new Bundle();
        bundle.putCharSequence("android.pictureContentDescription", remoteAction.getContentDescription());
        bundle.putBoolean("EXTRA_IS_PIP_CUSTOM_ACTION", true);
        builder.addExtras(bundle);
        int i = 0;
        int i2 = this.mActionType;
        if (i2 != 1 && i2 != 5) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            i = 4;
        }
        builder.setSemanticAction(i);
        builder.setContextual(true);
        return builder.build();
    }
}
