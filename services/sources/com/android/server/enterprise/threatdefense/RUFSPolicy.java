package com.android.server.enterprise.threatdefense;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.stream.Collectors;
import org.json.JSONException;

/* loaded from: classes2.dex */
public class RUFSPolicy {
    public static final String TAG = "RUFSPolicy";
    public String mPackageName;
    public int mPolicyVersion;

    public RUFSPolicy(String str) {
        this.mPackageName = str;
        int latestPolicy = getLatestPolicy();
        this.mPolicyVersion = latestPolicy;
        Log.i(TAG, "package=" + this.mPackageName + ", version=" + latestPolicy);
    }

    public int getPolicyVersion() {
        return this.mPolicyVersion;
    }

    public final int getLatestPolicy() {
        String readDecodedData;
        String readDecodedData2;
        try {
            File file = new File("/system/etc/mtdlist.output.txt");
            File file2 = new File("/data/system/.aasa/AASApolicy/mtdlist.output.txt");
            RUFSParser rUFSParser = null;
            RUFSParser rUFSParser2 = (!file.exists() || (readDecodedData2 = readDecodedData(readData("/system/etc/mtdlist.output.txt"))) == null) ? null : new RUFSParser(readDecodedData2);
            if (file2.exists() && (readDecodedData = readDecodedData(readData("/data/system/.aasa/AASApolicy/mtdlist.output.txt"))) != null) {
                rUFSParser = new RUFSParser(readDecodedData);
            }
            boolean z = false;
            if (rUFSParser2 == null && rUFSParser == null) {
                Log.i(TAG, "Default : No RUFS policy files");
                return 0;
            }
            if (rUFSParser2 != null) {
                if (rUFSParser != null) {
                    if (rUFSParser2.getPolicyVersion() >= rUFSParser.getPolicyVersion()) {
                        Log.i(TAG, "Using System parser");
                        z = true;
                    }
                    Log.i(TAG, "Using Data parser");
                } else {
                    Log.i(TAG, "System Parser Exists Only. ");
                    z = true;
                }
            }
            Log.d(TAG, "Read system path=" + z);
            if (!z) {
                rUFSParser2 = rUFSParser;
            }
            return readPolicyVersion(rUFSParser2);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -104;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            return -109;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return -107;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
    
        r8 = java.lang.Integer.parseInt(r1[1]);
        android.util.Log.d(r2, "Exception package : " + r1[0] + " version : " + r1[1] + "==" + r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int readPolicyVersion(com.android.server.enterprise.threatdefense.RUFSParser r8) {
        /*
            r7 = this;
            if (r8 != 0) goto L5
            r7 = -106(0xffffffffffffff96, float:NaN)
            return r7
        L5:
            java.lang.String r0 = com.android.server.enterprise.threatdefense.RUFSPolicy.TAG     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r1.<init>()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r2 = "RUFSParser : "
            r1.append(r2)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r2 = r8.toString()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r1.append(r2)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r1 = r1.toString()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            android.util.Log.d(r0, r1)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.util.ArrayList r1 = r8.getExceptionList()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            int r8 = r8.getVersion()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r2.<init>()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r3 = "Parser version : "
            r2.append(r3)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r2.append(r8)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r2 = r2.toString()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            android.util.Log.d(r0, r2)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            if (r1 == 0) goto Lb6
            java.util.Iterator r0 = r1.iterator()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
        L41:
            boolean r1 = r0.hasNext()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            if (r1 == 0) goto Lb6
            java.lang.Object r1 = r0.next()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r2 = com.android.server.enterprise.threatdefense.RUFSPolicy.TAG     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r3.<init>()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r4 = "exception list : "
            r3.append(r4)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r3.append(r1)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r3 = r3.toString()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            android.util.Log.i(r2, r3)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r3 = ":"
            java.lang.String[] r1 = r1.split(r3)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            int r3 = r1.length     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r4 = 1
            if (r3 <= r4) goto L41
            java.lang.String r3 = r7.mPackageName     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            if (r3 == 0) goto L41
            r5 = 0
            r6 = r1[r5]     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            boolean r3 = r3.equals(r6)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            if (r3 == 0) goto L41
            r7 = r1[r4]     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            int r8 = java.lang.Integer.parseInt(r7)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r7.<init>()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r0 = "Exception package : "
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r0 = r1[r5]     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r0 = " version : "
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r0 = r1[r4]     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r0 = "=="
            r7.append(r0)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            r7.append(r8)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            java.lang.String r7 = r7.toString()     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            android.util.Log.d(r2, r7)     // Catch: java.lang.NumberFormatException -> La9 java.lang.SecurityException -> Lb0
            goto Lb6
        La9:
            r7 = move-exception
            r7.printStackTrace()
            r8 = -104(0xffffffffffffff98, float:NaN)
            goto Lb6
        Lb0:
            r7 = move-exception
            r7.printStackTrace()
            r8 = -109(0xffffffffffffff93, float:NaN)
        Lb6:
            java.lang.String r7 = com.android.server.enterprise.threatdefense.RUFSPolicy.TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Parder ret : "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r7, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.threatdefense.RUFSPolicy.readPolicyVersion(com.android.server.enterprise.threatdefense.RUFSParser):int");
    }

    public final String readDecodedData(String str) {
        String verifiedData = new MTDSignature(str).getVerifiedData();
        if (verifiedData == null) {
            Log.e(TAG, "Signature verification failed");
        }
        return verifiedData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Throwable, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final String readData(String e) {
        ?? r1;
        String str = null;
        try {
            try {
            } catch (IOException e2) {
                e = e2;
                r1 = TAG;
                Log.e(r1, "IOException", e);
            }
            if (e == 0) {
                return null;
            }
            try {
                r1 = new FileInputStream((String) e);
            } catch (FileNotFoundException e3) {
                e = e3;
                e = 0;
                r1 = 0;
            } catch (SecurityException e4) {
                e = e4;
                e = 0;
                r1 = 0;
            } catch (Throwable th) {
                r1 = 0;
                th = th;
                e = 0;
            }
            try {
                e = new BufferedReader(new InputStreamReader((InputStream) r1, StandardCharsets.UTF_8));
            } catch (FileNotFoundException e5) {
                e = e5;
                e = 0;
            } catch (SecurityException e6) {
                e = e6;
                e = 0;
            } catch (Throwable th2) {
                th = th2;
                e = 0;
                if (e != 0) {
                    try {
                        e.close();
                    } catch (IOException e7) {
                        Log.e(TAG, "IOException", e7);
                        throw th;
                    }
                }
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
            try {
                String str2 = (String) e.lines().collect(Collectors.joining(System.lineSeparator()));
                try {
                    e.close();
                    r1.close();
                    e = e;
                } catch (IOException e8) {
                    Log.e(TAG, "IOException", e8);
                    e = e8;
                }
                str = str2;
            } catch (FileNotFoundException e9) {
                e = e9;
                Log.e(TAG, "FileNotFoundException : " + e.getMessage());
                if (e != 0) {
                    e.close();
                }
                if (r1 != 0) {
                    r1.close();
                }
                return str;
            } catch (SecurityException e10) {
                e = e10;
                Log.e(TAG, "SecurityException", e);
                if (e != 0) {
                    e.close();
                }
                if (r1 != 0) {
                    r1.close();
                }
                return str;
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
