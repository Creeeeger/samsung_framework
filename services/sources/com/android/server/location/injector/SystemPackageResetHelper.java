package com.android.server.location.injector;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.android.internal.util.Preconditions;

/* loaded from: classes2.dex */
public class SystemPackageResetHelper extends PackageResetHelper {
    public final Context mContext;
    public BroadcastReceiver mReceiver;

    public SystemPackageResetHelper(Context context) {
        this.mContext = context;
    }

    @Override // com.android.server.location.injector.PackageResetHelper
    public void onRegister() {
        Preconditions.checkState(this.mReceiver == null);
        this.mReceiver = new Receiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
        intentFilter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this.mReceiver, intentFilter);
    }

    @Override // com.android.server.location.injector.PackageResetHelper
    public void onUnregister() {
        Preconditions.checkState(this.mReceiver != null);
        this.mContext.unregisterReceiver(this.mReceiver);
        this.mReceiver = null;
    }

    /* loaded from: classes2.dex */
    public class Receiver extends BroadcastReceiver {
        public Receiver() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00b4 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onReceive(android.content.Context r7, android.content.Intent r8) {
            /*
                r6 = this;
                java.lang.String r0 = r8.getAction()
                if (r0 != 0) goto L7
                return
            L7:
                android.net.Uri r1 = r8.getData()
                if (r1 != 0) goto Le
                return
            Le:
                java.lang.String r1 = r1.getSchemeSpecificPart()
                if (r1 != 0) goto L15
                return
            L15:
                int r2 = r0.hashCode()
                r3 = -1
                r4 = 1
                r5 = 0
                switch(r2) {
                    case -1072806502: goto L42;
                    case -757780528: goto L37;
                    case 172491798: goto L2c;
                    case 525384130: goto L21;
                    default: goto L1f;
                }
            L1f:
                r0 = r3
                goto L4c
            L21:
                java.lang.String r2 = "android.intent.action.PACKAGE_REMOVED"
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L2a
                goto L1f
            L2a:
                r0 = 3
                goto L4c
            L2c:
                java.lang.String r2 = "android.intent.action.PACKAGE_CHANGED"
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L35
                goto L1f
            L35:
                r0 = 2
                goto L4c
            L37:
                java.lang.String r2 = "android.intent.action.PACKAGE_RESTARTED"
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L40
                goto L1f
            L40:
                r0 = r4
                goto L4c
            L42:
                java.lang.String r2 = "android.intent.action.QUERY_PACKAGE_RESTART"
                boolean r0 = r0.equals(r2)
                if (r0 != 0) goto L4b
                goto L1f
            L4b:
                r0 = r5
            L4c:
                switch(r0) {
                    case 0: goto L98;
                    case 1: goto L8b;
                    case 2: goto L50;
                    case 3: goto L8b;
                    default: goto L4f;
                }
            L4f:
                goto Lb4
            L50:
                java.lang.String r0 = "android.intent.extra.changed_component_name_list"
                java.lang.String[] r8 = r8.getStringArrayExtra(r0)
                if (r8 == 0) goto L68
                int r0 = r8.length
                r2 = r5
            L5a:
                if (r2 >= r0) goto L68
                r3 = r8[r2]
                boolean r3 = r1.equals(r3)
                if (r3 == 0) goto L65
                goto L69
            L65:
                int r2 = r2 + 1
                goto L5a
            L68:
                r4 = r5
            L69:
                if (r4 == 0) goto Lb4
                android.content.pm.PackageManager r7 = r7.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                r2 = 0
                android.content.pm.PackageManager$ApplicationInfoFlags r8 = android.content.pm.PackageManager.ApplicationInfoFlags.of(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                android.content.pm.ApplicationInfo r7 = r7.getApplicationInfo(r1, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                boolean r7 = r7.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                if (r7 != 0) goto Lb4
                java.util.concurrent.Executor r7 = com.android.server.FgThread.getExecutor()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                com.android.server.location.injector.SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0 r8 = new com.android.server.location.injector.SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                r8.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                r7.execute(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L8a
                goto Lb4
            L8a:
                return
            L8b:
                java.util.concurrent.Executor r7 = com.android.server.FgThread.getExecutor()
                com.android.server.location.injector.SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1 r8 = new com.android.server.location.injector.SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1
                r8.<init>()
                r7.execute(r8)
                goto Lb4
            L98:
                java.lang.String r7 = "android.intent.extra.PACKAGES"
                java.lang.String[] r7 = r8.getStringArrayExtra(r7)
                if (r7 == 0) goto Lb4
                int r8 = r7.length
            La1:
                if (r5 >= r8) goto Lb4
                r0 = r7[r5]
                com.android.server.location.injector.SystemPackageResetHelper r1 = com.android.server.location.injector.SystemPackageResetHelper.this
                boolean r0 = r1.queryResetableForPackage(r0)
                if (r0 == 0) goto Lb1
                r6.setResultCode(r3)
                goto Lb4
            Lb1:
                int r5 = r5 + 1
                goto La1
            Lb4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.location.injector.SystemPackageResetHelper.Receiver.onReceive(android.content.Context, android.content.Intent):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(String str) {
            SystemPackageResetHelper.this.notifyPackageReset(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$1(String str) {
            SystemPackageResetHelper.this.notifyPackageReset(str);
        }
    }
}
