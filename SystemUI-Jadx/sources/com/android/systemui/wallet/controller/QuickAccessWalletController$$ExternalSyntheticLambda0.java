package com.android.systemui.wallet.controller;

import android.app.PendingIntent;
import android.content.Intent;
import android.service.quickaccesswallet.QuickAccessWalletClient;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.wallet.ui.WalletActivity;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QuickAccessWalletController$$ExternalSyntheticLambda0 implements QuickAccessWalletClient.WalletPendingIntentCallback {
    public final /* synthetic */ QuickAccessWalletController f$0;
    public final /* synthetic */ ActivityStarter f$1;
    public final /* synthetic */ ActivityLaunchAnimator.Controller f$2;
    public final /* synthetic */ boolean f$3;

    public /* synthetic */ QuickAccessWalletController$$ExternalSyntheticLambda0(QuickAccessWalletController quickAccessWalletController, ActivityStarter activityStarter, ActivityLaunchAnimator.Controller controller, boolean z) {
        this.f$0 = quickAccessWalletController;
        this.f$1 = activityStarter;
        this.f$2 = controller;
        this.f$3 = z;
    }

    public final void onWalletPendingIntentRetrieved(PendingIntent pendingIntent) {
        Intent intent;
        QuickAccessWalletController quickAccessWalletController = this.f$0;
        ActivityStarter activityStarter = this.f$1;
        ActivityLaunchAnimator.Controller controller = this.f$2;
        boolean z = this.f$3;
        quickAccessWalletController.getClass();
        if (pendingIntent != null) {
            activityStarter.postStartActivityDismissingKeyguard(pendingIntent, controller);
            return;
        }
        if (!z) {
            intent = quickAccessWalletController.mQuickAccessWalletClient.createWalletIntent();
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = new Intent(quickAccessWalletController.mContext, (Class<?>) WalletActivity.class).setAction("android.intent.action.VIEW");
        }
        if (z) {
            activityStarter.startActivity(intent, true, controller, true);
        } else {
            activityStarter.postStartActivityDismissingKeyguard(intent, 0, controller);
        }
    }
}
