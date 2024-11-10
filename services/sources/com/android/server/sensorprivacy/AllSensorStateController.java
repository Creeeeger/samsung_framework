package com.android.server.sensorprivacy;

import android.os.Handler;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Xml;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.IoThread;
import com.android.server.sensorprivacy.SensorPrivacyStateController;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public class AllSensorStateController {
    public static final String LOG_TAG = "AllSensorStateController";
    public static AllSensorStateController sInstance;
    public final AtomicFile mAtomicFile;
    public boolean mEnabled;
    public SensorPrivacyStateController.AllSensorPrivacyListener mListener;
    public Handler mListenerHandler;

    public void dumpLocked(DualDumpOutputStream dualDumpOutputStream) {
    }

    public static AllSensorStateController getInstance() {
        if (sInstance == null) {
            sInstance = new AllSensorStateController();
        }
        return sInstance;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x003b, code lost:
    
        r7.mEnabled = com.android.internal.util.XmlUtils.readBooleanAttribute(r2, "enabled", false) | r7.mEnabled;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public AllSensorStateController() {
        /*
            r7 = this;
            r7.<init>()
            android.util.AtomicFile r0 = new android.util.AtomicFile
            java.io.File r1 = new java.io.File
            java.io.File r2 = android.os.Environment.getDataSystemDirectory()
            java.lang.String r3 = "sensor_privacy.xml"
            r1.<init>(r2, r3)
            r0.<init>(r1)
            r7.mAtomicFile = r0
            boolean r1 = r0.exists()
            if (r1 != 0) goto L1d
            return
        L1d:
            r1 = 0
            java.io.FileInputStream r0 = r0.openRead()     // Catch: java.lang.Throwable -> L88
            com.android.modules.utils.TypedXmlPullParser r2 = android.util.Xml.resolvePullParser(r0)     // Catch: java.lang.Throwable -> L7c
        L26:
            int r3 = r2.getEventType()     // Catch: java.lang.Throwable -> L7c
            r4 = 1
            if (r3 == r4) goto L76
            java.lang.String r3 = r2.getName()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r4 = "all-sensor-privacy"
            boolean r4 = r4.equals(r3)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r5 = "enabled"
            if (r4 == 0) goto L45
            boolean r3 = r7.mEnabled     // Catch: java.lang.Throwable -> L7c
            boolean r2 = com.android.internal.util.XmlUtils.readBooleanAttribute(r2, r5, r1)     // Catch: java.lang.Throwable -> L7c
            r2 = r2 | r3
            r7.mEnabled = r2     // Catch: java.lang.Throwable -> L7c
            goto L76
        L45:
            java.lang.String r4 = "sensor-privacy"
            boolean r4 = r4.equals(r3)     // Catch: java.lang.Throwable -> L7c
            if (r4 == 0) goto L57
            boolean r4 = r7.mEnabled     // Catch: java.lang.Throwable -> L7c
            boolean r6 = com.android.internal.util.XmlUtils.readBooleanAttribute(r2, r5, r1)     // Catch: java.lang.Throwable -> L7c
            r4 = r4 | r6
            r7.mEnabled = r4     // Catch: java.lang.Throwable -> L7c
        L57:
            java.lang.String r4 = "user"
            boolean r3 = r4.equals(r3)     // Catch: java.lang.Throwable -> L7c
            if (r3 == 0) goto L72
            java.lang.String r3 = "id"
            r4 = -1
            int r3 = com.android.internal.util.XmlUtils.readIntAttribute(r2, r3, r4)     // Catch: java.lang.Throwable -> L7c
            if (r3 != 0) goto L72
            boolean r3 = r7.mEnabled     // Catch: java.lang.Throwable -> L7c
            boolean r4 = com.android.internal.util.XmlUtils.readBooleanAttribute(r2, r5)     // Catch: java.lang.Throwable -> L7c
            r3 = r3 | r4
            r7.mEnabled = r3     // Catch: java.lang.Throwable -> L7c
        L72:
            com.android.internal.util.XmlUtils.nextElement(r2)     // Catch: java.lang.Throwable -> L7c
            goto L26
        L76:
            if (r0 == 0) goto L92
            r0.close()     // Catch: java.lang.Throwable -> L88 java.lang.Throwable -> L88
            goto L92
        L7c:
            r2 = move-exception
            if (r0 == 0) goto L87
            r0.close()     // Catch: java.lang.Throwable -> L83
            goto L87
        L83:
            r0 = move-exception
            r2.addSuppressed(r0)     // Catch: java.lang.Throwable -> L88 java.lang.Throwable -> L88
        L87:
            throw r2     // Catch: java.lang.Throwable -> L88 java.lang.Throwable -> L88
        L88:
            r0 = move-exception
            java.lang.String r2 = com.android.server.sensorprivacy.AllSensorStateController.LOG_TAG
            java.lang.String r3 = "Caught an exception reading the state from storage: "
            android.util.Log.e(r2, r3, r0)
            r7.mEnabled = r1
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.sensorprivacy.AllSensorStateController.<init>():void");
    }

    public boolean getAllSensorStateLocked() {
        return this.mEnabled;
    }

    public void setAllSensorStateLocked(boolean z) {
        Handler handler;
        if (this.mEnabled != z) {
            this.mEnabled = z;
            final SensorPrivacyStateController.AllSensorPrivacyListener allSensorPrivacyListener = this.mListener;
            if (allSensorPrivacyListener == null || (handler = this.mListenerHandler) == null) {
                return;
            }
            Objects.requireNonNull(allSensorPrivacyListener);
            handler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.sensorprivacy.AllSensorStateController$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SensorPrivacyStateController.AllSensorPrivacyListener.this.onAllSensorPrivacyChanged(((Boolean) obj).booleanValue());
                }
            }, Boolean.valueOf(z)));
        }
    }

    public void setAllSensorPrivacyListenerLocked(Handler handler, SensorPrivacyStateController.AllSensorPrivacyListener allSensorPrivacyListener) {
        Objects.requireNonNull(handler);
        Objects.requireNonNull(allSensorPrivacyListener);
        if (this.mListener != null) {
            throw new IllegalStateException("Listener is already set");
        }
        this.mListener = allSensorPrivacyListener;
        this.mListenerHandler = handler;
    }

    public void schedulePersistLocked() {
        IoThread.getHandler().sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.sensorprivacy.AllSensorStateController$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AllSensorStateController.this.persist(((Boolean) obj).booleanValue());
            }
        }, Boolean.valueOf(this.mEnabled)));
    }

    public final void persist(boolean z) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = this.mAtomicFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                resolveSerializer.startTag((String) null, "all-sensor-privacy");
                resolveSerializer.attributeBoolean((String) null, "enabled", z);
                resolveSerializer.endTag((String) null, "all-sensor-privacy");
                resolveSerializer.endDocument();
                this.mAtomicFile.finishWrite(startWrite);
            } catch (IOException e) {
                e = e;
                fileOutputStream = startWrite;
                Log.e(LOG_TAG, "Caught an exception persisting the sensor privacy state: ", e);
                this.mAtomicFile.failWrite(fileOutputStream);
            }
        } catch (IOException e2) {
            e = e2;
        }
    }
}
