package com.android.wm.shell.pip;

import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Pair;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipAppOpsListener {
    public final AnonymousClass1 mAppOpsChangedListener = new AnonymousClass1();
    public final AppOpsManager mAppOpsManager;
    public final Callback mCallback;
    public final Context mContext;
    public final ShellExecutor mMainExecutor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.pip.PipAppOpsListener$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements AppOpsManager.OnOpChangedListener {
        public AnonymousClass1() {
        }

        @Override // android.app.AppOpsManager.OnOpChangedListener
        public final void onOpChanged(String str, String str2) {
            try {
                Pair topPipActivity = PipUtils.getTopPipActivity(PipAppOpsListener.this.mContext);
                if (topPipActivity.first != null) {
                    ApplicationInfo applicationInfoAsUser = PipAppOpsListener.this.mContext.getPackageManager().getApplicationInfoAsUser(str2, 0, ((Integer) topPipActivity.second).intValue());
                    if (applicationInfoAsUser.packageName.equals(((ComponentName) topPipActivity.first).getPackageName()) && PipAppOpsListener.this.mAppOpsManager.checkOpNoThrow(67, applicationInfoAsUser.uid, str2) != 0) {
                        ((HandlerExecutor) PipAppOpsListener.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.pip.PipAppOpsListener$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                PipAppOpsListener.this.mCallback.dismissPip();
                            }
                        });
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                PipAppOpsListener pipAppOpsListener = PipAppOpsListener.this;
                pipAppOpsListener.mAppOpsManager.stopWatchingMode(pipAppOpsListener.mAppOpsChangedListener);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
        void dismissPip();
    }

    public PipAppOpsListener(Context context, Callback callback, ShellExecutor shellExecutor) {
        this.mContext = context;
        this.mMainExecutor = shellExecutor;
        this.mAppOpsManager = (AppOpsManager) context.getSystemService("appops");
        this.mCallback = callback;
    }
}
