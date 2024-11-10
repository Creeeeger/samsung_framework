package com.android.server.pm;

import android.content.pm.Signature;
import android.content.pm.SigningDetails;
import com.android.internal.util.XmlUtils;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.samsung.android.knox.custom.LauncherConfigurationInternal;
import java.security.cert.CertificateException;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class PackageSignatures {
    public SigningDetails mSigningDetails;

    public PackageSignatures(PackageSignatures packageSignatures) {
        if (packageSignatures != null && packageSignatures.mSigningDetails != SigningDetails.UNKNOWN) {
            this.mSigningDetails = new SigningDetails(packageSignatures.mSigningDetails);
        } else {
            this.mSigningDetails = SigningDetails.UNKNOWN;
        }
    }

    public PackageSignatures() {
        this.mSigningDetails = SigningDetails.UNKNOWN;
    }

    public void writeXml(TypedXmlSerializer typedXmlSerializer, String str, ArrayList arrayList) {
        if (this.mSigningDetails.getSignatures() == null) {
            return;
        }
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeInt((String) null, "count", this.mSigningDetails.getSignatures().length);
        typedXmlSerializer.attributeInt((String) null, "schemeVersion", this.mSigningDetails.getSignatureSchemeVersion());
        writeCertsListXml(typedXmlSerializer, arrayList, this.mSigningDetails.getSignatures(), false);
        if (this.mSigningDetails.getPastSigningCertificates() != null) {
            typedXmlSerializer.startTag((String) null, "pastSigs");
            typedXmlSerializer.attributeInt((String) null, "count", this.mSigningDetails.getPastSigningCertificates().length);
            writeCertsListXml(typedXmlSerializer, arrayList, this.mSigningDetails.getPastSigningCertificates(), true);
            typedXmlSerializer.endTag((String) null, "pastSigs");
        }
        typedXmlSerializer.endTag((String) null, str);
    }

    public final void writeCertsListXml(TypedXmlSerializer typedXmlSerializer, ArrayList arrayList, Signature[] signatureArr, boolean z) {
        for (Signature signature : signatureArr) {
            typedXmlSerializer.startTag((String) null, "cert");
            int hashCode = signature.hashCode();
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Signature signature2 = (Signature) arrayList.get(i);
                if (signature2.hashCode() == hashCode && signature2.equals(signature)) {
                    typedXmlSerializer.attributeInt((String) null, LauncherConfigurationInternal.KEY_INDEX_INT, i);
                    break;
                }
                i++;
            }
            if (i >= size) {
                arrayList.add(signature);
                typedXmlSerializer.attributeInt((String) null, LauncherConfigurationInternal.KEY_INDEX_INT, size);
                signature.writeToXmlAttributeBytesHex(typedXmlSerializer, null, "key");
            }
            if (z) {
                typedXmlSerializer.attributeInt((String) null, "flags", signature.getFlags());
            }
            typedXmlSerializer.endTag((String) null, "cert");
        }
    }

    public void readXml(TypedXmlPullParser typedXmlPullParser, ArrayList arrayList) {
        SigningDetails.Builder builder = new SigningDetails.Builder();
        int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "count", -1);
        if (attributeInt == -1) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <sigs> has no count at " + typedXmlPullParser.getPositionDescription());
            XmlUtils.skipCurrentTag(typedXmlPullParser);
            return;
        }
        int attributeInt2 = typedXmlPullParser.getAttributeInt((String) null, "schemeVersion", 0);
        if (attributeInt2 == 0) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <sigs> has no schemeVersion at " + typedXmlPullParser.getPositionDescription());
        }
        builder.setSignatureSchemeVersion(attributeInt2);
        ArrayList arrayList2 = new ArrayList();
        int readCertsListXml = readCertsListXml(typedXmlPullParser, arrayList, arrayList2, attributeInt, false, builder);
        builder.setSignatures((Signature[]) arrayList2.toArray(new Signature[arrayList2.size()]));
        if (readCertsListXml < attributeInt) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <sigs> count does not match number of  <cert> entries" + typedXmlPullParser.getPositionDescription());
        }
        try {
            this.mSigningDetails = builder.build();
        } catch (CertificateException unused) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s).");
            this.mSigningDetails = SigningDetails.UNKNOWN;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int readCertsListXml(com.android.modules.utils.TypedXmlPullParser r19, java.util.ArrayList r20, java.util.ArrayList r21, int r22, boolean r23, android.content.pm.SigningDetails.Builder r24) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PackageSignatures.readCertsListXml(com.android.modules.utils.TypedXmlPullParser, java.util.ArrayList, java.util.ArrayList, int, boolean, android.content.pm.SigningDetails$Builder):int");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("PackageSignatures{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" version:");
        sb.append(this.mSigningDetails.getSignatureSchemeVersion());
        sb.append(", signatures:[");
        if (this.mSigningDetails.getSignatures() != null) {
            for (int i = 0; i < this.mSigningDetails.getSignatures().length; i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(Integer.toHexString(this.mSigningDetails.getSignatures()[i].hashCode()));
            }
        }
        sb.append("]");
        sb.append(", past signatures:[");
        if (this.mSigningDetails.getPastSigningCertificates() != null) {
            for (int i2 = 0; i2 < this.mSigningDetails.getPastSigningCertificates().length; i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(Integer.toHexString(this.mSigningDetails.getPastSigningCertificates()[i2].hashCode()));
                sb.append(" flags: ");
                sb.append(Integer.toHexString(this.mSigningDetails.getPastSigningCertificates()[i2].getFlags()));
            }
        }
        sb.append("]}");
        return sb.toString();
    }
}
