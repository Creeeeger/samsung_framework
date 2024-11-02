package com.android.systemui;

import android.content.Context;
import android.os.Handler;
import java.io.File;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HeapDumpHelper {
    public final Handler mBgHandler;
    public final Context mContext;
    public boolean isDumped = false;
    public String mHeapDumpFilePath = "";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class FileManager {
        public final File mHeapDumpDir;

        public FileManager(String str) {
            File file = new File(str);
            this.mHeapDumpDir = file;
            if (!file.exists()) {
                file.mkdirs();
            }
        }
    }

    public HeapDumpHelper(Context context, Handler handler) {
        this.mContext = context;
        this.mBgHandler = handler;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dump(final java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.HeapDumpHelper.dump(java.lang.String):void");
    }
}
