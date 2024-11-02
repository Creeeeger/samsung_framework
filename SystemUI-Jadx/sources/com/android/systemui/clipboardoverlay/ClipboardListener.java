package com.android.systemui.clipboardoverlay;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.CoreStartable;
import com.android.systemui.R;
import com.android.systemui.clipboardoverlay.ClipboardListener;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ClipboardListener implements CoreStartable, ClipboardManager.OnPrimaryClipChangedListener {
    static final String EXTRA_SUPPRESS_OVERLAY = "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY";
    static final String SHELL_PACKAGE = "com.android.shell";
    public final ClipboardManager mClipboardManager;
    public final ClipboardToast mClipboardToast;
    public final Context mContext;
    public SemClipboardToastController mSemClipboardToast;
    public final Provider mSemClipboardToastProvider;
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.clipboardoverlay.ClipboardListener$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends Thread {
        public AnonymousClass1() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean z;
            boolean z2;
            if (!ClipboardListener.this.mClipboardManager.hasPrimaryClip()) {
                return;
            }
            final String primaryClipSource = ClipboardListener.this.mClipboardManager.getPrimaryClipSource();
            final ClipDescription primaryClipDescription = ClipboardListener.this.mClipboardManager.getPrimaryClipDescription();
            ClipboardListener clipboardListener = ClipboardListener.this;
            boolean z3 = false;
            boolean z4 = SystemProperties.getBoolean("ro.boot.qemu", false);
            clipboardListener.getClass();
            if ((z4 || ClipboardListener.SHELL_PACKAGE.equals(primaryClipSource)) && primaryClipDescription != null && primaryClipDescription.getExtras() != null) {
                z = primaryClipDescription.getExtras().getBoolean(ClipboardListener.EXTRA_SUPPRESS_OVERLAY, false);
            } else {
                z = false;
            }
            if (z) {
                Log.i("ClipboardListener", "Clipboard overlay suppressed.");
                return;
            }
            if (Settings.Secure.getInt(ClipboardListener.this.mContext.getContentResolver(), "user_setup_complete", 0) == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                ClipboardListener clipboardListener2 = ClipboardListener.this;
                clipboardListener2.getClass();
                if (primaryClipDescription != null) {
                    if (primaryClipDescription.getClassificationStatus() == 3) {
                        if (clipboardListener2.mClipboardToast.mCopiedToast != null) {
                            z3 = true;
                        }
                        z3 = !z3;
                    } else {
                        z3 = true;
                    }
                }
                if (z3) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.systemui.clipboardoverlay.ClipboardListener$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ClipboardListener.AnonymousClass1 anonymousClass1 = ClipboardListener.AnonymousClass1.this;
                            String str = primaryClipSource;
                            anonymousClass1.getClass();
                            try {
                                ClipboardListener.this.mUiEventLogger.log(ClipboardOverlayEvent.CLIPBOARD_TOAST_SHOWN, 0, str);
                                ClipboardToast clipboardToast = ClipboardListener.this.mClipboardToast;
                                Toast toast = clipboardToast.mCopiedToast;
                                if (toast != null) {
                                    toast.cancel();
                                }
                                Toast makeText = Toast.makeText(clipboardToast.mContext, R.string.clipboard_overlay_text_copied, 0);
                                clipboardToast.mCopiedToast = makeText;
                                makeText.addCallback(clipboardToast);
                                clipboardToast.mCopiedToast.show();
                            } catch (RuntimeException e) {
                                Log.e("ClipboardListener", "showCopiedToast exception", e);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.systemui.clipboardoverlay.ClipboardListener$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ClipboardListener.AnonymousClass1 anonymousClass1 = ClipboardListener.AnonymousClass1.this;
                    ClipDescription clipDescription = primaryClipDescription;
                    String str = primaryClipSource;
                    anonymousClass1.getClass();
                    try {
                        ClipboardListener.this.showCopyToast(clipDescription, str);
                    } catch (RuntimeException e) {
                        Log.e("ClipboardListener", "showCopyToast exception", e);
                    }
                }
            });
        }
    }

    public ClipboardListener(Context context, Provider provider, Provider provider2, ClipboardToast clipboardToast, ClipboardManager clipboardManager, UiEventLogger uiEventLogger) {
        this.mContext = context;
        this.mSemClipboardToastProvider = provider2;
        this.mClipboardToast = clipboardToast;
        this.mClipboardManager = clipboardManager;
        this.mUiEventLogger = uiEventLogger;
    }

    public static boolean shouldSuppressOverlay(ClipData clipData, String str, boolean z) {
        if ((!z && !SHELL_PACKAGE.equals(str)) || clipData == null || clipData.getDescription().getExtras() == null) {
            return false;
        }
        return clipData.getDescription().getExtras().getBoolean(EXTRA_SUPPRESS_OVERLAY, false);
    }

    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
    public final void onPrimaryClipChanged() {
        new AnonymousClass1().start();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:6|(1:8)(1:88)|9|(1:11)(1:87)|12|(1:14)(1:86)|15|(1:17)(1:85)|18|(1:20)(1:84)|21|(3:(4:24|(1:81)(1:28)|(3:30|(1:60)(1:36)|(3:38|(1:59)(1:43)|(3:45|(1:58)(1:49)|(2:51|(1:57)(1:55)))))|(8:62|(1:64)(1:80)|65|(1:(2:67|(2:70|71)(1:69))(2:78|79))|72|73|74|75))|82|(0))|83|65|(2:(0)(0)|69)|72|73|74|75) */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010e, code lost:
    
        if (r6 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0193, code lost:
    
        android.util.Log.e("SemClipboardToastController", "Unknown package is access to show toast : " + r19);
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showCopyToast(android.content.ClipDescription r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.clipboardoverlay.ClipboardListener.showCopyToast(android.content.ClipDescription, java.lang.String):void");
    }

    @Override // com.android.systemui.CoreStartable
    public final void start() {
        this.mClipboardManager.addPrimaryClipChangedListener(this);
    }
}
