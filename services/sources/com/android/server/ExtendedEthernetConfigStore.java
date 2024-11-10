package com.android.server;

import android.net.IpConfiguration;
import android.util.ArrayMap;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class ExtendedEthernetConfigStore {
    public final Object mSync = new Object();
    public final ArrayMap mIpConfigurations = new ArrayMap(0);

    public static boolean doesConfigFileExist(String str) {
        return new File(str).exists();
    }

    public void read() {
        synchronized (this.mSync) {
            if (doesConfigFileExist("/data/misc/apexdata/com.android.tethering/misc/ethernet/ipconfig.txt")) {
                loadConfigFileLocked("/data/misc/apexdata/com.android.tethering/misc/ethernet/ipconfig.txt");
            }
        }
    }

    public final ArrayMap readIpConfigurations(String str) {
        try {
            return readIpConfigurations(new BufferedInputStream(new FileInputStream(str)));
        } catch (FileNotFoundException e) {
            Log.e("ExtendedEthernetConfigStore", "Error opening configuration file: " + e);
            return new ArrayMap(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x02be, code lost:
    
        if (r3 == null) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02c1, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02b2, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02b0, code lost:
    
        if (r3 == null) goto L136;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v14, types: [android.net.StaticIpConfiguration$Builder] */
    /* JADX WARN: Type inference failed for: r0v15, types: [android.net.StaticIpConfiguration$Builder] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.net.InetAddress] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.net.LinkAddress] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.ArrayMap readIpConfigurations(java.io.InputStream r19) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.ExtendedEthernetConfigStore.readIpConfigurations(java.io.InputStream):android.util.ArrayMap");
    }

    /* renamed from: com.android.server.ExtendedEthernetConfigStore$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$IpAssignment;
        public static final /* synthetic */ int[] $SwitchMap$android$net$IpConfiguration$ProxySettings;

        static {
            int[] iArr = new int[IpConfiguration.ProxySettings.values().length];
            $SwitchMap$android$net$IpConfiguration$ProxySettings = iArr;
            try {
                iArr[IpConfiguration.ProxySettings.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.PAC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$ProxySettings[IpConfiguration.ProxySettings.UNASSIGNED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IpConfiguration.IpAssignment.values().length];
            $SwitchMap$android$net$IpConfiguration$IpAssignment = iArr2;
            try {
                iArr2[IpConfiguration.IpAssignment.STATIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.DHCP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$net$IpConfiguration$IpAssignment[IpConfiguration.IpAssignment.UNASSIGNED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public final List parseProxyExclusionListString(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        return Arrays.asList(str.toLowerCase(Locale.ROOT).split(","));
    }

    public final void loadConfigFileLocked(String str) {
        this.mIpConfigurations.putAll(readIpConfigurations(str));
    }

    public ArrayMap getIpConfigurations() {
        ArrayMap arrayMap;
        synchronized (this.mSync) {
            arrayMap = new ArrayMap(this.mIpConfigurations);
        }
        return arrayMap;
    }
}
