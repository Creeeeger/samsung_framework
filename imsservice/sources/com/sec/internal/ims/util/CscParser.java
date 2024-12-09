package com.sec.internal.ims.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.XmlUtils;
import com.sec.internal.interfaces.ims.core.ISimManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public class CscParser {
    private static final String COUNTRY_ISO_PATH = "CustomerData.GeneralInfo.CountryISO";
    private static final String CSC_EDITION_PATH = "CustomerData.GeneralInfo.CSCEdition";
    private static final String CSC_SW_CONFIG_FILE_PATH = "/system/SW_Configuration.xml";
    private static final String CUSTOMER_CSC_FILE_NAME = "/customer.xml";
    private static final String CUSTOMER_CSC_FILE_PATH = "/system/csc";
    private static final String IMS_PATH = "CustomerData.Settings.IMSSetting.NbSetting";
    private static final String KEY_CSC_EDITION = "csc.key.edition";
    private static final String KEY_CSC_SALES_CODE = "csc.key.salescode";
    private static final String KEY_CSC_VERSION = "csc.key.version";
    private static final String KEY_OMC_VERSION = "omc.key.version";
    private static final String LOG_TAG = "CscParser";
    private static final String NETWORK_INFO_PATH = "CustomerData.GeneralInfo.NetworkInfo";
    private static final String OMC_INFO_FILE_NAME = "/omc.info";
    private static final String OMC_INFO_VERSION = "version";
    private static final String SALES_CODE_PATH = "CustomerData.GeneralInfo.SalesCode";
    private static final String SW_CONFIG_CSCNAME = "CSCName";
    private static final String SW_CONFIG_CSCVERSION = "CSCVersion";
    private static boolean[] sCscChangeChecked = {false, false};

    private static FileInputStream getCscFile(int i) {
        String str;
        String omcNwPath = OmcCode.getOmcNwPath(i);
        if (TextUtils.isEmpty(omcNwPath)) {
            str = "/system/csc/customer.xml";
        } else {
            str = omcNwPath + CUSTOMER_CSC_FILE_NAME;
        }
        try {
            return new FileInputStream(new File(str));
        } catch (FileNotFoundException e) {
            Log.e(LOG_TAG, e.getClass().getSimpleName() + "!! " + e.getMessage());
            return null;
        }
    }

    private static XmlPullParser getCscCustomerParser(FileInputStream fileInputStream) {
        if (fileInputStream == null) {
            Log.d(LOG_TAG, "no csc file");
            return null;
        }
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            XmlPullParser newPullParser = newInstance.newPullParser();
            newPullParser.setInput(fileInputStream, null);
            return newPullParser;
        } catch (XmlPullParserException e) {
            e.printStackTrace();
            closeFileInputStream(fileInputStream);
            return null;
        }
    }

    private static void closeFileInputStream(FileInputStream fileInputStream) {
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    static String getCscEdition(int i) {
        return getFieldFromCsc(i, CSC_EDITION_PATH);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009e, code lost:
    
        android.util.Log.d(com.sec.internal.ims.util.CscParser.LOG_TAG, "Found Name and Version");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.String getCscVersion(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.CscParser.getCscVersion(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
    
        android.util.Log.d(com.sec.internal.ims.util.CscParser.LOG_TAG, "Found OMC Version");
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a9 A[RETURN] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.FileInputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.String getOmcInfoVersion(java.lang.String r7, int r8) {
        /*
            boolean r0 = com.sec.internal.helper.OmcCode.isOmcModel()
            if (r0 != 0) goto L7
            return r7
        L7:
            java.lang.String r8 = com.sec.internal.helper.OmcCode.getOmcNwPath(r8)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r8 = "/omc.info"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            java.io.File r0 = new java.io.File
            r0.<init>(r8)
            boolean r8 = r0.exists()
            java.lang.String r1 = "CscParser"
            if (r8 == 0) goto Lb0
            boolean r8 = r0.canRead()
            if (r8 != 0) goto L31
            goto Lb0
        L31:
            r8 = 0
            org.xmlpull.v1.XmlPullParserFactory r2 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: java.lang.Throwable -> L94 java.lang.Throwable -> L96
            r3 = 1
            r2.setNamespaceAware(r3)     // Catch: java.lang.Throwable -> L94 java.lang.Throwable -> L96
            org.xmlpull.v1.XmlPullParser r2 = r2.newPullParser()     // Catch: java.lang.Throwable -> L94 java.lang.Throwable -> L96
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L94 java.lang.Throwable -> L96
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L94 java.lang.Throwable -> L96
            r2.setInput(r4, r8)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            r0 = r8
        L47:
            int r5 = r2.getEventType()     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            if (r5 == r3) goto L88
            r6 = 2
            if (r5 == r6) goto L74
            r6 = 4
            if (r5 == r6) goto L54
            goto L78
        L54:
            java.lang.String r5 = r2.getText()     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            if (r6 != 0) goto L71
            boolean r6 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            if (r6 == 0) goto L71
            java.lang.String r6 = "version"
            boolean r0 = r6.equals(r0)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            if (r0 == 0) goto L71
            java.lang.String r8 = r5.trim()     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
        L71:
            java.lang.String r0 = ""
            goto L78
        L74:
            java.lang.String r0 = r2.getName()     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
        L78:
            boolean r5 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            if (r5 != 0) goto L84
            java.lang.String r0 = "Found OMC Version"
            android.util.Log.d(r1, r0)     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            goto L88
        L84:
            r2.next()     // Catch: java.lang.Throwable -> L8c java.lang.Throwable -> L8f
            goto L47
        L88:
            r4.close()     // Catch: java.io.IOException -> La2
            goto La2
        L8c:
            r7 = move-exception
            r8 = r4
            goto Laa
        L8f:
            r0 = move-exception
            r1 = r0
            r0 = r8
            r8 = r4
            goto L99
        L94:
            r7 = move-exception
            goto Laa
        L96:
            r0 = move-exception
            r1 = r0
            r0 = r8
        L99:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L94
            if (r8 == 0) goto La1
            r8.close()     // Catch: java.io.IOException -> La1
        La1:
            r8 = r0
        La2:
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 == 0) goto La9
            return r7
        La9:
            return r8
        Laa:
            if (r8 == 0) goto Laf
            r8.close()     // Catch: java.io.IOException -> Laf
        Laf:
            throw r7
        Lb0:
            java.lang.String r8 = "Can't read OMC Version"
            android.util.Log.e(r1, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.util.CscParser.getOmcInfoVersion(java.lang.String, int):java.lang.String");
    }

    public static synchronized boolean isCscChanged(Context context, int i) {
        synchronized (CscParser.class) {
            if (context != null && i >= 0) {
                boolean[] zArr = sCscChangeChecked;
                if (i < zArr.length) {
                    if (zArr[i]) {
                        return false;
                    }
                    SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(i, context, ImsSharedPrefHelper.CSC_INFO_PREF, 0, false);
                    String string = sharedPref.getString(KEY_CSC_EDITION, "unknown");
                    String string2 = sharedPref.getString(KEY_CSC_VERSION, "unknown");
                    String string3 = sharedPref.getString(KEY_CSC_SALES_CODE, "unknown");
                    String string4 = sharedPref.getString(KEY_OMC_VERSION, "unknown");
                    String cscEdition = getCscEdition(i);
                    String cscVersion = getCscVersion(string2);
                    String cscSalesCode = getCscSalesCode(i);
                    String omcInfoVersion = getOmcInfoVersion(string4, i);
                    Log.d(LOG_TAG, "old edition : " + string + " new edition : " + cscEdition);
                    Log.d(LOG_TAG, "old csc version : " + string2 + " new csc version : " + cscVersion);
                    Log.d(LOG_TAG, "old salescode : " + string3 + " new salescode : " + cscSalesCode);
                    Log.d(LOG_TAG, "old omc version : " + string4 + " new omc version : " + omcInfoVersion);
                    sCscChangeChecked[i] = true;
                    if (TextUtils.equals(string, cscEdition) && TextUtils.equals(string2, cscVersion) && TextUtils.equals(string3, cscSalesCode) && TextUtils.equals(string4, omcInfoVersion)) {
                        return false;
                    }
                    SharedPreferences.Editor edit = sharedPref.edit();
                    edit.clear();
                    edit.putString(KEY_CSC_EDITION, cscEdition);
                    edit.putString(KEY_CSC_VERSION, cscVersion);
                    edit.putString(KEY_CSC_SALES_CODE, cscSalesCode);
                    edit.putString(KEY_OMC_VERSION, omcInfoVersion);
                    edit.apply();
                    return true;
                }
            }
            return false;
        }
    }

    private static String getFieldFromCsc(int i, String str) {
        FileInputStream cscFile = getCscFile(i);
        XmlPullParser cscCustomerParser = getCscCustomerParser(cscFile);
        if (cscCustomerParser == null) {
            Log.e(LOG_TAG, "XmlPullParser is null");
            return null;
        }
        if (!XmlUtils.search(cscCustomerParser, str)) {
            Log.e(LOG_TAG, "can not find " + str);
            return null;
        }
        do {
            try {
            } catch (IOException | XmlPullParserException e) {
                e.printStackTrace();
                return null;
            } finally {
                closeFileInputStream(cscFile);
            }
        } while (cscCustomerParser.next() != 4);
        return cscCustomerParser.getText();
    }

    static String getCscSalesCode(int i) {
        return getFieldFromCsc(i, SALES_CODE_PATH);
    }

    public static List<String> getNetworkNames(String str, String str2, String str3, String str4, String str5, int i, boolean z) {
        FileInputStream fileInputStream;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        int i2;
        FileInputStream cscFile = getCscFile(i);
        XmlPullParser cscCustomerParser = getCscCustomerParser(cscFile);
        if (cscCustomerParser == null) {
            Log.e(LOG_TAG, "XmlPullParser is null");
            closeFileInputStream(cscFile);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!XmlUtils.search(cscCustomerParser, NETWORK_INFO_PATH)) {
            Log.e(LOG_TAG, "can not find CustomerData.GeneralInfo.NetworkInfo");
            closeFileInputStream(cscFile);
            return null;
        }
        String substring = (str2 == null || str2.length() <= str.length()) ? "" : str2.substring(str.length());
        int i3 = 1;
        String str12 = str4;
        String str13 = str5;
        String str14 = "";
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
        String str18 = null;
        String str19 = null;
        Boolean bool = null;
        boolean z2 = false;
        String str20 = str3;
        while (true) {
            try {
                int next = cscCustomerParser.next();
                if (next == i3) {
                    fileInputStream = cscFile;
                    break;
                }
                if (next == 2) {
                    String name = cscCustomerParser.getName();
                    fileInputStream = cscFile;
                    if ("MCCMNC".equalsIgnoreCase(name)) {
                        do {
                            try {
                                try {
                                } catch (IOException | XmlPullParserException e) {
                                    e = e;
                                    e.printStackTrace();
                                    closeFileInputStream(fileInputStream);
                                    return !z ? arrayList : arrayList2;
                                }
                            } catch (Throwable th) {
                                th = th;
                                closeFileInputStream(fileInputStream);
                                throw th;
                            }
                        } while (cscCustomerParser.next() != 4);
                        str18 = cscCustomerParser.getText();
                    } else if ("SPCode".equalsIgnoreCase(name)) {
                        while (cscCustomerParser.next() != 4) {
                        }
                        str14 = cscCustomerParser.getText().toUpperCase();
                    } else {
                        if ("CodeType".equalsIgnoreCase(name)) {
                            while (cscCustomerParser.next() != 4) {
                            }
                            if ("HEX".equalsIgnoreCase(cscCustomerParser.getText())) {
                                cscFile = fileInputStream;
                                i3 = 1;
                                z2 = true;
                            }
                        } else if ("SubsetCode".equalsIgnoreCase(name)) {
                            while (cscCustomerParser.next() != 4) {
                            }
                            str15 = cscCustomerParser.getText().toUpperCase();
                        } else if ("Gid2".equalsIgnoreCase(name)) {
                            while (cscCustomerParser.next() != 4) {
                            }
                            str16 = cscCustomerParser.getText().toUpperCase();
                        } else if ("Spname".equalsIgnoreCase(name)) {
                            while (cscCustomerParser.next() != 4) {
                            }
                            str17 = cscCustomerParser.getText();
                        } else if (ISimManager.KEY_NW_NAME.equalsIgnoreCase(name)) {
                            while (cscCustomerParser.next() != 4) {
                            }
                            str19 = cscCustomerParser.getText();
                        }
                        str6 = str14;
                        str7 = substring;
                    }
                    cscFile = fileInputStream;
                    i3 = 1;
                } else {
                    fileInputStream = cscFile;
                    if (next != 3) {
                        str6 = str14;
                        str7 = substring;
                    } else if ("NetworkInfo".equalsIgnoreCase(cscCustomerParser.getName())) {
                        if (!z2) {
                            try {
                                str15 = Integer.toHexString(Integer.parseInt(str15)).toUpperCase();
                            } catch (NumberFormatException unused) {
                                str15 = "";
                            }
                            try {
                                str16 = Integer.toHexString(Integer.parseInt(str16)).toUpperCase();
                            } catch (NumberFormatException unused2) {
                                str8 = "";
                            }
                        }
                        str8 = str16;
                        if (!TextUtils.isEmpty(str19) && !TextUtils.isEmpty(str18) && !"00101".equals(str18) && !"001001".equals(str18) && !"001010".equals(str18) && !"00101f".equals(str18) && !"99999".equals(str18)) {
                            if (str.equalsIgnoreCase(str18)) {
                                if (z) {
                                    arrayList.add(str19);
                                } else {
                                    if (!TextUtils.isEmpty(str14) && !TextUtils.isEmpty(substring)) {
                                        if (bool == null) {
                                            bool = Boolean.valueOf(Mno.Country.CANADA.getCountryIso().equalsIgnoreCase(getFieldFromCsc(i, COUNTRY_ISO_PATH)));
                                        }
                                        if (bool.booleanValue()) {
                                            str10 = str14;
                                            i2 = 1;
                                        } else {
                                            str10 = str14;
                                            i2 = 0;
                                        }
                                        if (substring.startsWith(str10, i2)) {
                                            arrayList.clear();
                                            arrayList.add(str19);
                                            break;
                                        }
                                    } else {
                                        str10 = str14;
                                    }
                                    str9 = substring;
                                    if (!TextUtils.isEmpty(str15) && !TextUtils.isEmpty(str20)) {
                                        str15 = str15.replaceFirst("^0+(?!$)", "");
                                        String replaceFirst = str20.replaceFirst("^0+(?!$)", "");
                                        if (!TextUtils.isEmpty(str15) && !TextUtils.isEmpty(replaceFirst)) {
                                            str11 = replaceFirst;
                                            if (replaceFirst.toUpperCase().startsWith(str15.toUpperCase())) {
                                                arrayList.clear();
                                                arrayList.add(str19);
                                                break;
                                            }
                                        } else {
                                            str11 = replaceFirst;
                                        }
                                        str20 = str11;
                                    }
                                    if (!TextUtils.isEmpty(str8) && !TextUtils.isEmpty(str12)) {
                                        str8 = str8.replaceFirst("^0+(?!$)", "");
                                        str12 = str12.replaceFirst("^0+(?!$)", "");
                                        if (!TextUtils.isEmpty(str8) && !TextUtils.isEmpty(str12) && str12.toUpperCase().startsWith(str8.toUpperCase())) {
                                            arrayList.clear();
                                            arrayList.add(str19);
                                            break;
                                        }
                                    }
                                    if (!TextUtils.isEmpty(str17) && !TextUtils.isEmpty(str13)) {
                                        String trim = str17.trim();
                                        str13 = str13.trim();
                                        if (!TextUtils.isEmpty(trim) && !TextUtils.isEmpty(str13) && str13.equalsIgnoreCase(trim)) {
                                            arrayList.clear();
                                            arrayList.add(str19);
                                            break;
                                        }
                                        str17 = trim;
                                    }
                                    if (TextUtils.isEmpty(str10) && TextUtils.isEmpty(str15) && TextUtils.isEmpty(str8)) {
                                        arrayList.add(str19);
                                        if (TextUtils.isEmpty(str17)) {
                                            arrayList2.add(str19);
                                        }
                                    }
                                    substring = str9;
                                    str14 = "";
                                    str18 = str14;
                                    str19 = str18;
                                    str15 = str19;
                                    str16 = str15;
                                    str17 = str16;
                                    cscFile = fileInputStream;
                                    i3 = 1;
                                    z2 = false;
                                }
                            }
                            str9 = substring;
                            substring = str9;
                            str14 = "";
                            str18 = str14;
                            str19 = str18;
                            str15 = str19;
                            str16 = str15;
                            str17 = str16;
                            cscFile = fileInputStream;
                            i3 = 1;
                            z2 = false;
                        }
                        str6 = str14;
                        substring = substring;
                        str16 = str8;
                        str14 = str6;
                        cscFile = fileInputStream;
                        i3 = 1;
                    } else {
                        str6 = str14;
                        str7 = substring;
                        if ("GeneralInfo".equalsIgnoreCase(cscCustomerParser.getName())) {
                            break;
                        }
                    }
                }
                substring = str7;
                str14 = str6;
                cscFile = fileInputStream;
                i3 = 1;
            } catch (IOException | XmlPullParserException e2) {
                e = e2;
                fileInputStream = cscFile;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = cscFile;
            }
        }
        closeFileInputStream(fileInputStream);
        if (!z || arrayList.size() <= 1) {
            return arrayList;
        }
    }

    public static synchronized ContentValues getCscImsSetting(String str, int i) {
        ContentValues cscImsSetting;
        synchronized (CscParser.class) {
            cscImsSetting = getCscImsSetting(getNetworkNames(str, "", "", "", "", i, true), i);
        }
        return cscImsSetting;
    }

    public static synchronized ContentValues getCscImsSetting(List<String> list, int i) {
        synchronized (CscParser.class) {
            if (list != null) {
                if (list.size() != 0) {
                    FileInputStream cscFile = getCscFile(i);
                    XmlPullParser cscCustomerParser = getCscCustomerParser(cscFile);
                    if (cscCustomerParser == null) {
                        Log.e(LOG_TAG, "XmlPullParser is null");
                        return null;
                    }
                    if (!XmlUtils.search(cscCustomerParser, IMS_PATH)) {
                        Log.e(LOG_TAG, "can not find CustomerData.Settings.IMSSetting.NbSetting");
                        return null;
                    }
                    while (true) {
                        try {
                            try {
                                int eventType = cscCustomerParser.getEventType();
                                if (eventType == 1) {
                                    break;
                                }
                                if (eventType == 2 && "Setting".equalsIgnoreCase(cscCustomerParser.getName())) {
                                    ContentValues setting = getSetting(cscCustomerParser);
                                    if (list.contains(setting.getAsString(ISimManager.KEY_NW_NAME))) {
                                        Log.d(LOG_TAG, "csc ims setting: " + setting);
                                        return setting;
                                    }
                                }
                                cscCustomerParser.next();
                            } catch (IOException | XmlPullParserException e) {
                                Log.e(LOG_TAG, "getCscImsSetting: " + e.getMessage());
                            }
                        } finally {
                            closeFileInputStream(cscFile);
                        }
                    }
                    return null;
                }
            }
            return null;
        }
    }

    private static ContentValues getSetting(XmlPullParser xmlPullParser) {
        ContentValues contentValues = new ContentValues();
        String str = null;
        while (true) {
            try {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    break;
                }
                if (eventType == 2) {
                    str = xmlPullParser.getName();
                } else if (eventType == 3) {
                    if ("Setting".equalsIgnoreCase(xmlPullParser.getName())) {
                        break;
                    }
                } else if (eventType == 4) {
                    String text = xmlPullParser.getText();
                    if (!TextUtils.isEmpty(text) && text.trim().length() > 0) {
                        contentValues.put(str, text);
                    }
                }
                xmlPullParser.next();
            } catch (IOException | XmlPullParserException e) {
                Log.e(LOG_TAG, "getSetting: " + e.getMessage());
            }
        }
        return contentValues;
    }
}
