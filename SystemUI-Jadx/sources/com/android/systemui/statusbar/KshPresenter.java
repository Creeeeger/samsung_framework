package com.android.systemui.statusbar;

import android.R;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.view.ContextThemeWrapper;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.model.KshData;
import com.android.systemui.statusbar.policy.ConfigurationController;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KshPresenter {
    public final ConfigurationController mConfigurationController;
    public final Context mContext;
    public boolean mIsNightModeOn;
    public KshData mKshData;
    public KshView mKshView;
    public final Configuration mLastConfig;
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public final AnonymousClass1 mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.statusbar.KshPresenter.1
        @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
        public final void onConfigChanged(Configuration configuration) {
            boolean z;
            int i;
            boolean z2;
            KshPresenter kshPresenter = KshPresenter.this;
            boolean z3 = true;
            if (kshPresenter.mLastConfig.orientation != configuration.orientation) {
                Dialog dialog = kshPresenter.mKshView.mKeyboardShortcutsDialog;
                if (dialog != null && dialog.isShowing()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    KshView kshView = kshPresenter.mKshView;
                    List list = kshPresenter.mKshData.mKshGroups;
                    Dialog dialog2 = kshView.mKeyboardShortcutsDialog;
                    if (dialog2 != null) {
                        dialog2.dismiss();
                        kshView.mKeyboardShortcutsDialog.setOnKeyListener(null);
                        kshView.mKeyboardShortcutsDialog = null;
                    }
                    kshView.mHandler.post(new KshView$$ExternalSyntheticLambda1(kshView, list));
                }
            }
            if ((configuration.uiMode & 32) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (kshPresenter.mIsNightModeOn != z) {
                kshPresenter.mIsNightModeOn = z;
                Dialog dialog3 = kshPresenter.mKshView.mKeyboardShortcutsDialog;
                if (dialog3 == null || !dialog3.isShowing()) {
                    z3 = false;
                }
                if (z3) {
                    KshView kshView2 = kshPresenter.mKshView;
                    if (kshPresenter.mIsNightModeOn) {
                        i = R.style.Theme.DeviceDefault.Dialog;
                    } else {
                        i = R.style.Theme.DeviceDefault.Light.Dialog;
                    }
                    kshView2.mContext = new ContextThemeWrapper(kshPresenter.mContext, i);
                    KshView kshView3 = kshPresenter.mKshView;
                    List list2 = kshPresenter.mKshData.mKshGroups;
                    Dialog dialog4 = kshView3.mKeyboardShortcutsDialog;
                    if (dialog4 != null) {
                        dialog4.dismiss();
                        kshView3.mKeyboardShortcutsDialog.setOnKeyListener(null);
                        kshView3.mKeyboardShortcutsDialog = null;
                    }
                    kshView3.mHandler.post(new KshView$$ExternalSyntheticLambda1(kshView3, list2));
                }
            }
            kshPresenter.mLastConfig.updateFrom(configuration);
        }
    };
    public final AnonymousClass2 mPogoKeyboardChangedReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.KshPresenter.2
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z;
            Dialog dialog = KshPresenter.this.mKshView.mKeyboardShortcutsDialog;
            if (dialog != null && dialog.isShowing()) {
                z = true;
            } else {
                z = false;
            }
            if (z && "com.samsung.android.input.POGO_KEYBOARD_CHANGED".equals(intent.getAction())) {
                List list = KshPresenter.this.mKshData.mKshGroups;
                list.set(list.size() - 2, KshPresenter.this.mKshData.getSamsungSystemShortcuts());
                KshPresenter kshPresenter = KshPresenter.this;
                kshPresenter.mKshData.mKshGroups = list;
                KshView kshView = kshPresenter.mKshView;
                Dialog dialog2 = kshView.mKeyboardShortcutsDialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                    kshView.mKeyboardShortcutsDialog.setOnKeyListener(null);
                    kshView.mKeyboardShortcutsDialog = null;
                }
                kshView.mHandler.post(new KshView$$ExternalSyntheticLambda1(kshView, list));
            }
        }
    };

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.KshPresenter$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.statusbar.KshPresenter$2] */
    public KshPresenter(Context context) {
        boolean z;
        int i;
        this.mContext = context;
        Configuration configuration = new Configuration();
        this.mLastConfig = configuration;
        configuration.updateFrom(context.getResources().getConfiguration());
        if ((configuration.uiMode & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mIsNightModeOn = z;
        if (this.mIsNightModeOn) {
            i = R.style.Theme.DeviceDefault.Dialog;
        } else {
            i = R.style.Theme.DeviceDefault.Light.Dialog;
        }
        this.mKshView = new KshView(new ContextThemeWrapper(context, i), this);
        this.mKshData = new KshData(context);
        this.mConfigurationController = (ConfigurationController) Dependency.get(ConfigurationController.class);
    }

    public KshData getKshData() {
        return this.mKshData;
    }

    public KshView getKshView() {
        return this.mKshView;
    }
}
