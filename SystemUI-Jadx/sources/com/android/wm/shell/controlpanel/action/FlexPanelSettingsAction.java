package com.android.wm.shell.controlpanel.action;

import android.content.Context;
import android.content.Intent;
import com.android.wm.shell.controlpanel.GridUIManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FlexPanelSettingsAction extends MenuActionType {
    public final Context mContext;

    private FlexPanelSettingsAction(Context context) {
        this.mContext = context;
    }

    public static FlexPanelSettingsAction createAction(Context context) {
        return new FlexPanelSettingsAction(context);
    }

    @Override // com.android.wm.shell.controlpanel.action.MenuActionType
    public final void doControlAction(String str, GridUIManager gridUIManager) {
        this.mContext.startActivity(new Intent("com.samsung.settings.FLEX_PANEL_SETTINGS").setFlags(268468224));
    }
}
