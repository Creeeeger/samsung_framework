package com.android.server.policy.role;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Environment;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.CollectionUtils;
import com.android.server.LocalServices;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.role.RoleServicePlatformHelper;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import libcore.util.HexEncoding;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class RoleServicePlatformHelperImpl implements RoleServicePlatformHelper {
    public static final String LOG_TAG = "RoleServicePlatformHelperImpl";
    public final Context mContext;

    public RoleServicePlatformHelperImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.android.server.role.RoleServicePlatformHelper
    public Map getLegacyRoleState(int i) {
        Map readFile = readFile(i);
        return readFile == null ? readFromLegacySettings(i) : readFile;
    }

    public final Map readFile(int i) {
        File file = getFile(i);
        try {
            try {
                FileInputStream openRead = new AtomicFile(file).openRead();
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openRead, null);
                    Map parseXml = parseXml(newPullParser);
                    Slog.i(LOG_TAG, "Read legacy roles.xml successfully");
                    if (openRead != null) {
                        openRead.close();
                    }
                    return parseXml;
                } catch (Throwable th) {
                    if (openRead != null) {
                        try {
                            openRead.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused) {
                Slog.i(LOG_TAG, "Legacy roles.xml not found");
                return null;
            }
        } catch (IOException | XmlPullParserException e) {
            Slog.wtf(LOG_TAG, "Failed to parse legacy roles.xml: " + file, e);
            return null;
        }
    }

    public final Map parseXml(XmlPullParser xmlPullParser) {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (depth <= depth2 && next == 2 && xmlPullParser.getName().equals("roles")) {
                return parseRoles(xmlPullParser);
            }
        }
        throw new IOException("Missing <roles> in roles.xml");
    }

    public final Map parseRoles(XmlPullParser xmlPullParser) {
        int depth;
        ArrayMap arrayMap = new ArrayMap();
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (depth <= depth2 && next == 2 && xmlPullParser.getName().equals("role")) {
                arrayMap.put(xmlPullParser.getAttributeValue(null, "name"), parseRoleHoldersLocked(xmlPullParser));
            }
        }
        return arrayMap;
    }

    public final Set parseRoleHoldersLocked(XmlPullParser xmlPullParser) {
        int depth;
        ArraySet arraySet = new ArraySet();
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (depth <= depth2 && next == 2 && xmlPullParser.getName().equals("holder")) {
                arraySet.add(xmlPullParser.getAttributeValue(null, "name"));
            }
        }
        return arraySet;
    }

    public static File getFile(int i) {
        return new File(Environment.getUserSystemDirectory(i), "roles.xml");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x003e, code lost:
    
        if (android.text.TextUtils.isEmpty(r2) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Map readFromLegacySettings(int r7) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.role.RoleServicePlatformHelperImpl.readFromLegacySettings(int):java.util.Map");
    }

    public final boolean isSettingsApplication(String str, int i) {
        ActivityInfo activityInfo;
        ResolveInfo resolveActivityAsUser = this.mContext.getPackageManager().resolveActivityAsUser(new Intent("android.settings.SETTINGS"), 851968, i);
        if (resolveActivityAsUser == null || (activityInfo = resolveActivityAsUser.activityInfo) == null) {
            return false;
        }
        return Objects.equals(str, activityInfo.packageName);
    }

    @Override // com.android.server.role.RoleServicePlatformHelper
    public String computePackageStateHash(final int i) {
        final PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        MessageDigestOutputStream messageDigestOutputStream = new MessageDigestOutputStream();
        final DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(messageDigestOutputStream));
        packageManagerInternal.forEachInstalledPackage(new Consumer() { // from class: com.android.server.policy.role.RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RoleServicePlatformHelperImpl.lambda$computePackageStateHash$0(dataOutputStream, packageManagerInternal, i, (AndroidPackage) obj);
            }
        }, i);
        return messageDigestOutputStream.getDigestAsString();
    }

    public static /* synthetic */ void lambda$computePackageStateHash$0(DataOutputStream dataOutputStream, PackageManagerInternal packageManagerInternal, int i, AndroidPackage androidPackage) {
        try {
            dataOutputStream.writeUTF(androidPackage.getPackageName());
            dataOutputStream.writeLong(androidPackage.getLongVersionCode());
            dataOutputStream.writeInt(packageManagerInternal.getApplicationEnabledState(androidPackage.getPackageName(), i));
            List requestedPermissions = androidPackage.getRequestedPermissions();
            int size = requestedPermissions.size();
            dataOutputStream.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                dataOutputStream.writeUTF((String) requestedPermissions.get(i2));
            }
            ArraySet enabledComponents = packageManagerInternal.getEnabledComponents(androidPackage.getPackageName(), i);
            int size2 = CollectionUtils.size(enabledComponents);
            dataOutputStream.writeInt(size2);
            for (int i3 = 0; i3 < size2; i3++) {
                dataOutputStream.writeUTF((String) enabledComponents.valueAt(i3));
            }
            ArraySet disabledComponents = packageManagerInternal.getDisabledComponents(androidPackage.getPackageName(), i);
            int size3 = CollectionUtils.size(disabledComponents);
            for (int i4 = 0; i4 < size3; i4++) {
                dataOutputStream.writeUTF((String) disabledComponents.valueAt(i4));
            }
            for (Signature signature : androidPackage.getSigningDetails().getSignatures()) {
                dataOutputStream.write(signature.toByteArray());
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* loaded from: classes3.dex */
    public class MessageDigestOutputStream extends OutputStream {
        public final MessageDigest mMessageDigest;

        public MessageDigestOutputStream() {
            try {
                this.mMessageDigest = MessageDigest.getInstance("SHA256");
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException("Failed to create MessageDigest", e);
            }
        }

        public String getDigestAsString() {
            return HexEncoding.encodeToString(this.mMessageDigest.digest(), true);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.mMessageDigest.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.mMessageDigest.update(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.mMessageDigest.update(bArr, i, i2);
        }
    }
}
