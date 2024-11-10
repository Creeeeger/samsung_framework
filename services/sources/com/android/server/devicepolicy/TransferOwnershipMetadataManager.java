package com.android.server.devicepolicy;

import android.content.ComponentName;
import android.os.Environment;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.Preconditions;
import com.android.modules.utils.TypedXmlSerializer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class TransferOwnershipMetadataManager {
    public static final String TAG = "com.android.server.devicepolicy.TransferOwnershipMetadataManager";
    static final String TAG_ADMIN_TYPE = "admin-type";
    static final String TAG_SOURCE_COMPONENT = "source-component";
    static final String TAG_TARGET_COMPONENT = "target-component";
    static final String TAG_USER_ID = "user-id";
    public final Injector mInjector;

    public TransferOwnershipMetadataManager() {
        this(new Injector());
    }

    public TransferOwnershipMetadataManager(Injector injector) {
        this.mInjector = injector;
    }

    public boolean saveMetadataFile(Metadata metadata) {
        File file = new File(this.mInjector.getOwnerTransferMetadataDir(), "owner-transfer-metadata.xml");
        AtomicFile atomicFile = new AtomicFile(file);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = atomicFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                insertSimpleTag(resolveSerializer, TAG_USER_ID, Integer.toString(metadata.userId));
                insertSimpleTag(resolveSerializer, TAG_SOURCE_COMPONENT, metadata.sourceComponent.flattenToString());
                insertSimpleTag(resolveSerializer, TAG_TARGET_COMPONENT, metadata.targetComponent.flattenToString());
                insertSimpleTag(resolveSerializer, TAG_ADMIN_TYPE, metadata.adminType);
                resolveSerializer.endDocument();
                atomicFile.finishWrite(startWrite);
                return true;
            } catch (IOException e) {
                e = e;
                fileOutputStream = startWrite;
                Slog.e(TAG, "Caught exception while trying to save Owner Transfer Params to file " + file, e);
                file.delete();
                atomicFile.failWrite(fileOutputStream);
                return false;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public final void insertSimpleTag(TypedXmlSerializer typedXmlSerializer, String str, String str2) {
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.text(str2);
        typedXmlSerializer.endTag((String) null, str);
    }

    public Metadata loadMetadataFile() {
        File file = new File(this.mInjector.getOwnerTransferMetadataDir(), "owner-transfer-metadata.xml");
        if (!file.exists()) {
            return null;
        }
        Slog.d(TAG, "Loading TransferOwnershipMetadataManager from " + file);
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Metadata parseMetadataFile = parseMetadataFile(Xml.resolvePullParser(fileInputStream));
                fileInputStream.close();
                return parseMetadataFile;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | IllegalArgumentException | XmlPullParserException e) {
            Slog.e(TAG, "Caught exception while trying to load the owner transfer params from file " + file, e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x004e, code lost:
    
        if (r5.equals(com.android.server.devicepolicy.TransferOwnershipMetadataManager.TAG_USER_ID) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.server.devicepolicy.TransferOwnershipMetadataManager.Metadata parseMetadataFile(com.android.modules.utils.TypedXmlPullParser r11) {
        /*
            r10 = this;
            int r10 = r11.getDepth()
            r0 = 0
            r1 = 0
            r4 = r0
            r2 = r1
            r3 = r2
        L9:
            int r5 = r11.next()
            r6 = 1
            if (r5 == r6) goto L84
            r7 = 3
            if (r5 != r7) goto L19
            int r8 = r11.getDepth()
            if (r8 <= r10) goto L84
        L19:
            if (r5 == r7) goto L9
            r8 = 4
            if (r5 != r8) goto L1f
            goto L9
        L1f:
            java.lang.String r5 = r11.getName()
            r5.hashCode()
            int r8 = r5.hashCode()
            r9 = -1
            switch(r8) {
                case -337219647: goto L51;
                case -147180963: goto L47;
                case 281362891: goto L3b;
                case 641951480: goto L30;
                default: goto L2e;
            }
        L2e:
            r6 = r9
            goto L5c
        L30:
            java.lang.String r6 = "admin-type"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L39
            goto L2e
        L39:
            r6 = r7
            goto L5c
        L3b:
            java.lang.String r6 = "source-component"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L45
            goto L2e
        L45:
            r6 = 2
            goto L5c
        L47:
            java.lang.String r7 = "user-id"
            boolean r5 = r5.equals(r7)
            if (r5 != 0) goto L5c
            goto L2e
        L51:
            java.lang.String r6 = "target-component"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L5b
            goto L2e
        L5b:
            r6 = r0
        L5c:
            switch(r6) {
                case 0: goto L7c;
                case 1: goto L70;
                case 2: goto L68;
                case 3: goto L60;
                default: goto L5f;
            }
        L5f:
            goto L9
        L60:
            r11.next()
            java.lang.String r3 = r11.getText()
            goto L9
        L68:
            r11.next()
            java.lang.String r1 = r11.getText()
            goto L9
        L70:
            r11.next()
            java.lang.String r4 = r11.getText()
            int r4 = java.lang.Integer.parseInt(r4)
            goto L9
        L7c:
            r11.next()
            java.lang.String r2 = r11.getText()
            goto L9
        L84:
            com.android.server.devicepolicy.TransferOwnershipMetadataManager$Metadata r10 = new com.android.server.devicepolicy.TransferOwnershipMetadataManager$Metadata
            r10.<init>(r1, r2, r4, r3)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.TransferOwnershipMetadataManager.parseMetadataFile(com.android.modules.utils.TypedXmlPullParser):com.android.server.devicepolicy.TransferOwnershipMetadataManager$Metadata");
    }

    public void deleteMetadataFile() {
        new File(this.mInjector.getOwnerTransferMetadataDir(), "owner-transfer-metadata.xml").delete();
    }

    public boolean metadataFileExists() {
        return new File(this.mInjector.getOwnerTransferMetadataDir(), "owner-transfer-metadata.xml").exists();
    }

    /* loaded from: classes2.dex */
    public class Metadata {
        public final String adminType;
        public final ComponentName sourceComponent;
        public final ComponentName targetComponent;
        public final int userId;

        public Metadata(ComponentName componentName, ComponentName componentName2, int i, String str) {
            this.sourceComponent = componentName;
            this.targetComponent = componentName2;
            Objects.requireNonNull(componentName);
            Objects.requireNonNull(componentName2);
            Preconditions.checkStringNotEmpty(str);
            this.userId = i;
            this.adminType = str;
        }

        public Metadata(String str, String str2, int i, String str3) {
            this(unflattenComponentUnchecked(str), unflattenComponentUnchecked(str2), i, str3);
        }

        public static ComponentName unflattenComponentUnchecked(String str) {
            Objects.requireNonNull(str);
            return ComponentName.unflattenFromString(str);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Metadata)) {
                return false;
            }
            Metadata metadata = (Metadata) obj;
            return this.userId == metadata.userId && this.sourceComponent.equals(metadata.sourceComponent) && this.targetComponent.equals(metadata.targetComponent) && TextUtils.equals(this.adminType, metadata.adminType);
        }

        public int hashCode() {
            return ((((((this.userId + 31) * 31) + this.sourceComponent.hashCode()) * 31) + this.targetComponent.hashCode()) * 31) + this.adminType.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    class Injector {
        public File getOwnerTransferMetadataDir() {
            return Environment.getDataSystemDirectory();
        }
    }
}
