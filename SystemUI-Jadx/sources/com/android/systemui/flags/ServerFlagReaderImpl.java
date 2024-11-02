package com.android.systemui.flags;

import android.provider.DeviceConfig;
import com.android.systemui.util.DeviceConfigProxy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ServerFlagReaderImpl implements ServerFlagReader {
    public final DeviceConfigProxy deviceConfig;
    public final Executor executor;
    public final boolean isTestHarness;
    public final String namespace;
    public final String TAG = "ServerFlagReader";
    public final List listeners = new ArrayList();

    public ServerFlagReaderImpl(String str, DeviceConfigProxy deviceConfigProxy, Executor executor, boolean z) {
        this.namespace = str;
        this.deviceConfig = deviceConfigProxy;
        this.executor = executor;
        this.isTestHarness = z;
        new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.systemui.flags.ServerFlagReaderImpl$onPropertiesChangedListener$1
            /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
            
                if (((java.lang.Boolean) ((java.util.HashMap) r1.mBooleanCache).get(r5.getName())).booleanValue() != r0) goto L44;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00ec, code lost:
            
                r3 = true;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
            
                if (((java.util.HashMap) r1.mStringCache).get(r5.getName()) != r0) goto L44;
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x00ea, code lost:
            
                if (((java.lang.Integer) ((java.util.HashMap) r1.mIntCache).get(r5.getName())).intValue() == r0) goto L45;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onPropertiesChanged(android.provider.DeviceConfig.Properties r8) {
                /*
                    Method dump skipped, instructions count: 277
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.flags.ServerFlagReaderImpl$onPropertiesChangedListener$1.onPropertiesChanged(android.provider.DeviceConfig$Properties):void");
            }
        };
    }
}
