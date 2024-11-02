package com.android.systemui.util.leak;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DumpTruck {
    public final StringBuilder body = new StringBuilder();
    public final Context context;
    public Uri hprofUri;
    public final GarbageMonitor mGarbageMonitor;
    public long rss;

    public DumpTruck(Context context, GarbageMonitor garbageMonitor) {
        this.context = context;
        this.mGarbageMonitor = garbageMonitor;
    }

    public static boolean zipUp(String str, ArrayList arrayList) {
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str));
            try {
                byte[] bArr = new byte[QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str2));
                    try {
                        zipOutputStream.putNextEntry(new ZipEntry(str2));
                        while (true) {
                            int read = bufferedInputStream.read(bArr, 0, QuickStepContract.SYSUI_STATE_IME_SWITCHER_SHOWING);
                            if (read <= 0) {
                                break;
                            }
                            zipOutputStream.write(bArr, 0, read);
                        }
                        zipOutputStream.closeEntry();
                        bufferedInputStream.close();
                    } finally {
                    }
                }
                zipOutputStream.close();
                return true;
            } finally {
            }
        } catch (IOException e) {
            Log.e("DumpTruck", "error zipping up profile data", e);
            return false;
        }
    }
}
