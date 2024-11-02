package com.android.wm.shell.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.wm.shell.common.DnDSnackBarWindow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DnDSnackBarController implements DnDSnackBarWindow.SnackBarCallbacks {
    public final Context mContext;
    public final SharedPreferences mSnackBarPref;
    public DnDSnackBarWindow mView;
    public boolean mWasShownSnackBar;

    public DnDSnackBarController(Context context) {
        Context createWindowContext = context.createWindowContext(2008, null);
        this.mContext = createWindowContext;
        SharedPreferences sharedPreferences = createWindowContext.getSharedPreferences("snack_bar_pref_name", 0);
        this.mSnackBarPref = sharedPreferences;
        this.mWasShownSnackBar = sharedPreferences.getBoolean("snack_bar_shown", false);
    }
}
