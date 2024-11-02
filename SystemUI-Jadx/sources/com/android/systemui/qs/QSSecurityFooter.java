package com.android.systemui.qs;

import android.app.Dialog;
import android.app.admin.DeviceAdminInfo;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.qs.bar.SecurityFooterBar;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.statusbar.policy.SecurityController;
import com.android.systemui.statusbar.policy.SecurityControllerImpl;
import com.android.systemui.util.ShadowDelegateUtil;
import com.android.systemui.util.ViewController;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSSecurityFooter extends ViewController implements View.OnClickListener, DialogInterface.OnClickListener {
    public final ActivityStarter mActivityStarter;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Callback mCallback;
    public final Context mContext;
    public SystemUIDialog mDialog;
    public final DevicePolicyManager mDpm;
    public final TextView mFooterText;
    public CharSequence mFooterTextContent;
    public final H mHandler;
    public boolean mIsVisible;
    public final Handler mMainHandler;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementDialogCaCertStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementDialogNetworkStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementDialogStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementMessageSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementMonitoringStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementMultipleVpnStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mManagementTitleSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mMonitoringSubtitleCaCertStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mMonitoringSubtitleNetworkStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mMonitoringSubtitleVpnStringSupplier;
    public final ImageView mPrimaryFooterIcon;
    public Drawable mPrimaryFooterIconDrawable;
    public int mPrimaryFooterIconId;
    public final AnonymousClass1 mReceiver;
    public final SecurityController mSecurityController;
    public final AtomicBoolean mShouldUseSettingsButton;
    public final AnonymousClass3 mUpdateDisplayState;
    public final AnonymousClass2 mUpdatePrimaryIcon;
    public final UserTracker mUserTracker;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mViewPoliciesButtonStringSupplier;
    public SecurityFooterBar mVisibilityChangedListener;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mWorkProfileDialogCaCertStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mWorkProfileDialogNetworkStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mWorkProfileMonitoringStringSupplier;
    public final QSSecurityFooter$$ExternalSyntheticLambda0 mWorkProfileNetworkStringSupplier;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Callback implements SecurityController.SecurityControllerCallback {
        public /* synthetic */ Callback(QSSecurityFooter qSSecurityFooter, int i) {
            this();
        }

        @Override // com.android.systemui.statusbar.policy.SecurityController.SecurityControllerCallback
        public final void onStateChanged() {
            QSSecurityFooter.this.mHandler.sendEmptyMessage(1);
        }

        private Callback() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public /* synthetic */ H(QSSecurityFooter qSSecurityFooter, Looper looper, int i) {
            this(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            String str = null;
            try {
                int i = message.what;
                if (i == 1) {
                    str = "handleRefreshState";
                    QSSecurityFooter.m1325$$Nest$mhandleRefreshState(QSSecurityFooter.this);
                } else if (i == 0) {
                    str = "handleClick";
                    QSSecurityFooter qSSecurityFooter = QSSecurityFooter.this;
                    qSSecurityFooter.mShouldUseSettingsButton.set(false);
                    qSSecurityFooter.mHandler.post(new QSSecurityFooter$$ExternalSyntheticLambda4(qSSecurityFooter));
                    DevicePolicyEventLogger.createEvent(57).write();
                }
            } catch (Throwable th) {
                Log.w("QSSecurityFooter", "Error in " + str, th);
            }
        }

        private H(Looper looper) {
            super(looper);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class VpnSpan extends ClickableSpan {
        public VpnSpan() {
        }

        public final boolean equals(Object obj) {
            return obj instanceof VpnSpan;
        }

        public final int hashCode() {
            return 314159257;
        }

        @Override // android.text.style.ClickableSpan
        public final void onClick(View view) {
            Intent intent = new Intent("android.settings.VPN_SETTINGS");
            QSSecurityFooter.this.mDialog.dismiss();
            QSSecurityFooter.this.mActivityStarter.postStartActivityDismissingKeyguard(intent, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02f7  */
    /* renamed from: -$$Nest$mhandleRefreshState, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m1325$$Nest$mhandleRefreshState(com.android.systemui.qs.QSSecurityFooter r21) {
        /*
            Method dump skipped, instructions count: 833
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.QSSecurityFooter.m1325$$Nest$mhandleRefreshState(com.android.systemui.qs.QSSecurityFooter):void");
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v18, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v19, types: [com.android.systemui.qs.QSSecurityFooter$2] */
    /* JADX WARN: Type inference failed for: r0v20, types: [com.android.systemui.qs.QSSecurityFooter$3] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.qs.QSSecurityFooter$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0] */
    public QSSecurityFooter(View view, UserTracker userTracker, Handler handler, ActivityStarter activityStarter, SecurityController securityController, Looper looper, BroadcastDispatcher broadcastDispatcher) {
        super(view);
        final int i = 0;
        this.mCallback = new Callback(this, i);
        this.mShouldUseSettingsButton = new AtomicBoolean(false);
        this.mFooterTextContent = null;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.systemui.qs.QSSecurityFooter.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.app.action.SHOW_DEVICE_MONITORING_DIALOG")) {
                    QSSecurityFooter qSSecurityFooter = QSSecurityFooter.this;
                    qSSecurityFooter.mShouldUseSettingsButton.set(false);
                    qSSecurityFooter.mHandler.post(new QSSecurityFooter$$ExternalSyntheticLambda4(qSSecurityFooter));
                }
            }
        };
        this.mManagementTitleSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i2 = 6;
        this.mManagementMessageSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i2) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i3 = 7;
        this.mManagementMonitoringStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i3) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i4 = 8;
        this.mManagementMultipleVpnStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i4) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i5 = 9;
        this.mWorkProfileMonitoringStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i5) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i6 = 10;
        this.mWorkProfileNetworkStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i6) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i7 = 11;
        this.mMonitoringSubtitleCaCertStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i7) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i8 = 12;
        this.mMonitoringSubtitleNetworkStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i8) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i9 = 13;
        this.mMonitoringSubtitleVpnStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i9) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i10 = 14;
        this.mViewPoliciesButtonStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i10) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i11 = 1;
        this.mManagementDialogStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i11) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i12 = 2;
        this.mManagementDialogCaCertStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i12) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i13 = 3;
        this.mWorkProfileDialogCaCertStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i13) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i14 = 4;
        this.mManagementDialogNetworkStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i14) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        final int i15 = 5;
        this.mWorkProfileDialogNetworkStringSupplier = new Supplier(this) { // from class: com.android.systemui.qs.QSSecurityFooter$$ExternalSyntheticLambda0
            public final /* synthetic */ QSSecurityFooter f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i15) {
                    case 0:
                        Context context = this.f$0.mContext;
                        if (context == null) {
                            return null;
                        }
                        return context.getString(R.string.monitoring_title_device_owned);
                    case 1:
                        Context context2 = this.f$0.mContext;
                        if (context2 == null) {
                            return null;
                        }
                        return context2.getString(R.string.monitoring_description_management);
                    case 2:
                        Context context3 = this.f$0.mContext;
                        if (context3 == null) {
                            return null;
                        }
                        return context3.getString(R.string.monitoring_description_management_ca_certificate);
                    case 3:
                        Context context4 = this.f$0.mContext;
                        if (context4 == null) {
                            return null;
                        }
                        return context4.getString(R.string.monitoring_description_managed_profile_ca_certificate);
                    case 4:
                        Context context5 = this.f$0.mContext;
                        if (context5 == null) {
                            return null;
                        }
                        return context5.getString(R.string.monitoring_description_management_network_logging);
                    case 5:
                        Context context6 = this.f$0.mContext;
                        if (context6 == null) {
                            return null;
                        }
                        return context6.getString(R.string.monitoring_description_managed_profile_network_logging);
                    case 6:
                        Context context7 = this.f$0.mContext;
                        if (context7 == null) {
                            return null;
                        }
                        return context7.getString(R.string.quick_settings_disclosure_management);
                    case 7:
                        Context context8 = this.f$0.mContext;
                        if (context8 == null) {
                            return null;
                        }
                        return context8.getString(R.string.quick_settings_disclosure_management_monitoring);
                    case 8:
                        Context context9 = this.f$0.mContext;
                        if (context9 == null) {
                            return null;
                        }
                        return context9.getString(R.string.quick_settings_disclosure_management_vpns);
                    case 9:
                        Context context10 = this.f$0.mContext;
                        if (context10 == null) {
                            return null;
                        }
                        return context10.getString(R.string.quick_settings_disclosure_managed_profile_monitoring);
                    case 10:
                        Context context11 = this.f$0.mContext;
                        if (context11 == null) {
                            return null;
                        }
                        return context11.getString(R.string.quick_settings_disclosure_managed_profile_network_activity);
                    case 11:
                        Context context12 = this.f$0.mContext;
                        if (context12 == null) {
                            return null;
                        }
                        return context12.getString(R.string.monitoring_subtitle_ca_certificate);
                    case 12:
                        Context context13 = this.f$0.mContext;
                        if (context13 == null) {
                            return null;
                        }
                        return context13.getString(R.string.monitoring_subtitle_network_logging);
                    case 13:
                        Context context14 = this.f$0.mContext;
                        if (context14 == null) {
                            return null;
                        }
                        return context14.getString(R.string.monitoring_subtitle_vpn);
                    default:
                        Context context15 = this.f$0.mContext;
                        if (context15 == null) {
                            return null;
                        }
                        return context15.getString(R.string.monitoring_button_view_policies);
                }
            }
        };
        this.mUpdatePrimaryIcon = new Runnable() { // from class: com.android.systemui.qs.QSSecurityFooter.2
            @Override // java.lang.Runnable
            public final void run() {
                QSSecurityFooter qSSecurityFooter = QSSecurityFooter.this;
                Drawable drawable = qSSecurityFooter.mPrimaryFooterIconDrawable;
                if (drawable == null) {
                    drawable = qSSecurityFooter.mContext.getDrawable(qSSecurityFooter.mPrimaryFooterIconId);
                }
                Resources resources = QSSecurityFooter.this.mContext.getResources();
                ImageView imageView = QSSecurityFooter.this.mPrimaryFooterIcon;
                ShadowDelegateUtil shadowDelegateUtil = ShadowDelegateUtil.INSTANCE;
                float dimension = resources.getDimension(R.dimen.security_shadow_radius);
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sec_qs_footer_icon_size);
                shadowDelegateUtil.getClass();
                imageView.setImageDrawable(ShadowDelegateUtil.createShadowDrawable(drawable, dimension, 0.2f, dimensionPixelSize));
            }
        };
        this.mUpdateDisplayState = new Runnable() { // from class: com.android.systemui.qs.QSSecurityFooter.3
            @Override // java.lang.Runnable
            public final void run() {
                int i16;
                QSSecurityFooter qSSecurityFooter = QSSecurityFooter.this;
                CharSequence charSequence = qSSecurityFooter.mFooterTextContent;
                if (charSequence != null) {
                    qSSecurityFooter.mFooterText.setText(charSequence);
                }
                QSSecurityFooter qSSecurityFooter2 = QSSecurityFooter.this;
                View view2 = qSSecurityFooter2.mView;
                boolean z = false;
                if (!qSSecurityFooter2.mIsVisible) {
                    i16 = 8;
                } else {
                    i16 = 0;
                }
                view2.setVisibility(i16);
                QSSecurityFooter qSSecurityFooter3 = QSSecurityFooter.this;
                SecurityFooterBar securityFooterBar = qSSecurityFooter3.mVisibilityChangedListener;
                if (securityFooterBar != null) {
                    int visibility = qSSecurityFooter3.mView.getVisibility();
                    securityFooterBar.getClass();
                    if (visibility == 0) {
                        z = true;
                    }
                    securityFooterBar.showBar(z);
                }
            }
        };
        this.mFooterText = (TextView) this.mView.findViewById(R.id.footer_text);
        this.mPrimaryFooterIcon = (ImageView) this.mView.findViewById(R.id.primary_footer_icon);
        this.mPrimaryFooterIconId = R.drawable.quickpanel_icon_managed_device;
        Context context = view.getContext();
        this.mContext = context;
        this.mDpm = (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class);
        this.mMainHandler = handler;
        this.mActivityStarter = activityStarter;
        this.mSecurityController = securityController;
        this.mHandler = new H(this, looper, i);
        this.mUserTracker = userTracker;
        this.mBroadcastDispatcher = broadcastDispatcher;
        init();
    }

    public View createDialogView() {
        String string;
        String string2;
        String string3;
        SpannableStringBuilder spannableStringBuilder;
        boolean z;
        int i;
        boolean z2;
        int i2;
        Drawable loadIcon;
        boolean z3 = false;
        CharSequence charSequence = null;
        if (((SecurityControllerImpl) this.mSecurityController).isParentalControlsEnabled()) {
            View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.sec_quick_settings_footer_dialog_parental_controls, (ViewGroup) null, false);
            DeviceAdminInfo deviceAdminInfo = ((SecurityControllerImpl) this.mSecurityController).getDeviceAdminInfo();
            SecurityControllerImpl securityControllerImpl = (SecurityControllerImpl) this.mSecurityController;
            if (deviceAdminInfo == null) {
                securityControllerImpl.getClass();
                loadIcon = null;
            } else {
                loadIcon = deviceAdminInfo.loadIcon(securityControllerImpl.mPackageManager);
            }
            if (loadIcon != null) {
                ((ImageView) inflate.findViewById(R.id.parental_controls_icon)).setImageDrawable(loadIcon);
            }
            TextView textView = (TextView) inflate.findViewById(R.id.parental_controls_title);
            SecurityControllerImpl securityControllerImpl2 = (SecurityControllerImpl) this.mSecurityController;
            if (deviceAdminInfo == null) {
                securityControllerImpl2.getClass();
            } else {
                charSequence = deviceAdminInfo.loadLabel(securityControllerImpl2.mPackageManager);
            }
            textView.setText(charSequence);
            return inflate;
        }
        boolean isDeviceManaged = ((SecurityControllerImpl) this.mSecurityController).isDeviceManaged();
        boolean hasWorkProfile = ((SecurityControllerImpl) this.mSecurityController).hasWorkProfile();
        CharSequence deviceOwnerOrganizationName = ((SecurityControllerImpl) this.mSecurityController).mDevicePolicyManager.getDeviceOwnerOrganizationName();
        boolean hasCACertInCurrentUser = ((SecurityControllerImpl) this.mSecurityController).hasCACertInCurrentUser();
        boolean hasCACertInWorkProfile = ((SecurityControllerImpl) this.mSecurityController).hasCACertInWorkProfile();
        boolean isNetworkLoggingEnabled = ((SecurityControllerImpl) this.mSecurityController).mDevicePolicyManager.isNetworkLoggingEnabled(null);
        String primaryVpnName = ((SecurityControllerImpl) this.mSecurityController).getPrimaryVpnName();
        String workProfileVpnName = ((SecurityControllerImpl) this.mSecurityController).getWorkProfileVpnName();
        View inflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.sec_quick_settings_footer_dialog, (ViewGroup) null, false);
        ((TextView) inflate2.findViewById(R.id.device_management_subtitle)).setText(getManagementTitle(deviceOwnerOrganizationName));
        if (!isDeviceManaged) {
            string = null;
        } else if (deviceOwnerOrganizationName != null) {
            if (isFinancedDevice()) {
                string = this.mContext.getString(R.string.monitoring_financed_description_named_management, deviceOwnerOrganizationName, deviceOwnerOrganizationName);
            } else {
                string = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_NAMED_MANAGEMENT", new QSSecurityFooter$$ExternalSyntheticLambda1(this, deviceOwnerOrganizationName, 0), deviceOwnerOrganizationName);
            }
        } else {
            string = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT", this.mManagementDialogStringSupplier);
        }
        if (string == null) {
            inflate2.findViewById(R.id.device_management_disclosures).setVisibility(8);
        } else {
            inflate2.findViewById(R.id.device_management_disclosures).setVisibility(0);
            ((TextView) inflate2.findViewById(R.id.device_management_warning)).setText(string);
            this.mShouldUseSettingsButton.set(true);
        }
        if (!hasCACertInCurrentUser && !hasCACertInWorkProfile) {
            string2 = null;
        } else if (isDeviceManaged) {
            string2 = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT", this.mManagementDialogCaCertStringSupplier);
        } else if (hasCACertInWorkProfile) {
            string2 = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT", this.mWorkProfileDialogCaCertStringSupplier);
        } else {
            string2 = this.mContext.getString(R.string.monitoring_description_ca_certificate);
        }
        if (string2 == null) {
            inflate2.findViewById(R.id.ca_certs_disclosures).setVisibility(8);
        } else {
            inflate2.findViewById(R.id.ca_certs_disclosures).setVisibility(0);
            TextView textView2 = (TextView) inflate2.findViewById(R.id.ca_certs_warning);
            textView2.setText(string2);
            textView2.setMovementMethod(new LinkMovementMethod());
            ((TextView) inflate2.findViewById(R.id.ca_certs_subtitle)).setText(this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MONITORING_CA_CERT_SUBTITLE", this.mMonitoringSubtitleCaCertStringSupplier));
        }
        if (!isNetworkLoggingEnabled) {
            string3 = null;
        } else if (isDeviceManaged) {
            string3 = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_NETWORK", this.mManagementDialogNetworkStringSupplier);
        } else {
            string3 = this.mDpm.getResources().getString("SystemUi.QS_DIALOG_WORK_PROFILE_NETWORK", this.mWorkProfileDialogNetworkStringSupplier);
        }
        if (string3 == null) {
            inflate2.findViewById(R.id.network_logging_disclosures).setVisibility(8);
        } else {
            inflate2.findViewById(R.id.network_logging_disclosures).setVisibility(0);
            ((TextView) inflate2.findViewById(R.id.network_logging_warning)).setText(string3);
            ((TextView) inflate2.findViewById(R.id.network_logging_subtitle)).setText(this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MONITORING_NETWORK_SUBTITLE", this.mMonitoringSubtitleNetworkStringSupplier));
        }
        if (primaryVpnName == null && workProfileVpnName == null) {
            spannableStringBuilder = null;
        } else {
            spannableStringBuilder = new SpannableStringBuilder();
            if (isDeviceManaged) {
                if (primaryVpnName != null && workProfileVpnName != null) {
                    spannableStringBuilder.append((CharSequence) this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN", new QSSecurityFooter$$ExternalSyntheticLambda2(this, primaryVpnName, workProfileVpnName, 0), primaryVpnName, workProfileVpnName));
                } else {
                    if (primaryVpnName == null) {
                        primaryVpnName = workProfileVpnName;
                    }
                    spannableStringBuilder.append((CharSequence) this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_NAMED_VPN", new QSSecurityFooter$$ExternalSyntheticLambda3(this, primaryVpnName, 0), primaryVpnName));
                }
            } else if (primaryVpnName != null && workProfileVpnName != null) {
                spannableStringBuilder.append((CharSequence) this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN", new QSSecurityFooter$$ExternalSyntheticLambda2(this, primaryVpnName, workProfileVpnName, 1), primaryVpnName, workProfileVpnName));
            } else if (workProfileVpnName != null) {
                spannableStringBuilder.append((CharSequence) this.mDpm.getResources().getString("SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN", new QSSecurityFooter$$ExternalSyntheticLambda3(this, workProfileVpnName, 1), workProfileVpnName));
            } else if (hasWorkProfile) {
                spannableStringBuilder.append((CharSequence) this.mDpm.getResources().getString("SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN", new QSSecurityFooter$$ExternalSyntheticLambda3(this, primaryVpnName, 2), primaryVpnName));
            } else {
                spannableStringBuilder.append((CharSequence) this.mContext.getString(R.string.monitoring_description_named_vpn, primaryVpnName));
            }
            spannableStringBuilder.append((CharSequence) this.mContext.getString(R.string.monitoring_description_vpn_settings_separator));
            spannableStringBuilder.append(this.mContext.getString(R.string.monitoring_description_vpn_settings), new VpnSpan(), 0);
        }
        if (spannableStringBuilder == null) {
            inflate2.findViewById(R.id.vpn_disclosures).setVisibility(8);
        } else {
            inflate2.findViewById(R.id.vpn_disclosures).setVisibility(0);
            TextView textView3 = (TextView) inflate2.findViewById(R.id.vpn_warning);
            textView3.setText(spannableStringBuilder);
            textView3.setMovementMethod(new LinkMovementMethod());
            ((TextView) inflate2.findViewById(R.id.vpn_subtitle)).setText(this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MONITORING_VPN_SUBTITLE", this.mMonitoringSubtitleVpnStringSupplier));
        }
        if (string != null) {
            z = true;
        } else {
            z = false;
        }
        if (string2 != null) {
            i = 1;
        } else {
            i = 0;
        }
        if (string3 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (spannableStringBuilder != null) {
            z3 = true;
        }
        if (!z) {
            if (z2) {
                i2 = i + 1;
            } else {
                i2 = i;
            }
            if (z3) {
                i2++;
            }
            if (i2 == 1) {
                if (i != 0) {
                    inflate2.findViewById(R.id.ca_certs_subtitle).setVisibility(8);
                }
                if (z2) {
                    inflate2.findViewById(R.id.network_logging_subtitle).setVisibility(8);
                }
                if (z3) {
                    inflate2.findViewById(R.id.vpn_subtitle).setVisibility(8);
                }
            }
        }
        return inflate2;
    }

    public Dialog getDialog() {
        return this.mDialog;
    }

    public CharSequence getManagementTitle(CharSequence charSequence) {
        if (charSequence != null && isFinancedDevice()) {
            return this.mContext.getString(R.string.monitoring_title_financed_device, charSequence);
        }
        return this.mDpm.getResources().getString("SystemUi.QS_DIALOG_MANAGEMENT_TITLE", this.mManagementTitleSupplier);
    }

    public final String getMangedDeviceGeneralText(CharSequence charSequence) {
        if (charSequence == null) {
            return this.mDpm.getResources().getString("SystemUi.QS_MSG_MANAGEMENT", this.mManagementMessageSupplier);
        }
        if (isFinancedDevice()) {
            return this.mContext.getString(R.string.quick_settings_financed_disclosure_named_management, charSequence);
        }
        return this.mDpm.getResources().getString("SystemUi.QS_MSG_NAMED_MANAGEMENT", new QSSecurityFooter$$ExternalSyntheticLambda1(this, charSequence, 3), charSequence);
    }

    public String getSettingsButton() {
        return this.mDpm.getResources().getString("SystemUi.QS_DIALOG_VIEW_POLICIES", this.mViewPoliciesButtonStringSupplier);
    }

    public final boolean isFinancedDevice() {
        if (((SecurityControllerImpl) this.mSecurityController).isDeviceManaged()) {
            SecurityControllerImpl securityControllerImpl = (SecurityControllerImpl) this.mSecurityController;
            if (securityControllerImpl.mDevicePolicyManager.getDeviceOwnerType(securityControllerImpl.mDevicePolicyManager.getDeviceOwnerComponentOnAnyUser()) == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.mView.getVisibility() != 8) {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
        this.mBroadcastDispatcher.registerReceiverWithHandler(this.mReceiver, new IntentFilter("android.app.action.SHOW_DEVICE_MONITORING_DIALOG"), this.mHandler, UserHandle.ALL);
        this.mPrimaryFooterIcon.setOnClickListener(this);
        this.mContext.getResources();
        updateTextMaxWidth();
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
        this.mBroadcastDispatcher.unregisterReceiver(this.mReceiver);
        this.mPrimaryFooterIcon.setOnClickListener(null);
    }

    public final void updateTextMaxWidth() {
        TextView textView = this.mFooterText;
        SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        Context context = this.mContext;
        secQSPanelResourcePicker.getClass();
        int panelWidth = SecQSPanelResourcePicker.getPanelWidth(context);
        SecQSPanelResourcePicker secQSPanelResourcePicker2 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        Context context2 = this.mContext;
        secQSPanelResourcePicker2.getClass();
        textView.setMaxWidth(((panelWidth - (SecQSPanelResourcePicker.getPanelSidePadding(context2) * 2)) - this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_qs_footer_icon_size)) - this.mContext.getResources().getDimensionPixelSize(R.dimen.sec_qs_footer_icon_margin_start));
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -2) {
            Intent intent = new Intent("android.settings.ENTERPRISE_PRIVACY_SETTINGS");
            dialogInterface.dismiss();
            this.mActivityStarter.postStartActivityDismissingKeyguard(intent, 0);
        }
    }
}
