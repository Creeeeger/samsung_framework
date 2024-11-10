package com.android.server.sensorprivacy;

import android.os.Environment;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.pm.UserManagerInternal;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public class PersistedState {
    public static final String LOG_TAG = "PersistedState";
    public final AtomicFile mAtomicFile;
    public ArrayMap mStates = new ArrayMap();

    public static PersistedState fromFile(String str) {
        return new PersistedState(str);
    }

    public PersistedState(String str) {
        this.mAtomicFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), str));
        readState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.android.server.sensorprivacy.PersistedState$PVersion1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readState() {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.sensorprivacy.PersistedState.readState():void");
    }

    public static void readPVersion0(TypedXmlPullParser typedXmlPullParser, PVersion0 pVersion0) {
        XmlUtils.nextElement(typedXmlPullParser);
        while (typedXmlPullParser.getEventType() != 1) {
            if ("individual-sensor-privacy".equals(typedXmlPullParser.getName())) {
                pVersion0.addState(XmlUtils.readIntAttribute(typedXmlPullParser, "sensor"), XmlUtils.readBooleanAttribute(typedXmlPullParser, "enabled"));
                XmlUtils.skipCurrentTag(typedXmlPullParser);
            } else {
                XmlUtils.nextElement(typedXmlPullParser);
            }
        }
    }

    public static void readPVersion1(TypedXmlPullParser typedXmlPullParser, PVersion1 pVersion1) {
        while (typedXmlPullParser.getEventType() != 1) {
            XmlUtils.nextElement(typedXmlPullParser);
            if ("user".equals(typedXmlPullParser.getName())) {
                int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "id");
                int depth = typedXmlPullParser.getDepth();
                while (XmlUtils.nextElementWithin(typedXmlPullParser, depth)) {
                    if ("individual-sensor-privacy".equals(typedXmlPullParser.getName())) {
                        pVersion1.addState(attributeInt, typedXmlPullParser.getAttributeInt((String) null, "sensor"), typedXmlPullParser.getAttributeBoolean((String) null, "enabled"));
                    }
                }
            }
        }
    }

    public static void readPVersion2(TypedXmlPullParser typedXmlPullParser, PVersion2 pVersion2) {
        while (typedXmlPullParser.getEventType() != 1) {
            XmlUtils.nextElement(typedXmlPullParser);
            if ("sensor-state".equals(typedXmlPullParser.getName())) {
                pVersion2.addState(typedXmlPullParser.getAttributeInt((String) null, "toggle-type"), typedXmlPullParser.getAttributeInt((String) null, "user-id"), typedXmlPullParser.getAttributeInt((String) null, "sensor"), typedXmlPullParser.getAttributeInt((String) null, "state-type"), typedXmlPullParser.getAttributeLong((String) null, "last-change"));
            } else {
                XmlUtils.skipCurrentTag(typedXmlPullParser);
            }
        }
    }

    public SensorState getState(int i, int i2, int i3) {
        return (SensorState) this.mStates.get(new TypeUserSensor(i, i2, i3));
    }

    public SensorState setState(int i, int i2, int i3, SensorState sensorState) {
        return (SensorState) this.mStates.put(new TypeUserSensor(i, i2, i3), sensorState);
    }

    /* loaded from: classes3.dex */
    public class TypeUserSensor {
        public int mSensor;
        public int mType;
        public int mUserId;

        public TypeUserSensor(int i, int i2, int i3) {
            this.mType = i;
            this.mUserId = i2;
            this.mSensor = i3;
        }

        public TypeUserSensor(TypeUserSensor typeUserSensor) {
            this(typeUserSensor.mType, typeUserSensor.mUserId, typeUserSensor.mSensor);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TypeUserSensor)) {
                return false;
            }
            TypeUserSensor typeUserSensor = (TypeUserSensor) obj;
            return this.mType == typeUserSensor.mType && this.mUserId == typeUserSensor.mUserId && this.mSensor == typeUserSensor.mSensor;
        }

        public int hashCode() {
            return (((this.mType * 31) + this.mUserId) * 31) + this.mSensor;
        }
    }

    public void schedulePersist() {
        int size = this.mStates.size();
        ArrayMap arrayMap = new ArrayMap();
        for (int i = 0; i < size; i++) {
            arrayMap.put(new TypeUserSensor((TypeUserSensor) this.mStates.keyAt(i)), new SensorState((SensorState) this.mStates.valueAt(i)));
        }
        IoThread.getHandler().sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.sensorprivacy.PersistedState$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((PersistedState) obj).persist((ArrayMap) obj2);
            }
        }, this, arrayMap));
    }

    public final void persist(ArrayMap arrayMap) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = this.mAtomicFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                resolveSerializer.startTag((String) null, "sensor-privacy");
                resolveSerializer.attributeInt((String) null, "persistence-version", 2);
                resolveSerializer.attributeInt((String) null, "version", 2);
                for (int i = 0; i < arrayMap.size(); i++) {
                    TypeUserSensor typeUserSensor = (TypeUserSensor) arrayMap.keyAt(i);
                    SensorState sensorState = (SensorState) arrayMap.valueAt(i);
                    if (typeUserSensor.mType == 1) {
                        resolveSerializer.startTag((String) null, "sensor-state");
                        resolveSerializer.attributeInt((String) null, "toggle-type", typeUserSensor.mType);
                        resolveSerializer.attributeInt((String) null, "user-id", typeUserSensor.mUserId);
                        resolveSerializer.attributeInt((String) null, "sensor", typeUserSensor.mSensor);
                        resolveSerializer.attributeInt((String) null, "state-type", sensorState.getState());
                        resolveSerializer.attributeLong((String) null, "last-change", sensorState.getLastChange());
                        resolveSerializer.endTag((String) null, "sensor-state");
                    }
                }
                resolveSerializer.endTag((String) null, "sensor-privacy");
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

    public void dump(DualDumpOutputStream dualDumpOutputStream) {
        SparseArray sparseArray = new SparseArray();
        int size = this.mStates.size();
        for (int i = 0; i < size; i++) {
            int i2 = ((TypeUserSensor) this.mStates.keyAt(i)).mType;
            int i3 = ((TypeUserSensor) this.mStates.keyAt(i)).mUserId;
            int i4 = ((TypeUserSensor) this.mStates.keyAt(i)).mSensor;
            SparseArray sparseArray2 = (SparseArray) sparseArray.get(i3);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                sparseArray.put(i3, sparseArray2);
            }
            sparseArray2.put(i4, new Pair(Integer.valueOf(i2), (SensorState) this.mStates.valueAt(i)));
        }
        dualDumpOutputStream.write("storage_implementation", 1138166333444L, SensorPrivacyStateControllerImpl.class.getName());
        int size2 = sparseArray.size();
        for (int i5 = 0; i5 < size2; i5++) {
            int keyAt = sparseArray.keyAt(i5);
            long start = dualDumpOutputStream.start("users", 2246267895811L);
            long j = 1120986464257L;
            dualDumpOutputStream.write("user_id", 1120986464257L, keyAt);
            SparseArray sparseArray3 = (SparseArray) sparseArray.valueAt(i5);
            int i6 = 0;
            for (int size3 = sparseArray3.size(); i6 < size3; size3 = size3) {
                int keyAt2 = sparseArray3.keyAt(i6);
                int intValue = ((Integer) ((Pair) sparseArray3.valueAt(i6)).first).intValue();
                SensorState sensorState = (SensorState) ((Pair) sparseArray3.valueAt(i6)).second;
                long start2 = dualDumpOutputStream.start("sensors", 2246267895812L);
                dualDumpOutputStream.write("sensor", j, keyAt2);
                long start3 = dualDumpOutputStream.start("toggles", 2246267895810L);
                dualDumpOutputStream.write("toggle_type", 1159641169924L, intValue);
                dualDumpOutputStream.write("state_type", 1159641169925L, sensorState.getState());
                dualDumpOutputStream.write("last_change", 1112396529667L, sensorState.getLastChange());
                dualDumpOutputStream.end(start3);
                dualDumpOutputStream.end(start2);
                i6++;
                j = 1120986464257L;
                size2 = size2;
            }
            dualDumpOutputStream.end(start);
        }
    }

    public void forEachKnownState(QuadConsumer quadConsumer) {
        int size = this.mStates.size();
        for (int i = 0; i < size; i++) {
            TypeUserSensor typeUserSensor = (TypeUserSensor) this.mStates.keyAt(i);
            quadConsumer.accept(Integer.valueOf(typeUserSensor.mType), Integer.valueOf(typeUserSensor.mUserId), Integer.valueOf(typeUserSensor.mSensor), (SensorState) this.mStates.valueAt(i));
        }
    }

    /* loaded from: classes3.dex */
    public class PVersion0 {
        public SparseArray mIndividualEnabled;

        public final void upgrade() {
        }

        public PVersion0(int i) {
            this.mIndividualEnabled = new SparseArray();
            if (i != 0) {
                throw new RuntimeException("Only version 0 supported");
            }
        }

        public final void addState(int i, boolean z) {
            this.mIndividualEnabled.put(i, new SensorState(z));
        }
    }

    /* loaded from: classes3.dex */
    public class PVersion1 {
        public SparseArray mIndividualEnabled;

        public final void upgrade() {
        }

        public PVersion1(int i) {
            this.mIndividualEnabled = new SparseArray();
            if (i != 1) {
                throw new RuntimeException("Only version 1 supported");
            }
        }

        public static PVersion1 fromPVersion0(PVersion0 pVersion0) {
            pVersion0.upgrade();
            PVersion1 pVersion1 = new PVersion1(1);
            int[] iArr = {0};
            try {
                iArr = ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserIds();
            } catch (Exception e) {
                Log.e(PersistedState.LOG_TAG, "Unable to get users.", e);
            }
            for (int i : iArr) {
                for (int i2 = 0; i2 < pVersion0.mIndividualEnabled.size(); i2++) {
                    pVersion1.addState(i, pVersion0.mIndividualEnabled.keyAt(i2), ((SensorState) pVersion0.mIndividualEnabled.valueAt(i2)).isEnabled());
                }
            }
            return pVersion1;
        }

        public final void addState(int i, int i2, boolean z) {
            SparseArray sparseArray = (SparseArray) this.mIndividualEnabled.get(i, new SparseArray());
            this.mIndividualEnabled.put(i, sparseArray);
            sparseArray.put(i2, new SensorState(z));
        }
    }

    /* loaded from: classes3.dex */
    public class PVersion2 {
        public ArrayMap mStates;

        public PVersion2(int i) {
            this.mStates = new ArrayMap();
            if (i != 2) {
                throw new RuntimeException("Only version 2 supported");
            }
        }

        public static PVersion2 fromPVersion1(PVersion1 pVersion1) {
            pVersion1.upgrade();
            PVersion2 pVersion2 = new PVersion2(2);
            SparseArray sparseArray = pVersion1.mIndividualEnabled;
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                SparseArray sparseArray2 = (SparseArray) sparseArray.valueAt(i);
                int size2 = sparseArray2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int keyAt2 = sparseArray2.keyAt(i2);
                    SensorState sensorState = (SensorState) sparseArray2.valueAt(i2);
                    pVersion2.addState(1, keyAt, keyAt2, sensorState.getState(), sensorState.getLastChange());
                }
            }
            return pVersion2;
        }

        public final void addState(int i, int i2, int i3, int i4, long j) {
            this.mStates.put(new TypeUserSensor(i, i2, i3), new SensorState(i4, j));
        }
    }
}
