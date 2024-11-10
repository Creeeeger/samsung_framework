package com.android.server.security;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.security.attestationverification.AttestationVerificationManager;
import android.util.Log;
import android.util.Slog;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.security.AndroidKeystoreAttestationVerificationAttributes;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class AttestationVerificationPeerDeviceVerifier {
    public static final Set ANDROID_SYSTEM_PACKAGE_NAME_SET;
    public static final boolean DEBUG;
    public final CertPathValidator mCertPathValidator;
    public final CertificateFactory mCertificateFactory;
    public final Context mContext;
    public final boolean mRevocationEnabled;
    public final LocalDate mTestLocalPatchDate;
    public final LocalDate mTestSystemDate;
    public final Set mTrustAnchors;

    static {
        DEBUG = Build.IS_DEBUGGABLE && Log.isLoggable("AVF", 2);
        ANDROID_SYSTEM_PACKAGE_NAME_SET = Collections.singleton("AndroidSystem");
    }

    public AttestationVerificationPeerDeviceVerifier(Context context) {
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mCertificateFactory = CertificateFactory.getInstance("X.509");
        this.mCertPathValidator = CertPathValidator.getInstance("PKIX");
        this.mTrustAnchors = getTrustAnchors();
        this.mRevocationEnabled = true;
        this.mTestSystemDate = null;
        this.mTestLocalPatchDate = null;
    }

    public AttestationVerificationPeerDeviceVerifier(Context context, Set set, boolean z, LocalDate localDate, LocalDate localDate2) {
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mCertificateFactory = CertificateFactory.getInstance("X.509");
        this.mCertPathValidator = CertPathValidator.getInstance("PKIX");
        this.mTrustAnchors = set;
        this.mRevocationEnabled = z;
        this.mTestSystemDate = localDate;
        this.mTestLocalPatchDate = localDate2;
    }

    public int verifyAttestation(int i, Bundle bundle, byte[] bArr) {
        if (this.mCertificateFactory == null) {
            debugVerboseLog("Unable to access CertificateFactory");
            return 2;
        }
        if (this.mCertPathValidator == null) {
            debugVerboseLog("Unable to access CertPathValidator");
            return 2;
        }
        if (!validateAttestationParameters(i, bundle)) {
            return 2;
        }
        try {
            List certificates = getCertificates(bArr);
            validateCertificateChain(certificates);
            X509Certificate x509Certificate = (X509Certificate) certificates.get(0);
            AndroidKeystoreAttestationVerificationAttributes fromCertificate = AndroidKeystoreAttestationVerificationAttributes.fromCertificate(x509Certificate);
            if (checkAttestationForPeerDeviceProfile(fromCertificate)) {
                return !checkLocalBindingRequirements(x509Certificate, fromCertificate, i, bundle) ? 2 : 1;
            }
            return 2;
        } catch (IOException | InvalidAlgorithmParameterException | CertPathValidatorException | CertificateException e) {
            debugVerboseLog("Unable to parse/validate Android Attestation certificate(s)", e);
            return 2;
        } catch (RuntimeException e2) {
            debugVerboseLog("Unexpected error", e2);
            return 2;
        }
    }

    public final List getCertificates(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        while (byteArrayInputStream.available() > 0) {
            arrayList.add((X509Certificate) this.mCertificateFactory.generateCertificate(byteArrayInputStream));
        }
        return arrayList;
    }

    public final boolean validateAttestationParameters(int i, Bundle bundle) {
        if (i != 2 && i != 3) {
            debugVerboseLog("Binding type is not supported: " + i);
            return false;
        }
        if (bundle.size() < 1) {
            debugVerboseLog("At least 1 requirement is required.");
            return false;
        }
        if (i == 2 && !bundle.containsKey("localbinding.public_key")) {
            debugVerboseLog("Requirements does not contain key: localbinding.public_key");
            return false;
        }
        if (i != 3 || bundle.containsKey("localbinding.challenge")) {
            return true;
        }
        debugVerboseLog("Requirements does not contain key: localbinding.challenge");
        return false;
    }

    public final void validateCertificateChain(List list) {
        if (list.size() < 2) {
            debugVerboseLog("Certificate chain less than 2 in size.");
            throw new CertificateException("Certificate chain less than 2 in size.");
        }
        CertPath generateCertPath = this.mCertificateFactory.generateCertPath((List<? extends Certificate>) list);
        PKIXParameters pKIXParameters = new PKIXParameters((Set<TrustAnchor>) this.mTrustAnchors);
        if (this.mRevocationEnabled) {
            pKIXParameters.addCertPathChecker(new AndroidRevocationStatusListChecker());
        }
        pKIXParameters.setRevocationEnabled(false);
        this.mCertPathValidator.validate(generateCertPath, pKIXParameters);
    }

    public final Set getTrustAnchors() {
        HashSet hashSet = new HashSet();
        try {
            for (String str : getTrustAnchorResources()) {
                hashSet.add(new TrustAnchor((X509Certificate) this.mCertificateFactory.generateCertificate(new ByteArrayInputStream(getCertificateBytes(str))), null));
            }
            return Collections.unmodifiableSet(hashSet);
        } catch (CertificateException e) {
            e.printStackTrace();
            throw new CertPathValidatorException("Invalid trust anchor certificate.", e);
        }
    }

    public final byte[] getCertificateBytes(String str) {
        return str.replaceAll("\\s+", KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE).replaceAll("-BEGIN\\nCERTIFICATE-", "-BEGIN CERTIFICATE-").replaceAll("-END\\nCERTIFICATE-", "-END CERTIFICATE-").getBytes(StandardCharsets.UTF_8);
    }

    public final String[] getTrustAnchorResources() {
        return this.mContext.getResources().getStringArray(17236472);
    }

    public final boolean checkLocalBindingRequirements(X509Certificate x509Certificate, AndroidKeystoreAttestationVerificationAttributes androidKeystoreAttestationVerificationAttributes, int i, Bundle bundle) {
        if (i != 2) {
            if (i == 3) {
                if (!checkAttestationChallenge(androidKeystoreAttestationVerificationAttributes, bundle.getByteArray("localbinding.challenge"))) {
                    debugVerboseLog("Provided challenge does not match leaf certificate challenge.");
                    return false;
                }
            } else {
                throw new IllegalArgumentException("Unsupported local binding type " + AttestationVerificationManager.localBindingTypeToString(i));
            }
        } else if (!checkPublicKey(x509Certificate, bundle.getByteArray("localbinding.public_key"))) {
            debugVerboseLog("Provided public key does not match leaf certificate public key.");
            return false;
        }
        if (!bundle.containsKey("android.key_owned_by_system")) {
            return true;
        }
        if (bundle.getBoolean("android.key_owned_by_system")) {
            if (checkOwnedBySystem(x509Certificate, androidKeystoreAttestationVerificationAttributes)) {
                return true;
            }
            debugVerboseLog("Certificate public key is not owned by the AndroidSystem.");
            return false;
        }
        throw new IllegalArgumentException("The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don't want to verify it.");
    }

    public final boolean checkAttestationForPeerDeviceProfile(AndroidKeystoreAttestationVerificationAttributes androidKeystoreAttestationVerificationAttributes) {
        if (androidKeystoreAttestationVerificationAttributes.getAttestationVersion() < 3) {
            debugVerboseLog("Attestation version is not at least 3 (Keymaster 4).");
            return false;
        }
        if (androidKeystoreAttestationVerificationAttributes.getKeymasterVersion() < 4) {
            debugVerboseLog("Keymaster version is not at least 4.");
            return false;
        }
        if (androidKeystoreAttestationVerificationAttributes.getKeyOsVersion() < 100000) {
            debugVerboseLog("Android OS version is not 10+.");
            return false;
        }
        if (!androidKeystoreAttestationVerificationAttributes.isAttestationHardwareBacked()) {
            debugVerboseLog("Key is not HW backed.");
            return false;
        }
        if (!androidKeystoreAttestationVerificationAttributes.isKeymasterHardwareBacked()) {
            debugVerboseLog("Keymaster is not HW backed.");
            return false;
        }
        if (androidKeystoreAttestationVerificationAttributes.getVerifiedBootState() != AndroidKeystoreAttestationVerificationAttributes.VerifiedBootState.VERIFIED) {
            debugVerboseLog("Boot state not Verified.");
            return false;
        }
        try {
            if (!androidKeystoreAttestationVerificationAttributes.isVerifiedBootLocked()) {
                debugVerboseLog("Verified boot state is not locked.");
                return false;
            }
            if (!isValidPatchLevel(androidKeystoreAttestationVerificationAttributes.getKeyOsPatchLevel())) {
                debugVerboseLog("OS patch level is not within valid range.");
                return false;
            }
            if (!isValidPatchLevel(androidKeystoreAttestationVerificationAttributes.getKeyBootPatchLevel())) {
                debugVerboseLog("Boot patch level is not within valid range.");
                return false;
            }
            if (!isValidPatchLevel(androidKeystoreAttestationVerificationAttributes.getKeyVendorPatchLevel())) {
                debugVerboseLog("Vendor patch level is not within valid range.");
                return false;
            }
            if (isValidPatchLevel(androidKeystoreAttestationVerificationAttributes.getKeyBootPatchLevel())) {
                return true;
            }
            debugVerboseLog("Boot patch level is not within valid range.");
            return false;
        } catch (IllegalStateException e) {
            debugVerboseLog("VerifiedBootLocked is not set.", e);
            return false;
        }
    }

    public final boolean checkPublicKey(Certificate certificate, byte[] bArr) {
        return Arrays.equals(certificate.getPublicKey().getEncoded(), bArr);
    }

    public final boolean checkAttestationChallenge(AndroidKeystoreAttestationVerificationAttributes androidKeystoreAttestationVerificationAttributes, byte[] bArr) {
        return Arrays.equals(androidKeystoreAttestationVerificationAttributes.getAttestationChallenge().toByteArray(), bArr);
    }

    public final boolean checkOwnedBySystem(X509Certificate x509Certificate, AndroidKeystoreAttestationVerificationAttributes androidKeystoreAttestationVerificationAttributes) {
        Set keySet = androidKeystoreAttestationVerificationAttributes.getApplicationPackageNameVersion().keySet();
        if (ANDROID_SYSTEM_PACKAGE_NAME_SET.equals(keySet)) {
            return true;
        }
        debugVerboseLog("Owner is not system, packages=" + keySet);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
    
        if (java.time.temporal.ChronoUnit.MONTHS.between(r7, r8) <= 12) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0065, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        if (java.time.temporal.ChronoUnit.MONTHS.between(r8, r7) <= 12) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isValidPatchLevel(int r8) {
        /*
            r7 = this;
            java.time.LocalDate r0 = r7.mTestSystemDate
            if (r0 == 0) goto L5
            goto Ld
        L5:
            java.time.ZoneId r0 = java.time.ZoneId.systemDefault()
            java.time.LocalDate r0 = java.time.LocalDate.now(r0)
        Ld:
            r1 = 0
            java.time.LocalDate r7 = r7.mTestLocalPatchDate     // Catch: java.lang.Throwable -> L7a
            if (r7 == 0) goto L13
            goto L19
        L13:
            java.lang.String r7 = android.os.Build.VERSION.SECURITY_PATCH     // Catch: java.lang.Throwable -> L7a
            java.time.LocalDate r7 = java.time.LocalDate.parse(r7)     // Catch: java.lang.Throwable -> L7a
        L19:
            java.time.temporal.ChronoUnit r2 = java.time.temporal.ChronoUnit.MONTHS
            long r2 = r2.between(r7, r0)
            r4 = 12
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r2 = 1
            if (r0 <= 0) goto L27
            return r2
        L27:
            java.lang.String r8 = java.lang.String.valueOf(r8)
            int r0 = r8.length()
            r3 = 6
            if (r0 == r3) goto L40
            int r0 = r8.length()
            r6 = 8
            if (r0 == r6) goto L40
            java.lang.String r7 = "Patch level is not in format YYYYMM or YYYYMMDD"
            debugVerboseLog(r7)
            return r1
        L40:
            r0 = 4
            java.lang.String r6 = r8.substring(r1, r0)
            int r6 = java.lang.Integer.parseInt(r6)
            java.lang.String r8 = r8.substring(r0, r3)
            int r8 = java.lang.Integer.parseInt(r8)
            java.time.LocalDate r8 = java.time.LocalDate.of(r6, r8, r2)
            int r0 = r8.compareTo(r7)
            if (r0 <= 0) goto L68
            java.time.temporal.ChronoUnit r0 = java.time.temporal.ChronoUnit.MONTHS
            long r7 = r0.between(r7, r8)
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 > 0) goto L66
        L65:
            r1 = r2
        L66:
            r2 = r1
            goto L79
        L68:
            int r0 = r8.compareTo(r7)
            if (r0 >= 0) goto L79
            java.time.temporal.ChronoUnit r0 = java.time.temporal.ChronoUnit.MONTHS
            long r7 = r0.between(r8, r7)
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 > 0) goto L66
            goto L65
        L79:
            return r2
        L7a:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Build.VERSION.SECURITY_PATCH: "
            r7.append(r8)
            java.lang.String r8 = android.os.Build.VERSION.SECURITY_PATCH
            r7.append(r8)
            java.lang.String r8 = " is not in format YYYY-MM-DD"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            debugVerboseLog(r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.security.AttestationVerificationPeerDeviceVerifier.isValidPatchLevel(int):boolean");
    }

    /* loaded from: classes3.dex */
    public final class AndroidRevocationStatusListChecker extends PKIXCertPathChecker {
        public JSONObject mJsonStatusMap;
        public String mStatusUrl;

        @Override // java.security.cert.PKIXCertPathChecker
        public Set getSupportedExtensions() {
            return null;
        }

        @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
        public boolean isForwardCheckingSupported() {
            return false;
        }

        public AndroidRevocationStatusListChecker() {
        }

        @Override // java.security.cert.PKIXCertPathChecker, java.security.cert.CertPathChecker
        public void init(boolean z) {
            String revocationListUrl = getRevocationListUrl();
            this.mStatusUrl = revocationListUrl;
            if (revocationListUrl == null || revocationListUrl.isEmpty()) {
                throw new CertPathValidatorException("R.string.vendor_required_attestation_revocation_list_url is empty.");
            }
            this.mJsonStatusMap = getStatusMap(this.mStatusUrl);
        }

        @Override // java.security.cert.PKIXCertPathChecker
        public void check(Certificate certificate, Collection collection) {
            String bigInteger = ((X509Certificate) certificate).getSerialNumber().toString(16);
            if (bigInteger == null) {
                throw new CertPathValidatorException("Certificate serial number can not be null.");
            }
            if (this.mJsonStatusMap.has(bigInteger)) {
                JSONObject jSONObject = this.mJsonStatusMap.getJSONObject(bigInteger);
                throw new CertPathValidatorException("Invalid certificate with serial number " + bigInteger + " has status " + jSONObject.getString("status") + " because reason " + jSONObject.getString("reason"));
            }
        }

        public final JSONObject getStatusMap(String str) {
            try {
                try {
                    InputStream openStream = new URL(str).openStream();
                    try {
                        JSONObject jSONObject = new JSONObject(new String(openStream.readAllBytes(), StandardCharsets.UTF_8)).getJSONObject("entries");
                        openStream.close();
                        return jSONObject;
                    } finally {
                    }
                } catch (Throwable th) {
                    throw new CertPathValidatorException("Unable to parse revocation status from " + this.mStatusUrl, th);
                }
            } catch (Throwable th2) {
                throw new CertPathValidatorException("Unable to get revocation status from " + this.mStatusUrl, th2);
            }
        }

        public final String getRevocationListUrl() {
            return AttestationVerificationPeerDeviceVerifier.this.mContext.getResources().getString(17043217);
        }
    }

    public static void debugVerboseLog(String str, Throwable th) {
        if (DEBUG) {
            Slog.v("AVF", str, th);
        }
    }

    public static void debugVerboseLog(String str) {
        if (DEBUG) {
            Slog.v("AVF", str);
        }
    }
}
