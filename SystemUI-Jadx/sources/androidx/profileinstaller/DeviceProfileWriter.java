package androidx.profileinstaller;

import android.content.res.AssetManager;
import androidx.profileinstaller.ProfileInstaller;
import java.io.File;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DeviceProfileWriter {
    public final ProfileInstaller.DiagnosticsCallback mDiagnostics;
    public final Executor mExecutor;

    public DeviceProfileWriter(AssetManager assetManager, Executor executor, ProfileInstaller.DiagnosticsCallback diagnosticsCallback, String str, String str2, String str3, File file) {
        this.mExecutor = executor;
        this.mDiagnostics = diagnosticsCallback;
    }
}
