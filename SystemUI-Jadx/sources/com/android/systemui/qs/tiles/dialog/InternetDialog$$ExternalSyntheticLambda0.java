package com.android.systemui.qs.tiles.dialog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class InternetDialog$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ InternetDialog f$0;

    public /* synthetic */ InternetDialog$$ExternalSyntheticLambda0(InternetDialog internetDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = internetDialog;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.updateDialog(true);
                return;
            case 1:
                this.f$0.updateDialog(true);
                return;
            case 2:
                this.f$0.setProgressBarVisible(false);
                return;
            case 3:
                InternetDialog internetDialog = this.f$0;
                internetDialog.mIsSearchingHidden = true;
                internetDialog.mInternetDialogSubTitle.setText(internetDialog.getSubtitleText());
                return;
            case 4:
                this.f$0.updateDialog(true);
                return;
            case 5:
                this.f$0.updateDialog(true);
                return;
            case 6:
                this.f$0.updateDialog(true);
                return;
            case 7:
                InternetDialog internetDialog2 = this.f$0;
                internetDialog2.mHandler.post(new InternetDialog$$ExternalSyntheticLambda9(internetDialog2, internetDialog2.getSignalStrengthDrawable(internetDialog2.mDefaultDataSubId), 1));
                return;
            case 8:
                this.f$0.updateDialog(true);
                return;
            case 9:
                this.f$0.updateDialog(true);
                return;
            case 10:
                this.f$0.updateDialog(true);
                return;
            case 11:
                this.f$0.updateDialog(true);
                return;
            case 12:
                this.f$0.updateDialog(true);
                return;
            default:
                this.f$0.updateDialog(true);
                return;
        }
    }
}
