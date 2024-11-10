package com.android.server.pm;

import android.content.pm.ApplicationInfo;
import android.os.Environment;
import com.android.server.compat.PlatformCompat;
import com.android.server.pm.Policy;
import com.android.server.pm.parsing.pkg.AndroidPackageUtils;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.PackageState;
import com.android.server.pm.pkg.SharedUserApi;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes3.dex */
public abstract class SELinuxMMAC {
    public static List sMacPermissions;
    public static List sPolicies = new ArrayList();
    public static boolean sPolicyRead;

    static {
        ArrayList arrayList = new ArrayList();
        sMacPermissions = arrayList;
        arrayList.add(new File(Environment.getRootDirectory(), "/etc/selinux/plat_mac_permissions.xml"));
        File file = new File(Environment.getSystemExtDirectory(), "/etc/selinux/system_ext_mac_permissions.xml");
        if (file.exists()) {
            sMacPermissions.add(file);
        }
        File file2 = new File(Environment.getProductDirectory(), "/etc/selinux/product_mac_permissions.xml");
        if (file2.exists()) {
            sMacPermissions.add(file2);
        }
        File file3 = new File(Environment.getVendorDirectory(), "/etc/selinux/vendor_mac_permissions.xml");
        if (file3.exists()) {
            sMacPermissions.add(file3);
        }
        File file4 = new File(Environment.getOdmDirectory(), "/etc/selinux/odm_mac_permissions.xml");
        if (file4.exists()) {
            sMacPermissions.add(file4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean readInstallPolicy() {
        /*
            Method dump skipped, instructions count: 272
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.SELinuxMMAC.readInstallPolicy():boolean");
    }

    public static Policy readSignerOrThrow(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "signer");
        Policy.PolicyBuilder policyBuilder = new Policy.PolicyBuilder();
        String attributeValue = xmlPullParser.getAttributeValue(null, "signature");
        if (attributeValue != null) {
            policyBuilder.addSignature(attributeValue);
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("seinfo".equals(name)) {
                    policyBuilder.setGlobalSeinfoOrThrow(xmlPullParser.getAttributeValue(null, "value"));
                    readSeinfo(xmlPullParser);
                } else if ("package".equals(name)) {
                    readPackageOrThrow(xmlPullParser, policyBuilder);
                } else if ("cert".equals(name)) {
                    policyBuilder.addSignature(xmlPullParser.getAttributeValue(null, "signature"));
                    readCert(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return policyBuilder.build();
    }

    public static void readPackageOrThrow(XmlPullParser xmlPullParser, Policy.PolicyBuilder policyBuilder) {
        xmlPullParser.require(2, null, "package");
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("seinfo".equals(xmlPullParser.getName())) {
                    policyBuilder.addInnerPackageMapOrThrow(attributeValue, xmlPullParser.getAttributeValue(null, "value"));
                    readSeinfo(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }

    public static void readCert(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "cert");
        xmlPullParser.nextTag();
    }

    public static void readSeinfo(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "seinfo");
        xmlPullParser.nextTag();
    }

    public static void skip(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    public static int getTargetSdkVersionForSeInfo(AndroidPackage androidPackage, SharedUserApi sharedUserApi, PlatformCompat platformCompat) {
        if (sharedUserApi != null && sharedUserApi.getPackages().size() != 0) {
            return sharedUserApi.getSeInfoTargetSdkVersion();
        }
        ApplicationInfo generateAppInfoWithoutState = AndroidPackageUtils.generateAppInfoWithoutState(androidPackage);
        if (platformCompat.isChangeEnabledInternal(143539591L, generateAppInfoWithoutState)) {
            return Math.max(10000, androidPackage.getTargetSdkVersion());
        }
        if (platformCompat.isChangeEnabledInternal(168782947L, generateAppInfoWithoutState)) {
            return Math.max(30, androidPackage.getTargetSdkVersion());
        }
        return androidPackage.getTargetSdkVersion();
    }

    public static String getSeInfo(PackageState packageState, AndroidPackage androidPackage, SharedUserApi sharedUserApi, PlatformCompat platformCompat) {
        boolean isPrivileged;
        int targetSdkVersionForSeInfo = getTargetSdkVersionForSeInfo(androidPackage, sharedUserApi, platformCompat);
        if (sharedUserApi != null) {
            isPrivileged = packageState.isPrivileged() | sharedUserApi.isPrivileged();
        } else {
            isPrivileged = packageState.isPrivileged();
        }
        return getSeInfo(androidPackage, isPrivileged, targetSdkVersionForSeInfo);
    }

    public static String getSeInfo(AndroidPackage androidPackage, boolean z, int i) {
        String str;
        synchronized (sPolicies) {
            str = null;
            if (sPolicyRead) {
                Iterator it = sPolicies.iterator();
                while (it.hasNext() && (str = ((Policy) it.next()).getMatchedSeInfo(androidPackage)) == null) {
                }
            }
        }
        if (str == null) {
            str = "default";
        }
        if (z) {
            str = str + ":privapp";
        }
        return str + ":targetSdkVersion=" + i;
    }
}
