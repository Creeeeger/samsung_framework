package com.android.server.accessibility.autoaction.actiontype;

import android.R;
import android.app.Instrumentation;
import android.app.StatusBarManager;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.accessibility.util.AccessibilityUtils;
import com.android.server.LocalServices;
import com.android.server.statusbar.StatusBarManagerInternal;

/* loaded from: classes.dex */
public class NavigationBarAction extends CornerActionType {
    public Context mContext;
    public String mType;
    public int mUserId;

    public NavigationBarAction(Context context, String str, int i) {
        this.mContext = context;
        this.mType = str;
        this.mUserId = i;
    }

    public static NavigationBarAction createAction(Context context, String str, int i) {
        return new NavigationBarAction(context, str, i);
    }

    public static int getStringResId(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1961431229:
                if (str.equals("accessibility_button")) {
                    c = 0;
                    break;
                }
                break;
            case 3015911:
                if (str.equals("back")) {
                    c = 1;
                    break;
                }
                break;
            case 3208415:
                if (str.equals("home")) {
                    c = 2;
                    break;
                }
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return R.string.android_upgrading_complete;
            case 1:
                return R.string.android_upgrading_fstrim;
            case 2:
                return R.string.anr_activity_process;
            case 3:
                return R.string.app_category_image;
            default:
                throw new IllegalArgumentException("Wrong NavigationBar Action Type");
        }
    }

    @Override // com.android.server.accessibility.autoaction.actiontype.CornerActionType
    public void performCornerAction(int i) {
        StatusBarManagerInternal statusBarManagerInternal;
        String str = this.mType;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1961431229:
                if (str.equals("accessibility_button")) {
                    c = 0;
                    break;
                }
                break;
            case 3015911:
                if (str.equals("back")) {
                    c = 1;
                    break;
                }
                break;
            case 3208415:
                if (str.equals("home")) {
                    c = 2;
                    break;
                }
                break;
            case 1082295672:
                if (str.equals("recents")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_button_mode", 0, this.mUserId) != 1) {
                    AccessibilityManager.getInstance(this.mContext).notifyAccessibilityButtonClicked(i);
                    return;
                }
                Intent intent = new Intent("com.android.systemui.accessibility.floatingmenu.SHOW");
                intent.setPackage("com.android.systemui");
                this.mContext.sendBroadcast(intent);
                return;
            case 1:
                new Thread(new Runnable() { // from class: com.android.server.accessibility.autoaction.actiontype.NavigationBarAction.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(100L);
                            new Instrumentation().sendKeyDownUpSync(4);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }).start();
                return;
            case 2:
                this.mContext.sendBroadcast(new Intent("SYSTEM_ACTION_HOME"));
                return;
            case 3:
                if (AccessibilityUtils.makeToastForCoverScreen(this.mContext, (String) null) || (statusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class)) == null) {
                    return;
                }
                statusBarManagerInternal.toggleRecentAppsToType(StatusBarManager.getNaturalBarTypeByDisplayId(this.mContext, i));
                return;
            default:
                throw new IllegalArgumentException("Wrong NavigationBar Action Type");
        }
    }
}
