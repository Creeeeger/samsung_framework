package com.android.server.pm;

import android.content.ComponentName;
import android.content.pm.FeatureInfo;
import android.os.incremental.PerUidReadTimeouts;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.pm.verify.domain.DomainVerificationManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public final class DumpHelper {
    public final ArrayMap mAvailableFeatures;
    public final ChangedPackagesTracker mChangedPackagesTracker;
    public final DomainVerificationManagerInternal mDomainVerificationManager;
    public final PackageInstallerService mInstallerService;
    public final KnownPackages mKnownPackages;
    public final PerUidReadTimeouts[] mPerUidReadTimeouts;
    public final PermissionManagerServiceInternal mPermissionManager;
    public final ArraySet mProtectedBroadcasts;
    public final String[] mRequiredVerifierPackages;
    public final SnapshotStatistics mSnapshotStatistics;
    public final StorageEventHelper mStorageEventHelper;

    public DumpHelper(PermissionManagerServiceInternal permissionManagerServiceInternal, StorageEventHelper storageEventHelper, DomainVerificationManagerInternal domainVerificationManagerInternal, PackageInstallerService packageInstallerService, String[] strArr, KnownPackages knownPackages, ChangedPackagesTracker changedPackagesTracker, ArrayMap arrayMap, ArraySet arraySet, PerUidReadTimeouts[] perUidReadTimeoutsArr, SnapshotStatistics snapshotStatistics) {
        this.mPermissionManager = permissionManagerServiceInternal;
        this.mStorageEventHelper = storageEventHelper;
        this.mDomainVerificationManager = domainVerificationManagerInternal;
        this.mInstallerService = packageInstallerService;
        this.mRequiredVerifierPackages = strArr;
        this.mKnownPackages = knownPackages;
        this.mChangedPackagesTracker = changedPackagesTracker;
        this.mAvailableFeatures = arrayMap;
        this.mProtectedBroadcasts = arraySet;
        this.mPerUidReadTimeouts = perUidReadTimeoutsArr;
        this.mSnapshotStatistics = snapshotStatistics;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04ff  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x05d8  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x06fc  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x077a  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x081c A[LOOP:6: B:314:0x081a->B:315:0x081c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x08a2  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x06c4  */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void doDump(com.android.server.pm.Computer r19, java.io.FileDescriptor r20, final java.io.PrintWriter r21, java.lang.String[] r22) {
        /*
            Method dump skipped, instructions count: 2292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.DumpHelper.doDump(com.android.server.pm.Computer, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    public static /* synthetic */ void lambda$doDump$0(PrintWriter printWriter, Integer num, SparseArray sparseArray) {
        printWriter.print("  Sequence number=");
        printWriter.println(num);
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            SparseArray sparseArray2 = (SparseArray) sparseArray.valueAt(i);
            printWriter.print("  User ");
            printWriter.print(sparseArray.keyAt(i));
            printWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
            int size2 = sparseArray2.size();
            if (size2 == 0) {
                printWriter.print("    ");
                printWriter.println("No packages changed");
            } else {
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = (String) sparseArray2.valueAt(i2);
                    int keyAt = sparseArray2.keyAt(i2);
                    printWriter.print("    ");
                    printWriter.print("seq=");
                    printWriter.print(keyAt);
                    printWriter.print(", package=");
                    printWriter.println(str);
                }
            }
        }
    }

    public final void printHelp(PrintWriter printWriter) {
        printWriter.println("Package manager dump options:");
        printWriter.println("  [-h] [-f] [--checkin] [--all-components] [cmd] ...");
        printWriter.println("    --checkin: dump for a checkin");
        printWriter.println("    -f: print details of intent filters");
        printWriter.println("    -h: print this help");
        printWriter.println("    --all-components: include all component names in package dump");
        printWriter.println("  cmd may be one of:");
        printWriter.println("    apex: list active APEXes and APEX session state");
        printWriter.println("    l[ibraries]: list known shared libraries");
        printWriter.println("    f[eatures]: list device features");
        printWriter.println("    k[eysets]: print known keysets");
        printWriter.println("    r[esolvers] [activity|service|receiver|content]: dump intent resolvers");
        printWriter.println("    perm[issions]: dump permissions");
        printWriter.println("    permission [name ...]: dump declaration and use of given permission");
        printWriter.println("    pref[erred]: print preferred package settings");
        printWriter.println("    preferred-xml [--full]: print preferred package settings as xml");
        printWriter.println("    prov[iders]: dump content providers");
        printWriter.println("    p[ackages]: dump installed packages");
        printWriter.println("    q[ueries]: dump app queryability calculations");
        printWriter.println("    s[hared-users]: dump shared user IDs");
        printWriter.println("    m[essages]: print collected runtime messages");
        printWriter.println("    v[erifiers]: print package verifier info");
        printWriter.println("    d[omain-preferred-apps]: print domains preferred apps");
        printWriter.println("    i[ntent-filter-verifiers]|ifv: print intent filter verifier info");
        printWriter.println("    t[imeouts]: print read timeouts for known digesters");
        printWriter.println("    version: print database version info");
        printWriter.println("    write: write current settings now");
        printWriter.println("    installs: details about install sessions");
        printWriter.println("    check-permission <permission> <package> [<user>]: does pkg hold perm?");
        printWriter.println("    dexopt: dump dexopt state");
        printWriter.println("    compiler-stats: dump compiler statistics");
        printWriter.println("    service-permissions: dump permissions required by services");
        printWriter.println("    snapshot: dump snapshot statistics");
        printWriter.println("    protected-broadcasts: print list of protected broadcast actions");
        printWriter.println("    known-packages: dump known packages");
        printWriter.println("    <package.name>: info about given package");
    }

    public final void dumpProto(Computer computer, FileDescriptor fileDescriptor) {
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(fileDescriptor);
        for (String str : this.mRequiredVerifierPackages) {
            long start = protoOutputStream.start(1146756268033L);
            protoOutputStream.write(1138166333441L, str);
            protoOutputStream.write(1120986464258L, computer.getPackageUid(str, 268435456L, 0));
            protoOutputStream.end(start);
        }
        ComponentName componentName = this.mDomainVerificationManager.getProxy().getComponentName();
        if (componentName != null) {
            String packageName = componentName.getPackageName();
            long start2 = protoOutputStream.start(1146756268034L);
            protoOutputStream.write(1138166333441L, packageName);
            protoOutputStream.write(1120986464258L, computer.getPackageUid(packageName, 268435456L, 0));
            protoOutputStream.end(start2);
        }
        computer.dumpSharedLibrariesProto(protoOutputStream);
        dumpAvailableFeaturesProto(protoOutputStream);
        computer.dumpPackagesProto(protoOutputStream);
        computer.dumpSharedUsersProto(protoOutputStream);
        PackageManagerServiceUtils.dumpCriticalInfo(protoOutputStream);
        protoOutputStream.flush();
    }

    public final void dumpAvailableFeaturesProto(ProtoOutputStream protoOutputStream) {
        int size = this.mAvailableFeatures.size();
        for (int i = 0; i < size; i++) {
            ((FeatureInfo) this.mAvailableFeatures.valueAt(i)).dumpDebug(protoOutputStream, 2246267895812L);
        }
    }
}
