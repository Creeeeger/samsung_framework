package com.android.server.permission.access.permission;

import android.os.IInstalld;
import com.android.server.permission.access.util.IntExtensionsKt;

/* compiled from: PermissionFlags.kt */
/* loaded from: classes2.dex */
public final class PermissionFlags {
    public static final PermissionFlags INSTANCE = new PermissionFlags();

    public final boolean isPermissionGranted(int i) {
        if (IntExtensionsKt.hasBits(i, 1)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(i, 2)) {
            return false;
        }
        if (IntExtensionsKt.hasBits(i, 4) || IntExtensionsKt.hasBits(i, 1024) || IntExtensionsKt.hasBits(i, IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES)) {
            return true;
        }
        if (IntExtensionsKt.hasBits(i, 262144)) {
            return false;
        }
        return IntExtensionsKt.hasBits(i, 16);
    }

    public final boolean isAppOpGranted(int i) {
        return isPermissionGranted(i) && !IntExtensionsKt.hasBits(i, 1048576);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
    
        if (com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, 524288) != false) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v18, types: [int] */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v77 */
    /* JADX WARN: Type inference failed for: r5v78 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int toApiFlags(int r6) {
        /*
            r5 = this;
            r5 = 32
            boolean r5 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r5)
            r0 = 64
            boolean r1 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r1 == 0) goto L10
            r5 = r5 | 2
        L10:
            r1 = 128(0x80, float:1.794E-43)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r1)
            if (r2 == 0) goto L1a
            r5 = r5 | 4
        L1a:
            r2 = 256(0x100, float:3.59E-43)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r2)
            if (r2 == 0) goto L24
            r5 = r5 | 16
        L24:
            r2 = 512(0x200, float:7.175E-43)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r2)
            if (r2 == 0) goto L2e
            r5 = r5 | 32
        L2e:
            r2 = 4096(0x1000, float:5.74E-42)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r2)
            if (r2 == 0) goto L41
            r2 = 1024(0x400, float:1.435E-42)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r2)
            if (r2 == 0) goto L3f
            goto L40
        L3f:
            r0 = r1
        L40:
            r5 = r5 | r0
        L41:
            r0 = 8192(0x2000, float:1.14794E-41)
            boolean r0 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r0 == 0) goto L4b
            r5 = r5 | 256(0x100, float:3.59E-43)
        L4b:
            r0 = 16384(0x4000, float:2.2959E-41)
            boolean r0 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r0 == 0) goto L55
            r5 = r5 | 512(0x200, float:7.175E-43)
        L55:
            r0 = 32768(0x8000, float:4.5918E-41)
            boolean r1 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r1 == 0) goto L60
            r5 = r5 | 2048(0x800, float:2.87E-42)
        L60:
            r1 = 65536(0x10000, float:9.18355E-41)
            boolean r2 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r1)
            if (r2 == 0) goto L6a
            r5 = r5 | 4096(0x1000, float:5.74E-42)
        L6a:
            r2 = 131072(0x20000, float:1.83671E-40)
            boolean r3 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r2)
            if (r3 == 0) goto L74
            r5 = r5 | 8192(0x2000, float:1.14794E-41)
        L74:
            r3 = 262144(0x40000, float:3.67342E-40)
            boolean r3 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r3)
            r4 = 524288(0x80000, float:7.34684E-40)
            if (r3 != 0) goto L84
            boolean r3 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r4)
            if (r3 == 0) goto L86
        L84:
            r5 = r5 | 16384(0x4000, float:2.2959E-41)
        L86:
            r3 = 8
            boolean r3 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r3)
            if (r3 == 0) goto L8f
            r5 = r5 | r0
        L8f:
            r0 = 1048576(0x100000, float:1.469368E-39)
            boolean r0 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r0 == 0) goto L99
            r5 = r5 | 8
        L99:
            r0 = 2097152(0x200000, float:2.938736E-39)
            boolean r0 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r0 == 0) goto La2
            r5 = r5 | r1
        La2:
            r0 = 4194304(0x400000, float:5.877472E-39)
            boolean r0 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r0 == 0) goto Lab
            r5 = r5 | r2
        Lab:
            r0 = 8388608(0x800000, float:1.17549435E-38)
            boolean r6 = com.android.server.permission.access.util.IntExtensionsKt.hasBits(r6, r0)
            if (r6 == 0) goto Lb4
            r5 = r5 | r4
        Lb4:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.permission.access.permission.PermissionFlags.toApiFlags(int):int");
    }

    public final int updateRuntimePermissionGranted(int i, boolean z) {
        return z ? 16 | i : IntExtensionsKt.andInv(i, 16);
    }

    public final int updateFlags(Permission permission, int i, int i2, int i3) {
        return fromApiFlags((i2 & i3) | IntExtensionsKt.andInv(toApiFlags(i), i2), permission, i);
    }

    public final int fromApiFlags(int i, Permission permission, int i2) {
        int i3 = (i2 & 1) | 0 | (i2 & 2) | (i2 & 4);
        if (IntExtensionsKt.hasBits(i, 32768)) {
            i3 |= 8;
        }
        int i4 = i3 | (i2 & 16);
        if (IntExtensionsKt.hasBits(i, 1)) {
            i4 |= 32;
        }
        if (IntExtensionsKt.hasBits(i, 2)) {
            i4 |= 64;
        }
        if (IntExtensionsKt.hasBits(i, 4)) {
            i4 |= 128;
        }
        if (IntExtensionsKt.hasBits(i, 16)) {
            i4 |= 256;
        }
        if (IntExtensionsKt.hasBits(i, 32)) {
            i4 |= 512;
        }
        int i5 = i4 | (i2 & 1024) | (i2 & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES);
        if (IntExtensionsKt.hasBits(i, 64) || IntExtensionsKt.hasBits(i, 128)) {
            i5 |= IInstalld.FLAG_USE_QUOTA;
        }
        if (IntExtensionsKt.hasBits(i, 256)) {
            i5 |= IInstalld.FLAG_FORCE;
        }
        if (IntExtensionsKt.hasBits(i, 512)) {
            i5 |= 16384;
        }
        if (IntExtensionsKt.hasBits(i, IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES)) {
            i5 |= 32768;
        }
        if (IntExtensionsKt.hasBits(i, IInstalld.FLAG_USE_QUOTA)) {
            i5 |= 65536;
        }
        if (IntExtensionsKt.hasBits(i, IInstalld.FLAG_FORCE)) {
            i5 |= IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES;
        }
        if (!IntExtensionsKt.hasAnyBit(i5, 229376)) {
            if (IntExtensionsKt.hasBits(permission.getPermissionInfo().flags, 4)) {
                i5 |= 262144;
            }
            if (IntExtensionsKt.hasBits(permission.getPermissionInfo().flags, 8)) {
                i5 |= 524288;
            }
        }
        if (IntExtensionsKt.hasBits(i, 8)) {
            i5 |= 1048576;
        }
        if (IntExtensionsKt.hasBits(i, 65536)) {
            i5 |= 2097152;
        }
        if (IntExtensionsKt.hasBits(i, IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES)) {
            i5 |= 4194304;
        }
        return IntExtensionsKt.hasBits(i, 524288) ? i5 | 8388608 : i5;
    }
}
