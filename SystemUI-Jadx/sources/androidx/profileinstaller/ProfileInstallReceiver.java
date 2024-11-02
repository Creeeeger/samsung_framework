package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Process;
import androidx.profileinstaller.ProfileInstaller;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ResultDiagnostics implements ProfileInstaller.DiagnosticsCallback {
        public ResultDiagnostics() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public final void onResultReceived(int i, Object obj) {
            ProfileInstaller.LOG_DIAGNOSTICS.onResultReceived(i, obj);
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        DataOutputStream dataOutputStream;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        final int i = 0;
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            ProfileInstaller.writeProfile(context, new Executor() { // from class: androidx.profileinstaller.ProfileInstallReceiver$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    switch (i) {
                        case 0:
                            runnable.run();
                            return;
                        case 1:
                            runnable.run();
                            return;
                        default:
                            runnable.run();
                            return;
                    }
                }
            }, new ResultDiagnostics(), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if ("WRITE_SKIP_FILE".equals(string)) {
                    ResultDiagnostics resultDiagnostics = new ResultDiagnostics();
                    ProfileInstaller.AnonymousClass1 anonymousClass1 = ProfileInstaller.EMPTY_DIAGNOSTICS;
                    try {
                        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0);
                        try {
                            dataOutputStream = new DataOutputStream(new FileOutputStream(new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
                        } catch (IOException unused) {
                        }
                        try {
                            dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                            dataOutputStream.close();
                            resultDiagnostics.onResultReceived(10, null);
                            return;
                        } finally {
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        resultDiagnostics.onResultReceived(7, e);
                        return;
                    }
                }
                if ("DELETE_SKIP_FILE".equals(string)) {
                    ResultDiagnostics resultDiagnostics2 = new ResultDiagnostics();
                    ProfileInstaller.AnonymousClass1 anonymousClass12 = ProfileInstaller.EMPTY_DIAGNOSTICS;
                    new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                    resultDiagnostics2.onResultReceived(11, null);
                    return;
                }
                return;
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            ResultDiagnostics resultDiagnostics3 = new ResultDiagnostics();
            Process.sendSignal(Process.myPid(), 10);
            resultDiagnostics3.onResultReceived(12, null);
        } else if ("androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) && (extras = intent.getExtras()) != null) {
            String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
            ResultDiagnostics resultDiagnostics4 = new ResultDiagnostics();
            if ("DROP_SHADER_CACHE".equals(string2)) {
                if (BenchmarkOperation.deleteFilesRecursively(context.createDeviceProtectedStorageContext().getCodeCacheDir())) {
                    resultDiagnostics4.onResultReceived(14, null);
                    return;
                } else {
                    resultDiagnostics4.onResultReceived(15, null);
                    return;
                }
            }
            resultDiagnostics4.onResultReceived(16, null);
        }
    }
}
