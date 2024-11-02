package com.android.wm.shell.pip.tv;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Handler;
import com.android.wm.shell.common.TvWindowMenuActionButton;
import com.android.wm.shell.pip.tv.TvPipAction;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TvPipSystemAction extends TvPipAction {
    public final PendingIntent mBroadcastIntent;
    public int mIconResource;
    public int mTitleResource;

    public TvPipSystemAction(int i, int i2, int i3, String str, Context context, TvPipAction.SystemActionsHandler systemActionsHandler) {
        super(i, systemActionsHandler);
        if (i2 == this.mTitleResource) {
            int i4 = this.mIconResource;
        }
        this.mTitleResource = i2;
        this.mIconResource = i3;
        this.mBroadcastIntent = TvPipNotificationController.createPendingIntent(context, str);
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final PendingIntent getPendingIntent() {
        return this.mBroadcastIntent;
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final void populateButton(TvWindowMenuActionButton tvWindowMenuActionButton, Handler handler) {
        tvWindowMenuActionButton.setContentDescription(tvWindowMenuActionButton.getContext().getString(this.mTitleResource));
        int i = this.mIconResource;
        if (i != 0) {
            tvWindowMenuActionButton.mIconImageView.setImageResource(i);
        }
        tvWindowMenuActionButton.setEnabled(true);
        tvWindowMenuActionButton.setIsCustomCloseAction(false);
    }

    @Override // com.android.wm.shell.pip.tv.TvPipAction
    public final Notification.Action toNotificationAction(Context context) {
        boolean z;
        Notification.Action.Builder builder = new Notification.Action.Builder(Icon.createWithResource(context, this.mIconResource), context.getString(this.mTitleResource), this.mBroadcastIntent);
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
