package com.android.systemui.qs.tiles;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import android.widget.Switch;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Prefs;
import com.android.systemui.R;
import com.android.systemui.animation.DialogCuj;
import com.android.systemui.animation.DialogLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.DataSaverController;
import com.android.systemui.statusbar.policy.DataSaverControllerImpl;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DataSaverTile extends SQSTileImpl implements DataSaverController.Listener {
    public final DataSaverController mDataSaverController;
    public final DialogLaunchAnimator mDialogLaunchAnimator;

    public DataSaverTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, DataSaverController dataSaverController, DialogLaunchAnimator dialogLaunchAnimator) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mDataSaverController = dataSaverController;
        this.mDialogLaunchAnimator = dialogLaunchAnimator;
        dataSaverController.observe(((QSTileImpl) this).mLifecycle, this);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        return new Intent("android.settings.DATA_SAVER_SETTINGS");
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return IKnoxCustomManager.Stub.TRANSACTION_registerSystemUiCallback;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.data_saver);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(final View view) {
        if (!((QSTile.BooleanState) this.mState).value && !Prefs.getBoolean(this.mContext, "QsDataSaverDialogShown", false)) {
            this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.DataSaverTile$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    final DataSaverTile dataSaverTile = DataSaverTile.this;
                    View view2 = view;
                    dataSaverTile.getClass();
                    SystemUIDialog systemUIDialog = new SystemUIDialog(dataSaverTile.mContext);
                    systemUIDialog.setTitle(android.R.string.keyboardview_keycode_enter);
                    systemUIDialog.setMessage(android.R.string.keyboardview_keycode_delete);
                    systemUIDialog.setPositiveButton(android.R.string.keyboardview_keycode_done, new DialogInterface.OnClickListener() { // from class: com.android.systemui.qs.tiles.DataSaverTile$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            DataSaverTile dataSaverTile2 = DataSaverTile.this;
                            dataSaverTile2.toggleDataSaver();
                            Prefs.putBoolean(dataSaverTile2.mContext, "QsDataSaverDialogShown", true);
                        }
                    });
                    systemUIDialog.setNeutralButton(android.R.string.cancel, null);
                    SystemUIDialog.setShowForAllUsers(systemUIDialog);
                    if (view2 != null) {
                        DialogCuj dialogCuj = new DialogCuj(58, "start_data_saver");
                        DialogLaunchAnimator dialogLaunchAnimator = dataSaverTile.mDialogLaunchAnimator;
                        dialogLaunchAnimator.getClass();
                        DialogLaunchAnimator.showFromView$default(dialogLaunchAnimator, systemUIDialog, view2, dialogCuj, false, 8);
                        return;
                    }
                    systemUIDialog.show();
                }
            });
        } else {
            toggleDataSaver();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleUpdateState(QSTile.State state, Object obj) {
        boolean isDataSaverEnabled;
        int i;
        int i2;
        QSTile.BooleanState booleanState = (QSTile.BooleanState) state;
        if (obj instanceof Boolean) {
            isDataSaverEnabled = ((Boolean) obj).booleanValue();
        } else {
            isDataSaverEnabled = ((DataSaverControllerImpl) this.mDataSaverController).isDataSaverEnabled();
        }
        booleanState.value = isDataSaverEnabled;
        if (isDataSaverEnabled) {
            i = 2;
        } else {
            i = 1;
        }
        booleanState.state = i;
        String string = this.mContext.getString(R.string.data_saver);
        booleanState.label = string;
        booleanState.contentDescription = string;
        if (booleanState.value) {
            i2 = R.drawable.qs_data_saver_icon_on;
        } else {
            i2 = R.drawable.qs_data_saver_icon_off;
        }
        booleanState.icon = QSTileImpl.ResourceIcon.get(i2);
        booleanState.expandedAccessibilityClassName = Switch.class.getName();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    @Override // com.android.systemui.statusbar.policy.DataSaverController.Listener
    public final void onDataSaverChanged(boolean z) {
        refreshState(Boolean.valueOf(z));
    }

    public final void toggleDataSaver() {
        QSTile.BooleanState booleanState = (QSTile.BooleanState) this.mState;
        DataSaverControllerImpl dataSaverControllerImpl = (DataSaverControllerImpl) this.mDataSaverController;
        booleanState.value = !dataSaverControllerImpl.isDataSaverEnabled();
        boolean z = ((QSTile.BooleanState) this.mState).value;
        dataSaverControllerImpl.mPolicyManager.setRestrictBackground(z);
        try {
            dataSaverControllerImpl.mPolicyListener.onRestrictBackgroundChanged(z);
        } catch (RemoteException unused) {
        }
        refreshState(Boolean.valueOf(((QSTile.BooleanState) this.mState).value));
    }
}
