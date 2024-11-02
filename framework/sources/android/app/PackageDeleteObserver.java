package android.app;

import android.content.Intent;
import android.content.pm.IPackageDeleteObserver2;

/* loaded from: classes.dex */
public class PackageDeleteObserver {
    private final IPackageDeleteObserver2.Stub mBinder = new IPackageDeleteObserver2.Stub() { // from class: android.app.PackageDeleteObserver.1
        AnonymousClass1() {
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onUserActionRequired(Intent intent) {
            PackageDeleteObserver.this.onUserActionRequired(intent);
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onPackageDeleted(String basePackageName, int returnCode, String msg) {
            PackageDeleteObserver.this.onPackageDeleted(basePackageName, returnCode, msg);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.app.PackageDeleteObserver$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IPackageDeleteObserver2.Stub {
        AnonymousClass1() {
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onUserActionRequired(Intent intent) {
            PackageDeleteObserver.this.onUserActionRequired(intent);
        }

        @Override // android.content.pm.IPackageDeleteObserver2
        public void onPackageDeleted(String basePackageName, int returnCode, String msg) {
            PackageDeleteObserver.this.onPackageDeleted(basePackageName, returnCode, msg);
        }
    }

    public IPackageDeleteObserver2 getBinder() {
        return this.mBinder;
    }

    public void onUserActionRequired(Intent intent) {
    }

    public void onPackageDeleted(String basePackageName, int returnCode, String msg) {
    }
}
