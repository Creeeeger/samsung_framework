package com.android.wm.shell.controlpanel.action;

import android.app.SemStatusBarManager;
import android.content.Context;
import android.content.Intent;
import com.android.wm.shell.controlpanel.GridUIManager;
import com.android.wm.shell.controlpanel.utils.ControlPanelUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QuickPanelAction extends MenuActionType {
    public final Context mContext;

    private QuickPanelAction(Context context) {
        this.mContext = context;
    }

    public static QuickPanelAction createAction(Context context) {
        return new QuickPanelAction(context);
    }

    @Override // com.android.wm.shell.controlpanel.action.MenuActionType
    public final void doControlAction(String str, GridUIManager gridUIManager) {
        Context context = this.mContext;
        if (!ControlPanelUtils.isQuickPanelPressAvailable(context, str)) {
            return;
        }
        SemStatusBarManager semStatusBarManager = (SemStatusBarManager) context.getSystemService("sem_statusbar");
        if (semStatusBarManager.isPanelExpanded()) {
            semStatusBarManager.collapsePanels();
            return;
        }
        if (ControlPanelUtils.isKidsMode(context)) {
            Intent intent = new Intent("com.sec.kidsplat.quickpanel.PANEL_OPEN");
            intent.putExtra("open_from_menu", true);
            context.sendBroadcast(intent);
        } else {
            SemStatusBarManager semStatusBarManager2 = (SemStatusBarManager) context.getSystemService("sem_statusbar");
            if (semStatusBarManager2 != null) {
                semStatusBarManager2.expandNotificationsPanel();
            }
        }
    }
}
