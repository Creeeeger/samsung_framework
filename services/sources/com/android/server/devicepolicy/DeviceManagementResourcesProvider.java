package com.android.server.devicepolicy;

import android.app.admin.DevicePolicyDrawableResource;
import android.app.admin.DevicePolicyStringResource;
import android.app.admin.ParcelableResource;
import android.os.Environment;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Xml;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class DeviceManagementResourcesProvider {
    public final Injector mInjector;
    public final Object mLock;
    public final Map mUpdatedDrawablesForSource;
    public final Map mUpdatedDrawablesForStyle;
    public final Map mUpdatedStrings;

    public DeviceManagementResourcesProvider() {
        this(new Injector());
    }

    public DeviceManagementResourcesProvider(Injector injector) {
        this.mUpdatedDrawablesForStyle = new HashMap();
        this.mUpdatedDrawablesForSource = new HashMap();
        this.mUpdatedStrings = new HashMap();
        this.mLock = new Object();
        Objects.requireNonNull(injector);
        this.mInjector = injector;
    }

    public boolean updateDrawables(List list) {
        boolean updateDrawableForSource;
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            String drawableId = ((DevicePolicyDrawableResource) list.get(i)).getDrawableId();
            String drawableStyle = ((DevicePolicyDrawableResource) list.get(i)).getDrawableStyle();
            String drawableSource = ((DevicePolicyDrawableResource) list.get(i)).getDrawableSource();
            ParcelableResource resource = ((DevicePolicyDrawableResource) list.get(i)).getResource();
            Objects.requireNonNull(drawableId, "drawableId must be provided.");
            Objects.requireNonNull(drawableStyle, "drawableStyle must be provided.");
            Objects.requireNonNull(drawableSource, "drawableSource must be provided.");
            Objects.requireNonNull(resource, "ParcelableResource must be provided.");
            if ("UNDEFINED".equals(drawableSource)) {
                updateDrawableForSource = updateDrawable(drawableId, drawableStyle, resource);
            } else {
                updateDrawableForSource = updateDrawableForSource(drawableId, drawableSource, drawableStyle, resource);
            }
            z |= updateDrawableForSource;
        }
        if (!z) {
            return false;
        }
        synchronized (this.mLock) {
            write();
        }
        return true;
    }

    public final boolean updateDrawable(String str, String str2, ParcelableResource parcelableResource) {
        synchronized (this.mLock) {
            if (!this.mUpdatedDrawablesForStyle.containsKey(str)) {
                this.mUpdatedDrawablesForStyle.put(str, new HashMap());
            }
            if (parcelableResource.equals((ParcelableResource) ((Map) this.mUpdatedDrawablesForStyle.get(str)).get(str2))) {
                return false;
            }
            ((Map) this.mUpdatedDrawablesForStyle.get(str)).put(str2, parcelableResource);
            return true;
        }
    }

    public final boolean updateDrawableForSource(String str, String str2, String str3, ParcelableResource parcelableResource) {
        synchronized (this.mLock) {
            if (!this.mUpdatedDrawablesForSource.containsKey(str)) {
                this.mUpdatedDrawablesForSource.put(str, new HashMap());
            }
            Map map = (Map) this.mUpdatedDrawablesForSource.get(str);
            if (!map.containsKey(str2)) {
                ((Map) this.mUpdatedDrawablesForSource.get(str)).put(str2, new HashMap());
            }
            if (parcelableResource.equals((ParcelableResource) ((Map) map.get(str2)).get(str3))) {
                return false;
            }
            ((Map) map.get(str2)).put(str3, parcelableResource);
            return true;
        }
    }

    public boolean removeDrawables(List list) {
        synchronized (this.mLock) {
            int i = 0;
            boolean z = false;
            while (true) {
                boolean z2 = true;
                if (i >= list.size()) {
                    break;
                }
                String str = (String) list.get(i);
                if (this.mUpdatedDrawablesForStyle.remove(str) == null && this.mUpdatedDrawablesForSource.remove(str) == null) {
                    z2 = false;
                }
                z |= z2;
                i++;
            }
            if (!z) {
                return false;
            }
            write();
            return true;
        }
    }

    public ParcelableResource getDrawable(String str, String str2, String str3) {
        synchronized (this.mLock) {
            ParcelableResource drawableForSourceLocked = getDrawableForSourceLocked(str, str2, str3);
            if (drawableForSourceLocked != null) {
                return drawableForSourceLocked;
            }
            if (!this.mUpdatedDrawablesForStyle.containsKey(str)) {
                return null;
            }
            return (ParcelableResource) ((Map) this.mUpdatedDrawablesForStyle.get(str)).get(str2);
        }
    }

    public ParcelableResource getDrawableForSourceLocked(String str, String str2, String str3) {
        if (this.mUpdatedDrawablesForSource.containsKey(str) && ((Map) this.mUpdatedDrawablesForSource.get(str)).containsKey(str3)) {
            return (ParcelableResource) ((Map) ((Map) this.mUpdatedDrawablesForSource.get(str)).get(str3)).get(str2);
        }
        return null;
    }

    public boolean updateStrings(List list) {
        boolean z = false;
        for (int i = 0; i < list.size(); i++) {
            String stringId = ((DevicePolicyStringResource) list.get(i)).getStringId();
            ParcelableResource resource = ((DevicePolicyStringResource) list.get(i)).getResource();
            Objects.requireNonNull(stringId, "stringId must be provided.");
            Objects.requireNonNull(resource, "ParcelableResource must be provided.");
            z |= updateString(stringId, resource);
        }
        if (!z) {
            return false;
        }
        synchronized (this.mLock) {
            write();
        }
        return true;
    }

    public final boolean updateString(String str, ParcelableResource parcelableResource) {
        synchronized (this.mLock) {
            if (parcelableResource.equals((ParcelableResource) this.mUpdatedStrings.get(str))) {
                return false;
            }
            this.mUpdatedStrings.put(str, parcelableResource);
            return true;
        }
    }

    public boolean removeStrings(List list) {
        synchronized (this.mLock) {
            int i = 0;
            boolean z = false;
            while (true) {
                boolean z2 = true;
                if (i >= list.size()) {
                    break;
                }
                if (this.mUpdatedStrings.remove((String) list.get(i)) == null) {
                    z2 = false;
                }
                z |= z2;
                i++;
            }
            if (!z) {
                return false;
            }
            write();
            return true;
        }
    }

    public ParcelableResource getString(String str) {
        ParcelableResource parcelableResource;
        synchronized (this.mLock) {
            parcelableResource = (ParcelableResource) this.mUpdatedStrings.get(str);
        }
        return parcelableResource;
    }

    public final void write() {
        Log.d("DevicePolicyManagerService", "Writing updated resources to file.");
        new ResourcesReaderWriter().writeToFileLocked();
    }

    public void load() {
        synchronized (this.mLock) {
            new ResourcesReaderWriter().readFromFileLocked();
        }
    }

    public final File getResourcesFile() {
        return new File(this.mInjector.environmentGetDataSystemDirectory(), "updated_resources.xml");
    }

    /* loaded from: classes2.dex */
    public class ResourcesReaderWriter {
        public final File mFile;

        public ResourcesReaderWriter() {
            this.mFile = DeviceManagementResourcesProvider.this.getResourcesFile();
        }

        public void writeToFileLocked() {
            Log.d("DevicePolicyManagerService", "Writing to " + this.mFile);
            AtomicFile atomicFile = new AtomicFile(this.mFile);
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream startWrite = atomicFile.startWrite();
                try {
                    TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                    resolveSerializer.startDocument((String) null, Boolean.TRUE);
                    resolveSerializer.startTag((String) null, "root");
                    writeInner(resolveSerializer);
                    resolveSerializer.endTag((String) null, "root");
                    resolveSerializer.endDocument();
                    resolveSerializer.flush();
                    atomicFile.finishWrite(startWrite);
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = startWrite;
                    Log.e("DevicePolicyManagerService", "Exception when writing", e);
                    if (fileOutputStream != null) {
                        atomicFile.failWrite(fileOutputStream);
                    }
                }
            } catch (IOException e2) {
                e = e2;
            }
        }

        public void readFromFileLocked() {
            if (!this.mFile.exists()) {
                Log.d("DevicePolicyManagerService", "" + this.mFile + " doesn't exist");
                return;
            }
            Log.d("DevicePolicyManagerService", "Reading from " + this.mFile);
            FileInputStream fileInputStream = null;
            try {
                try {
                    fileInputStream = new AtomicFile(this.mFile).openRead();
                    TypedXmlPullParser resolvePullParser = Xml.resolvePullParser(fileInputStream);
                    int i = 0;
                    while (true) {
                        int next = resolvePullParser.next();
                        if (next == 1) {
                            break;
                        }
                        if (next == 2) {
                            i++;
                            String name = resolvePullParser.getName();
                            if (i == 1) {
                                if (!"root".equals(name)) {
                                    Log.e("DevicePolicyManagerService", "Invalid root tag: " + name);
                                    return;
                                }
                            } else if (!readInner(resolvePullParser, i, name)) {
                                return;
                            }
                        } else if (next == 3) {
                            i--;
                        }
                    }
                } catch (IOException | XmlPullParserException e) {
                    Log.e("DevicePolicyManagerService", "Error parsing resources file", e);
                }
            } finally {
                IoUtils.closeQuietly(fileInputStream);
            }
        }

        public void writeInner(TypedXmlSerializer typedXmlSerializer) {
            writeDrawablesForStylesInner(typedXmlSerializer);
            writeDrawablesForSourcesInner(typedXmlSerializer);
            writeStringsInner(typedXmlSerializer);
        }

        public final void writeDrawablesForStylesInner(TypedXmlSerializer typedXmlSerializer) {
            if (DeviceManagementResourcesProvider.this.mUpdatedDrawablesForStyle == null || DeviceManagementResourcesProvider.this.mUpdatedDrawablesForStyle.isEmpty()) {
                return;
            }
            for (Map.Entry entry : DeviceManagementResourcesProvider.this.mUpdatedDrawablesForStyle.entrySet()) {
                for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                    typedXmlSerializer.startTag((String) null, "drawable-style-entry");
                    typedXmlSerializer.attribute((String) null, "drawable-id", (String) entry.getKey());
                    typedXmlSerializer.attribute((String) null, "drawable-style", (String) entry2.getKey());
                    ((ParcelableResource) entry2.getValue()).writeToXmlFile(typedXmlSerializer);
                    typedXmlSerializer.endTag((String) null, "drawable-style-entry");
                }
            }
        }

        public final void writeDrawablesForSourcesInner(TypedXmlSerializer typedXmlSerializer) {
            if (DeviceManagementResourcesProvider.this.mUpdatedDrawablesForSource == null || DeviceManagementResourcesProvider.this.mUpdatedDrawablesForSource.isEmpty()) {
                return;
            }
            for (Map.Entry entry : DeviceManagementResourcesProvider.this.mUpdatedDrawablesForSource.entrySet()) {
                for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                    for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                        typedXmlSerializer.startTag((String) null, "drawable-source-entry");
                        typedXmlSerializer.attribute((String) null, "drawable-id", (String) entry.getKey());
                        typedXmlSerializer.attribute((String) null, "drawable-source", (String) entry2.getKey());
                        typedXmlSerializer.attribute((String) null, "drawable-style", (String) entry3.getKey());
                        ((ParcelableResource) entry3.getValue()).writeToXmlFile(typedXmlSerializer);
                        typedXmlSerializer.endTag((String) null, "drawable-source-entry");
                    }
                }
            }
        }

        public final void writeStringsInner(TypedXmlSerializer typedXmlSerializer) {
            if (DeviceManagementResourcesProvider.this.mUpdatedStrings == null || DeviceManagementResourcesProvider.this.mUpdatedStrings.isEmpty()) {
                return;
            }
            for (Map.Entry entry : DeviceManagementResourcesProvider.this.mUpdatedStrings.entrySet()) {
                typedXmlSerializer.startTag((String) null, "string-entry");
                typedXmlSerializer.attribute((String) null, "source-id", (String) entry.getKey());
                ((ParcelableResource) entry.getValue()).writeToXmlFile(typedXmlSerializer);
                typedXmlSerializer.endTag((String) null, "string-entry");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0019, code lost:
        
            if (r8.equals("drawable-style-entry") == false) goto L7;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean readInner(com.android.modules.utils.TypedXmlPullParser r6, int r7, java.lang.String r8) {
            /*
                r5 = this;
                r0 = 1
                r1 = 2
                if (r7 <= r1) goto L5
                return r0
            L5:
                r8.hashCode()
                int r7 = r8.hashCode()
                r2 = 0
                r3 = -1
                switch(r7) {
                    case -1021023306: goto L27;
                    case 1224071439: goto L1c;
                    case 1406273191: goto L13;
                    default: goto L11;
                }
            L11:
                r1 = r3
                goto L32
            L13:
                java.lang.String r7 = "drawable-style-entry"
                boolean r7 = r8.equals(r7)
                if (r7 != 0) goto L32
                goto L11
            L1c:
                java.lang.String r7 = "drawable-source-entry"
                boolean r7 = r8.equals(r7)
                if (r7 != 0) goto L25
                goto L11
            L25:
                r1 = r0
                goto L32
            L27:
                java.lang.String r7 = "string-entry"
                boolean r7 = r8.equals(r7)
                if (r7 != 0) goto L31
                goto L11
            L31:
                r1 = r2
            L32:
                java.lang.String r7 = "drawable-style"
                java.lang.String r3 = "drawable-id"
                r4 = 0
                switch(r1) {
                    case 0: goto Lf0;
                    case 1: goto L88;
                    case 2: goto L51;
                    default: goto L3a;
                }
            L3a:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "Unexpected tag: "
                r5.append(r6)
                r5.append(r8)
                java.lang.String r5 = r5.toString()
                java.lang.String r6 = "DevicePolicyManagerService"
                android.util.Log.e(r6, r5)
                return r2
            L51:
                java.lang.String r8 = r6.getAttributeValue(r4, r3)
                java.lang.String r7 = r6.getAttributeValue(r4, r7)
                android.app.admin.ParcelableResource r6 = android.app.admin.ParcelableResource.createFromXml(r6)
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r1 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r1 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4932$$Nest$fgetmUpdatedDrawablesForStyle(r1)
                boolean r1 = r1.containsKey(r8)
                if (r1 != 0) goto L77
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r1 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r1 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4932$$Nest$fgetmUpdatedDrawablesForStyle(r1)
                java.util.HashMap r2 = new java.util.HashMap
                r2.<init>()
                r1.put(r8, r2)
            L77:
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4932$$Nest$fgetmUpdatedDrawablesForStyle(r5)
                java.lang.Object r5 = r5.get(r8)
                java.util.Map r5 = (java.util.Map) r5
                r5.put(r7, r6)
                goto L104
            L88:
                java.lang.String r8 = r6.getAttributeValue(r4, r3)
                java.lang.String r1 = "drawable-source"
                java.lang.String r1 = r6.getAttributeValue(r4, r1)
                java.lang.String r7 = r6.getAttributeValue(r4, r7)
                android.app.admin.ParcelableResource r6 = android.app.admin.ParcelableResource.createFromXml(r6)
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4931$$Nest$fgetmUpdatedDrawablesForSource(r2)
                boolean r2 = r2.containsKey(r8)
                if (r2 != 0) goto Lb4
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4931$$Nest$fgetmUpdatedDrawablesForSource(r2)
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
                r2.put(r8, r3)
            Lb4:
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4931$$Nest$fgetmUpdatedDrawablesForSource(r2)
                java.lang.Object r2 = r2.get(r8)
                java.util.Map r2 = (java.util.Map) r2
                boolean r2 = r2.containsKey(r1)
                if (r2 != 0) goto Lda
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r2 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4931$$Nest$fgetmUpdatedDrawablesForSource(r2)
                java.lang.Object r2 = r2.get(r8)
                java.util.Map r2 = (java.util.Map) r2
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
                r2.put(r1, r3)
            Lda:
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4931$$Nest$fgetmUpdatedDrawablesForSource(r5)
                java.lang.Object r5 = r5.get(r8)
                java.util.Map r5 = (java.util.Map) r5
                java.lang.Object r5 = r5.get(r1)
                java.util.Map r5 = (java.util.Map) r5
                r5.put(r7, r6)
                goto L104
            Lf0:
                java.lang.String r7 = "source-id"
                java.lang.String r7 = r6.getAttributeValue(r4, r7)
                com.android.server.devicepolicy.DeviceManagementResourcesProvider r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.this
                java.util.Map r5 = com.android.server.devicepolicy.DeviceManagementResourcesProvider.m4933$$Nest$fgetmUpdatedStrings(r5)
                android.app.admin.ParcelableResource r6 = android.app.admin.ParcelableResource.createFromXml(r6)
                r5.put(r7, r6)
            L104:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.DeviceManagementResourcesProvider.ResourcesReaderWriter.readInner(com.android.modules.utils.TypedXmlPullParser, int, java.lang.String):boolean");
        }
    }

    /* loaded from: classes2.dex */
    public class Injector {
        public File environmentGetDataSystemDirectory() {
            return Environment.getDataSystemDirectory();
        }
    }
}
