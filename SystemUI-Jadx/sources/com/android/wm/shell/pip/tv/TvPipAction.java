package com.android.wm.shell.pip.tv;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import com.android.wm.shell.common.TvWindowMenuActionButton;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class TvPipAction {
    public final int mActionType;
    public final SystemActionsHandler mSystemActionsHandler;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SystemActionsHandler {
        void executeAction(int i);
    }

    public TvPipAction(int i, SystemActionsHandler systemActionsHandler) {
        Objects.requireNonNull(systemActionsHandler);
        this.mActionType = i;
        this.mSystemActionsHandler = systemActionsHandler;
    }

    public void executeAction() {
        this.mSystemActionsHandler.executeAction(this.mActionType);
    }

    public abstract PendingIntent getPendingIntent();

    public abstract void populateButton(TvWindowMenuActionButton tvWindowMenuActionButton, Handler handler);

    public abstract Notification.Action toNotificationAction(Context context);
}
