package com.android.systemui.qp;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomBluetoothSettingsView extends LinearLayout implements SubscreenQSControllerContract$View {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LinearLayout mBluetoothBackground;
    public ImageView mBluetoothButton;
    public final Context mContext;
    public final SubscreenBleController mSubscreenBleController;

    public SubroomBluetoothSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        SubscreenBleController subscreenBleController = SubscreenBleController.getInstance(context);
        this.mSubscreenBleController = subscreenBleController;
        subscreenBleController.mBleView = this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSubscreenBleController.registerReceiver(true);
        updateView(this.mSubscreenBleController.isEnabled());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d("SubroomBluetoothSettingsView", "SBSV onDetachedFromWindow");
        this.mSubscreenBleController.unRegisterReceiver(true);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mBluetoothButton = (ImageView) findViewById(R.id.bluetooth_image_view);
        this.mBluetoothBackground = (LinearLayout) findViewById(R.id.bluetooth_background);
        this.mBluetoothButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubroomBluetoothSettingsView$$ExternalSyntheticLambda0
            /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onClick(android.view.View r7) {
                /*
                    r6 = this;
                    com.android.systemui.qp.SubroomBluetoothSettingsView r6 = com.android.systemui.qp.SubroomBluetoothSettingsView.this
                    int r7 = com.android.systemui.qp.SubroomBluetoothSettingsView.$r8$clinit
                    r6.getClass()
                    java.lang.Class<com.android.systemui.knox.KnoxStateMonitor> r7 = com.android.systemui.knox.KnoxStateMonitor.class
                    java.lang.Object r7 = com.android.systemui.Dependency.get(r7)
                    com.android.systemui.knox.KnoxStateMonitor r7 = (com.android.systemui.knox.KnoxStateMonitor) r7
                    com.android.systemui.knox.KnoxStateMonitorImpl r7 = (com.android.systemui.knox.KnoxStateMonitorImpl) r7
                    boolean r7 = r7.isBluetoothTileBlocked()
                    java.lang.String r0 = "SubroomBluetoothSettingsView"
                    if (r7 == 0) goto L20
                    java.lang.String r6 = "Subscreen Bluetooth tile not available by KnoxStateMonitor."
                    android.util.Log.d(r0, r6)
                    goto Lac
                L20:
                    com.android.systemui.qp.SubscreenBleController r7 = r6.mSubscreenBleController
                    boolean r7 = r7.isTransient()
                    com.android.systemui.qp.SubscreenBleController r1 = r6.mSubscreenBleController
                    boolean r1 = r1.isEnabled()
                    java.lang.String r2 = "mBluetoothButton onClick,enabled = "
                    java.lang.String r3 = ",isTransient = "
                    com.android.keyguard.EmergencyButtonController$$ExternalSyntheticOutline0.m(r2, r1, r3, r7, r0)
                    if (r7 != 0) goto Lac
                    com.android.systemui.qp.SubscreenBleController r7 = r6.mSubscreenBleController
                    com.android.systemui.statusbar.policy.KeyguardStateController r0 = r7.mKeyguardStateController
                    com.android.systemui.statusbar.policy.KeyguardStateControllerImpl r0 = (com.android.systemui.statusbar.policy.KeyguardStateControllerImpl) r0
                    boolean r0 = r0.mShowing
                    r2 = 1
                    r3 = 0
                    if (r0 == 0) goto L9d
                    com.android.keyguard.KeyguardUpdateMonitor r7 = r7.mKeyguardUpdateMonitor
                    boolean r0 = r7.isSecure()
                    if (r0 == 0) goto L9d
                    int r0 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
                    boolean r7 = r7.getUserCanSkipBouncer(r0)
                    if (r7 != 0) goto L9d
                    java.lang.Class<com.android.systemui.util.SettingsHelper> r7 = com.android.systemui.util.SettingsHelper.class
                    java.lang.Object r7 = com.android.systemui.Dependency.get(r7)
                    com.android.systemui.util.SettingsHelper r7 = (com.android.systemui.util.SettingsHelper) r7
                    boolean r7 = r7.isLockFunctionsEnabled()
                    if (r7 != 0) goto L62
                    goto L9d
                L62:
                    android.content.Context r7 = com.android.systemui.qp.SubscreenBleController.mContext
                    java.lang.String r0 = "keyguard"
                    java.lang.Object r7 = r7.getSystemService(r0)
                    android.app.KeyguardManager r7 = (android.app.KeyguardManager) r7
                    android.content.Intent r0 = new android.content.Intent
                    r0.<init>()
                    java.lang.String r4 = "BLUETOOTH_STATE_CHANGE"
                    r0.setAction(r4)
                    android.content.Context r4 = com.android.systemui.qp.SubscreenBleController.mContext
                    r5 = 201326592(0xc000000, float:9.8607613E-32)
                    android.app.PendingIntent r0 = android.app.PendingIntent.getBroadcast(r4, r3, r0, r5)
                    android.content.Intent r3 = new android.content.Intent
                    r3.<init>()
                    java.lang.String r4 = "showCoverToast"
                    r3.putExtra(r4, r2)
                    java.lang.String r4 = "runOnCover"
                    r3.putExtra(r4, r2)
                    java.lang.String r4 = "afterKeyguardGone"
                    r3.putExtra(r4, r2)
                    java.lang.String r4 = "ignoreKeyguardState"
                    r3.putExtra(r4, r2)
                    r7.semSetPendingIntentAfterUnlock(r0, r3)
                    goto L9e
                L9d:
                    r2 = r3
                L9e:
                    if (r2 != 0) goto Lac
                    com.android.systemui.qp.SubscreenBleController r7 = r6.mSubscreenBleController
                    r0 = r1 ^ 1
                    com.android.systemui.statusbar.policy.BluetoothController r7 = r7.mBluetoothController
                    r7.setBluetoothEnabled(r0)
                    r6.updateView(r0)
                Lac:
                    java.lang.String r6 = com.android.systemui.util.SystemUIAnalytics.sCurrentScreenID
                    java.lang.String r7 = "QPBE2003"
                    com.android.systemui.util.SystemUIAnalytics.sendEventLog(r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qp.SubroomBluetoothSettingsView$$ExternalSyntheticLambda0.onClick(android.view.View):void");
            }
        });
        this.mBluetoothButton.setOnLongClickListener(new SubroomBluetoothSettingsView$$ExternalSyntheticLambda1());
    }

    @Override // com.android.systemui.qp.SubscreenQSControllerContract$View
    public final void updateView(boolean z) {
        Drawable drawable;
        int i;
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("SBSV updateView state: ", z, "SubroomBluetoothSettingsView");
        LinearLayout linearLayout = this.mBluetoothBackground;
        if (z) {
            drawable = this.mContext.getDrawable(R.drawable.subroom_active_background);
        } else {
            drawable = this.mContext.getDrawable(R.drawable.subroom_inactive_background);
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
        stringBuffer.append(this.mContext.getString(R.string.quick_settings_bluetooth_label));
        stringBuffer.append(",");
        stringBuffer.append(string);
        this.mBluetoothButton.setContentDescription(stringBuffer);
    }
}
