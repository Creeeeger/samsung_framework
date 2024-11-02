package com.android.systemui.qp;

import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomAirplaneModeSettingsView extends LinearLayout implements SubscreenQSControllerContract$View {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LinearLayout mAirplaneBackground;
    public ImageView mAirplaneButton;
    public final Context mContext;
    public final SubscreenAirplaneController mSubscreenAirplaneController;

    public SubroomAirplaneModeSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        SubscreenAirplaneController subscreenAirplaneController = SubscreenAirplaneController.getInstance(context);
        this.mSubscreenAirplaneController = subscreenAirplaneController;
        subscreenAirplaneController.mAirplaneView = this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSubscreenAirplaneController.registerReceiver(true);
        this.mSubscreenAirplaneController.getClass();
        updateView(((SettingsHelper) Dependency.get(SettingsHelper.class)).isAirplaneModeOn());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mSubscreenAirplaneController.unRegisterReceiver(true);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mAirplaneButton = (ImageView) findViewById(R.id.airplane_image_view);
        this.mAirplaneBackground = (LinearLayout) findViewById(R.id.airplane_background);
        this.mAirplaneButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubroomAirplaneModeSettingsView subroomAirplaneModeSettingsView = SubroomAirplaneModeSettingsView.this;
                int i = SubroomAirplaneModeSettingsView.$r8$clinit;
                subroomAirplaneModeSettingsView.getClass();
                if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isAirplaneModeTileBlocked()) {
                    Log.d("SubroomAirplaneModeSettingsView", "Subscreen Airplane Mode tile not available by KnoxStateMonitor.");
                } else {
                    subroomAirplaneModeSettingsView.mSubscreenAirplaneController.getClass();
                    boolean z = false;
                    if (((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isSecure() && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isLockFunctionsEnabled()) {
                        KeyguardManager keyguardManager = (KeyguardManager) SubscreenAirplaneController.mContext.getSystemService("keyguard");
                        Intent intent = new Intent();
                        intent.setAction("AIRPLANE_MODE_CHANGE");
                        PendingIntent broadcast = PendingIntent.getBroadcast(SubscreenAirplaneController.mContext, 0, intent, 201326592);
                        Intent intent2 = new Intent();
                        intent2.putExtra("showCoverToast", true);
                        intent2.putExtra("runOnCover", true);
                        intent2.putExtra("afterKeyguardGone", true);
                        intent2.putExtra("ignoreKeyguardState", true);
                        keyguardManager.semSetPendingIntentAfterUnlock(broadcast, intent2);
                        z = true;
                    }
                    if (!z) {
                        subroomAirplaneModeSettingsView.mSubscreenAirplaneController.getClass();
                        boolean z2 = !((SettingsHelper) Dependency.get(SettingsHelper.class)).isAirplaneModeOn();
                        subroomAirplaneModeSettingsView.mSubscreenAirplaneController.mConnectivityManager.setAirplaneMode(z2);
                        subroomAirplaneModeSettingsView.updateView(z2);
                    }
                }
                SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2004");
            }
        });
        this.mAirplaneButton.setOnLongClickListener(new SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda1());
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$View
    public final void updateView(boolean z) {
        Drawable drawable;
        int i;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("SASV updateView state: ", z, "SubroomAirplaneModeSettingsView");
        LinearLayout linearLayout = this.mAirplaneBackground;
        if (z) {
            drawable = this.mContext.getResources().getDrawable(R.drawable.subroom_active_background);
        } else {
            drawable = this.mContext.getResources().getDrawable(R.drawable.subroom_inactive_background);
        }
        linearLayout.setBackground(drawable);
        StringBuffer stringBuffer = new StringBuffer();
        Context context = this.mContext;
        if (z) {
            i = R.string.accessibility_desc_on;
        } else {
            i = R.string.accessibility_desc_off;
        }
        String string = context.getString(i);
        stringBuffer.append(this.mContext.getString(R.string.airplane_mode));
        stringBuffer.append(",");
        stringBuffer.append(string);
        this.mAirplaneButton.setContentDescription(stringBuffer);
    }
}
