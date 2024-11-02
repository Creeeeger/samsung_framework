package com.android.systemui.media;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.BidiFormatter;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.util.Log;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.MediaProjectionServiceHelper;
import com.android.systemui.statusbar.phone.SystemUIDialog;
import com.android.systemui.util.Utils;
import com.samsung.android.app.SemDualAppManager;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class MediaProjectionPermissionActivity extends Activity implements DialogInterface.OnClickListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AlertDialog mDialog;
    public final FeatureFlags mFeatureFlags;
    public String mPackageName;
    public boolean mReviewGrantedConsentRequired = false;
    public int mUid;

    public MediaProjectionPermissionActivity(FeatureFlags featureFlags, Lazy lazy) {
        this.mFeatureFlags = featureFlags;
    }

    @Override // android.app.Activity
    public final void finish() {
        finish(0, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        if (r9 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005c, code lost:
    
        r9 = new android.content.Intent("com.samsung.intent.action.MEDIA_PROJECTION_PERMISSION");
        r9.putExtra("isAllowed", true);
        getApplicationContext().sendBroadcast(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        r9.dismiss();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        if (r9 == null) goto L22;
     */
    @Override // android.content.DialogInterface.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onClick(android.content.DialogInterface r9, int r10) {
        /*
            r8 = this;
            r9 = 0
            r0 = -1
            java.lang.String r1 = "isAllowed"
            java.lang.String r2 = "com.samsung.intent.action.MEDIA_PROJECTION_PERMISSION"
            r3 = 0
            if (r10 != r0) goto L74
            r10 = 1
            int r4 = r8.mUid     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            java.lang.String r5 = r8.mPackageName     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            boolean r6 = r8.mReviewGrantedConsentRequired     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            com.android.systemui.media.MediaProjectionServiceHelper$Companion r7 = com.android.systemui.media.MediaProjectionServiceHelper.Companion     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r7.getClass()     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            android.media.projection.IMediaProjectionManager r7 = com.android.systemui.media.MediaProjectionServiceHelper.service     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            if (r6 == 0) goto L1e
            android.media.projection.IMediaProjection r6 = r7.getProjection(r4, r5)     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            goto L1f
        L1e:
            r6 = r9
        L1f:
            if (r6 != 0) goto L25
            android.media.projection.IMediaProjection r6 = r7.createProjection(r4, r5, r3, r3)     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
        L25:
            android.content.Intent r4 = new android.content.Intent     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r4.<init>()     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            java.lang.String r5 = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"
            android.os.IBinder r7 = r6.asBinder()     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r4.putExtra(r5, r7)     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r8.setResult(r0, r4)     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r8.finish(r10, r6)     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            com.android.systemui.flags.FeatureFlags r0 = r8.mFeatureFlags     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            com.android.systemui.flags.Flags r4 = com.android.systemui.flags.Flags.INSTANCE     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            r0.getClass()     // Catch: java.lang.Throwable -> L45 android.os.RemoteException -> L47
            android.app.AlertDialog r9 = r8.mDialog
            if (r9 == 0) goto L5c
            goto L59
        L45:
            r9 = move-exception
            goto L6c
        L47:
            r0 = move-exception
            java.lang.String r4 = "MediaProjectionPermissionActivity"
            java.lang.String r5 = "Error granting projection permission"
            android.util.Log.e(r4, r5, r0)     // Catch: java.lang.Throwable -> L45
            r8.setResult(r3)     // Catch: java.lang.Throwable -> L45
            r8.finish(r3, r9)     // Catch: java.lang.Throwable -> L45
            android.app.AlertDialog r9 = r8.mDialog
            if (r9 == 0) goto L5c
        L59:
            r9.dismiss()
        L5c:
            android.content.Intent r9 = new android.content.Intent
            r9.<init>(r2)
            r9.putExtra(r1, r10)
            android.content.Context r8 = r8.getApplicationContext()
            r8.sendBroadcast(r9)
            goto L90
        L6c:
            android.app.AlertDialog r8 = r8.mDialog
            if (r8 == 0) goto L73
            r8.dismiss()
        L73:
            throw r9
        L74:
            android.app.AlertDialog r10 = r8.mDialog
            if (r10 == 0) goto L7b
            r10.dismiss()
        L7b:
            android.content.Intent r10 = new android.content.Intent
            r10.<init>(r2)
            r10.putExtra(r1, r3)
            android.content.Context r0 = r8.getApplicationContext()
            r0.sendBroadcast(r10)
            r8.setResult(r3)
            r8.finish(r3, r9)
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.MediaProjectionPermissionActivity.onClick(android.content.DialogInterface, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        int intExtra;
        ApplicationInfo applicationInfo;
        String string;
        String string2;
        String str;
        String str2;
        IMediaProjection iMediaProjection;
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.mReviewGrantedConsentRequired = intent.getBooleanExtra("extra_media_projection_user_consent_required", false);
        String callingPackage = getCallingPackage();
        this.mPackageName = callingPackage;
        if (callingPackage == null) {
            if (intent.hasExtra("extra_media_projection_package_reusing_consent")) {
                this.mPackageName = intent.getStringExtra("extra_media_projection_package_reusing_consent");
            } else {
                setResult(0);
                finish(0, null);
                return;
            }
        }
        Intent intent2 = getIntent();
        if (intent2 == null) {
            intExtra = 0;
        } else {
            intExtra = intent2.getIntExtra("Userid", 0);
        }
        PackageManager packageManager = getPackageManager();
        try {
            if (SemDualAppManager.isDualAppId(intExtra)) {
                applicationInfo = packageManager.getApplicationInfoAsUser(this.mPackageName, 0, intExtra);
                this.mUid = applicationInfo.uid;
            } else {
                applicationInfo = packageManager.getApplicationInfo(this.mPackageName, 0);
                this.mUid = applicationInfo.uid;
            }
            try {
                int i = this.mUid;
                String str3 = this.mPackageName;
                MediaProjectionServiceHelper.Companion companion = MediaProjectionServiceHelper.Companion;
                companion.getClass();
                IMediaProjectionManager iMediaProjectionManager = MediaProjectionServiceHelper.service;
                if (iMediaProjectionManager.hasProjectionPermission(i, str3)) {
                    int i2 = this.mUid;
                    String str4 = this.mPackageName;
                    boolean z = this.mReviewGrantedConsentRequired;
                    companion.getClass();
                    if (z) {
                        iMediaProjection = iMediaProjectionManager.getProjection(i2, str4);
                    } else {
                        iMediaProjection = null;
                    }
                    if (iMediaProjection == null) {
                        iMediaProjection = iMediaProjectionManager.createProjection(i2, str4, 0, false);
                    }
                    Intent intent3 = new Intent();
                    intent3.putExtra("android.media.projection.extra.EXTRA_MEDIA_PROJECTION", iMediaProjection.asBinder());
                    setResult(-1, intent3);
                    finish(1, iMediaProjection);
                    return;
                }
                FeatureFlags featureFlags = this.mFeatureFlags;
                Flags flags = Flags.INSTANCE;
                featureFlags.getClass();
                TextPaint textPaint = new TextPaint();
                textPaint.setTextSize(42.0f);
                if (Utils.isHeadlessRemoteDisplayProvider(packageManager, this.mPackageName)) {
                    str2 = getString(R.string.media_projection_sys_service_dialog_warning);
                    str = getString(R.string.media_projection_sys_service_dialog_title);
                } else {
                    String charSequence = applicationInfo.loadLabel(packageManager).toString();
                    int length = charSequence.length();
                    int i3 = 0;
                    while (i3 < length) {
                        int codePointAt = charSequence.codePointAt(i3);
                        int type = Character.getType(codePointAt);
                        if (type != 13 && type != 15 && type != 14) {
                            i3 += Character.charCount(codePointAt);
                        } else {
                            charSequence = charSequence.substring(0, i3) + "…";
                            break;
                        }
                    }
                    if (charSequence.isEmpty()) {
                        charSequence = this.mPackageName;
                    }
                    String unicodeWrap = BidiFormatter.getInstance().unicodeWrap(TextUtils.ellipsize(charSequence, textPaint, 500.0f, TextUtils.TruncateAt.END).toString());
                    boolean z2 = BasicRune.MEDIA_PROJECTION_PERMISSION_CLAIM_CAPTURE;
                    if (z2) {
                        string = getString(R.string.media_projection_dialog_warning_chn, new Object[]{unicodeWrap});
                    } else {
                        string = getString(R.string.media_projection_dialog_warning, new Object[]{unicodeWrap});
                    }
                    SpannableString spannableString = new SpannableString(string);
                    int indexOf = string.indexOf(unicodeWrap);
                    if (indexOf >= 0) {
                        spannableString.setSpan(new StyleSpan(1), indexOf, unicodeWrap.length() + indexOf, 0);
                    }
                    if (z2) {
                        string2 = getString(R.string.media_projection_dialog_title_chn, new Object[]{unicodeWrap});
                    } else {
                        string2 = getString(R.string.media_projection_dialog_title, new Object[]{unicodeWrap});
                    }
                    str = string2;
                    str2 = spannableString;
                }
                FeatureFlags featureFlags2 = this.mFeatureFlags;
                Flags flags2 = Flags.INSTANCE;
                featureFlags2.getClass();
                AlertDialog create = new AlertDialog.Builder(this, 2132018527).setTitle(str).setIcon(R.drawable.ic_media_projection_permission).setMessage(str2).setPositiveButton(R.string.media_projection_action_text, this).setNeutralButton(android.R.string.cancel, this).create();
                this.mDialog = create;
                SystemUIDialog.registerDismissListener(create, null);
                SystemUIDialog.applyFlags(create);
                SystemUIDialog.setDialogSize(create);
                create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.systemui.media.MediaProjectionPermissionActivity$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        MediaProjectionPermissionActivity mediaProjectionPermissionActivity = MediaProjectionPermissionActivity.this;
                        int i4 = MediaProjectionPermissionActivity.$r8$clinit;
                        if (!mediaProjectionPermissionActivity.isFinishing()) {
                            mediaProjectionPermissionActivity.finish();
                        }
                    }
                });
                create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.systemui.media.MediaProjectionPermissionActivity$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        MediaProjectionPermissionActivity mediaProjectionPermissionActivity = MediaProjectionPermissionActivity.this;
                        int i4 = MediaProjectionPermissionActivity.$r8$clinit;
                        if (!mediaProjectionPermissionActivity.isFinishing()) {
                            mediaProjectionPermissionActivity.finish();
                        }
                    }
                });
                create.create();
                create.getButton(-1).setFilterTouchesWhenObscured(true);
                create.getWindow().addSystemFlags(524288);
                this.mDialog.show();
            } catch (RemoteException e) {
                Log.e("MediaProjectionPermissionActivity", "Error checking projection permissions", e);
                setResult(0);
                finish(0, null);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("MediaProjectionPermissionActivity", "Unable to look up package name", e2);
            setResult(0);
            finish(0, null);
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public final void finish(int i, IMediaProjection iMediaProjection) {
        boolean z = this.mReviewGrantedConsentRequired;
        MediaProjectionServiceHelper.Companion.getClass();
        MediaProjectionServiceHelper.Companion.setReviewedConsentIfNeeded(i, z, iMediaProjection);
        super.finish();
    }
}
