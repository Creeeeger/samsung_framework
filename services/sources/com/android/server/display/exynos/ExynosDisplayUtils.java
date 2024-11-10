package com.android.server.display.exynos;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public abstract class ExynosDisplayUtils {
    public static String XML_SYSFS_PATH = "/sys/class/dqe/dqe/xml";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getStringFromFile(java.lang.String r9) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r9)
            boolean r1 = r0.exists()
            r2 = 0
            java.lang.String r3 = "ExynosDisplayUtils"
            if (r1 != 0) goto L23
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r9)
            java.lang.String r9 = " File not found"
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            android.util.Log.e(r3, r9)
            return r2
        L23:
            boolean r0 = r0.isFile()
            if (r0 != 0) goto L3e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r9)
            java.lang.String r9 = " is not File"
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            android.util.Log.e(r3, r9)
            return r2
        L3e:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r0]
            r4 = 0
            r5 = r4
        L44:
            if (r5 >= r0) goto L4b
            r1[r5] = r4
            int r5 = r5 + 1
            goto L44
        L4b:
            java.lang.String r0 = "File Close error"
            if (r9 == 0) goto L5f
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            goto L60
        L5a:
            r9 = move-exception
            goto Lb9
        L5c:
            r9 = move-exception
            r1 = r2
            goto L80
        L5f:
            r5 = r2
        L60:
            if (r5 == 0) goto Lc3
            int r9 = r5.read(r1)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L7d
            if (r9 <= 0) goto L72
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L7a
            int r7 = r9 + (-1)
            java.nio.charset.Charset r8 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L7a
            r6.<init>(r1, r4, r7, r8)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L7a
            r2 = r6
        L72:
            r5.close()     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L7a
            goto Lc3
        L76:
            r1 = move-exception
            r4 = r9
            r9 = r1
            goto L7e
        L7a:
            r9 = move-exception
            r2 = r5
            goto Lb9
        L7d:
            r9 = move-exception
        L7e:
            r1 = r2
            r2 = r5
        L80:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r5.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = "Exception : "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5a
            r5.append(r9)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = " , in : "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5a
            r5.append(r2)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = " , value : "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5a
            r5.append(r1)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = " , length : "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5a
            r5.append(r4)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L5a
            android.util.Log.e(r3, r4)     // Catch: java.lang.Throwable -> L5a
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto Lcd
            r2.close()     // Catch: java.lang.Exception -> Lb5
            goto Lcd
        Lb5:
            android.util.Log.e(r3, r0)
            goto Lcd
        Lb9:
            if (r2 == 0) goto Lc2
            r2.close()     // Catch: java.lang.Exception -> Lbf
            goto Lc2
        Lbf:
            android.util.Log.e(r3, r0)
        Lc2:
            throw r9
        Lc3:
            if (r5 == 0) goto Lcc
            r5.close()     // Catch: java.lang.Exception -> Lc9
            goto Lcc
        Lc9:
            android.util.Log.e(r3, r0)
        Lcc:
            r1 = r2
        Lcd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.getStringFromFile(java.lang.String):java.lang.String");
    }

    public static String getPathWithPanel(String str) {
        String stringFromFile = getStringFromFile(XML_SYSFS_PATH);
        if (str != null && stringFromFile != null) {
            String substring = str.substring(0, str.lastIndexOf(".xml"));
            String substring2 = stringFromFile.substring(stringFromFile.lastIndexOf("/") + 1);
            if (substring != null && substring2 != null) {
                String str2 = substring + "_" + substring2;
                if (existFile(str2)) {
                    return str2;
                }
            }
        }
        if (existFile(str)) {
            return str;
        }
        return null;
    }

    public static boolean sysfsWrite(String str, int i) {
        FileOutputStream fileOutputStream;
        IOException e;
        File file = new File(str);
        if (file.exists()) {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(Integer.toString(i).getBytes());
                        fileOutputStream.close();
                        return true;
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        try {
                            fileOutputStream.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        return false;
                    }
                } catch (FileNotFoundException e4) {
                    e4.printStackTrace();
                    return false;
                }
            } catch (IOException e5) {
                fileOutputStream = null;
                e = e5;
            }
        }
        return false;
    }

    public static boolean sysfsWriteSting(String str, String str2) {
        FileOutputStream fileOutputStream;
        IOException e;
        File file = new File(str);
        if (file.exists()) {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        fileOutputStream.write(str2.getBytes());
                        fileOutputStream.close();
                        return true;
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        try {
                            fileOutputStream.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        return false;
                    }
                } catch (FileNotFoundException e4) {
                    e4.printStackTrace();
                    return false;
                }
            } catch (IOException e5) {
                fileOutputStream = null;
                e = e5;
            }
        }
        return false;
    }

    public static boolean existFile(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        if (!file.exists()) {
            Log.i("ExynosDisplayUtils", str + " File not found");
            return false;
        }
        if (file.isFile()) {
            return true;
        }
        Log.e("ExynosDisplayUtils", str + " is not File");
        return false;
    }

    public static boolean existPath(String str) {
        return str != null && new File(str).exists();
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x015d, code lost:
    
        if (r3 == null) goto L110;
     */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] parserXML(java.lang.String r17, java.lang.String r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.parserXML(java.lang.String, java.lang.String, java.lang.String):java.lang.String[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b2, code lost:
    
        if (r1 == null) goto L56;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] parserXMLAttribute(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            java.lang.String r0 = "File Close error"
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            boolean r1 = r1.isFile()
            java.lang.String r2 = "ExynosDisplayUtils"
            r3 = 0
            if (r1 != 0) goto L25
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r7)
            java.lang.String r7 = " File not found"
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            android.util.Log.e(r2, r7)
            return r3
        L25:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> La3 java.io.IOException -> La5 org.xmlpull.v1.XmlPullParserException -> Lad
            r1.<init>(r7)     // Catch: java.lang.Throwable -> La3 java.io.IOException -> La5 org.xmlpull.v1.XmlPullParserException -> Lad
            org.xmlpull.v1.XmlPullParserFactory r7 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            org.xmlpull.v1.XmlPullParser r7 = r7.newPullParser()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r7.setInput(r1, r3)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            int r4 = r7.getEventType()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r5.<init>()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
        L3e:
            r6 = 1
            if (r4 == r6) goto L6b
            if (r4 != 0) goto L44
            goto L66
        L44:
            if (r4 != r6) goto L47
            goto L66
        L47:
            r6 = 2
            if (r4 != r6) goto L5c
            java.lang.String r4 = r7.getName()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            boolean r4 = r4.equals(r8)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            if (r4 == 0) goto L66
            java.lang.String r4 = r7.getAttributeValue(r3, r9)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r5.add(r4)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            goto L66
        L5c:
            r6 = 3
            if (r4 != r6) goto L66
            java.lang.String r4 = r7.getName()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r4.equals(r8)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
        L66:
            int r4 = r7.next()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            goto L3e
        L6b:
            int r7 = r5.size()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            if (r7 != 0) goto L79
            r1.close()     // Catch: java.lang.Exception -> L75
            goto L78
        L75:
            android.util.Log.e(r2, r0)
        L78:
            return r3
        L79:
            int r7 = r5.size()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r8 = 0
        L80:
            int r9 = r5.size()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            if (r8 >= r9) goto L97
            java.lang.Object r9 = r5.get(r8)     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r7[r8] = r9     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            java.lang.String r9 = r9.trim()     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            r7[r8] = r9     // Catch: java.io.IOException -> L9f org.xmlpull.v1.XmlPullParserException -> La1 java.lang.Throwable -> Lbc
            int r8 = r8 + 1
            goto L80
        L97:
            r1.close()     // Catch: java.lang.Exception -> L9b
            goto L9e
        L9b:
            android.util.Log.e(r2, r0)
        L9e:
            return r7
        L9f:
            r7 = move-exception
            goto La7
        La1:
            r7 = move-exception
            goto Laf
        La3:
            r7 = move-exception
            goto Lbe
        La5:
            r7 = move-exception
            r1 = r3
        La7:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto Lbb
            goto Lb4
        Lad:
            r7 = move-exception
            r1 = r3
        Laf:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto Lbb
        Lb4:
            r1.close()     // Catch: java.lang.Exception -> Lb8
            goto Lbb
        Lb8:
            android.util.Log.e(r2, r0)
        Lbb:
            return r3
        Lbc:
            r7 = move-exception
            r3 = r1
        Lbe:
            if (r3 == 0) goto Lc7
            r3.close()     // Catch: java.lang.Exception -> Lc4
            goto Lc7
        Lc4:
            android.util.Log.e(r2, r0)
        Lc7:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.parserXMLAttribute(java.lang.String, java.lang.String, java.lang.String):java.lang.String[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e2, code lost:
    
        if (r1 == null) goto L71;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] parserXMLALText(java.lang.String r12, java.lang.String r13, int r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.parserXMLALText(java.lang.String, java.lang.String, int, java.lang.String):java.lang.String[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x00be, code lost:
    
        if (r1 == null) goto L62;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] parserXMLNodeText(java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "File Close error"
            java.io.File r1 = new java.io.File
            r1.<init>(r10)
            boolean r1 = r1.isFile()
            java.lang.String r2 = "ExynosDisplayUtils"
            r3 = 0
            if (r1 != 0) goto L25
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r10)
            java.lang.String r10 = " File not found"
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            android.util.Log.e(r2, r10)
            return r3
        L25:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Laf java.io.IOException -> Lb1 org.xmlpull.v1.XmlPullParserException -> Lb9
            r1.<init>(r10)     // Catch: java.lang.Throwable -> Laf java.io.IOException -> Lb1 org.xmlpull.v1.XmlPullParserException -> Lb9
            org.xmlpull.v1.XmlPullParserFactory r10 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            org.xmlpull.v1.XmlPullParser r10 = r10.newPullParser()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r10.setInput(r1, r3)     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            int r4 = r10.getEventType()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r5.<init>()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r6 = 0
            r7 = r6
        L40:
            r8 = 1
            if (r4 == r8) goto L78
            if (r4 != 0) goto L46
            goto L73
        L46:
            if (r4 != r8) goto L49
            goto L73
        L49:
            r9 = 2
            if (r4 != r9) goto L58
            java.lang.String r4 = r10.getName()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            boolean r4 = r4.equals(r11)     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            if (r4 == 0) goto L73
            r7 = r8
            goto L73
        L58:
            r9 = 3
            if (r4 != r9) goto L67
            java.lang.String r4 = r10.getName()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            boolean r4 = r4.equals(r11)     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            if (r4 == 0) goto L73
            r7 = r6
            goto L73
        L67:
            r9 = 4
            if (r4 != r9) goto L73
            if (r7 != r8) goto L73
            java.lang.String r4 = r10.getText()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r5.add(r4)     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
        L73:
            int r4 = r10.next()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            goto L40
        L78:
            int r10 = r5.size()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            if (r10 != 0) goto L86
            r1.close()     // Catch: java.lang.Exception -> L82
            goto L85
        L82:
            android.util.Log.e(r2, r0)
        L85:
            return r3
        L86:
            int r10 = r5.size()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            java.lang.String[] r10 = new java.lang.String[r10]     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
        L8c:
            int r11 = r5.size()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            if (r6 >= r11) goto La3
            java.lang.Object r11 = r5.get(r6)     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            java.lang.String r11 = (java.lang.String) r11     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r10[r6] = r11     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            java.lang.String r11 = r11.trim()     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            r10[r6] = r11     // Catch: java.io.IOException -> Lab org.xmlpull.v1.XmlPullParserException -> Lad java.lang.Throwable -> Lc8
            int r6 = r6 + 1
            goto L8c
        La3:
            r1.close()     // Catch: java.lang.Exception -> La7
            goto Laa
        La7:
            android.util.Log.e(r2, r0)
        Laa:
            return r10
        Lab:
            r10 = move-exception
            goto Lb3
        Lad:
            r10 = move-exception
            goto Lbb
        Laf:
            r10 = move-exception
            goto Lca
        Lb1:
            r10 = move-exception
            r1 = r3
        Lb3:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> Lc8
            if (r1 == 0) goto Lc7
            goto Lc0
        Lb9:
            r10 = move-exception
            r1 = r3
        Lbb:
            r10.printStackTrace()     // Catch: java.lang.Throwable -> Lc8
            if (r1 == 0) goto Lc7
        Lc0:
            r1.close()     // Catch: java.lang.Exception -> Lc4
            goto Lc7
        Lc4:
            android.util.Log.e(r2, r0)
        Lc7:
            return r3
        Lc8:
            r10 = move-exception
            r3 = r1
        Lca:
            if (r3 == 0) goto Ld3
            r3.close()     // Catch: java.lang.Exception -> Ld0
            goto Ld3
        Ld0:
            android.util.Log.e(r2, r0)
        Ld3:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.parserXMLNodeText(java.lang.String, java.lang.String):java.lang.String[]");
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    public static String[] parserFactoryXMLALText(String str, String str2, String str3, int i, String str4, int i2) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        ?? isFile = new File(str).isFile();
        String str5 = null;
        try {
            if (isFile == 0) {
                Log.e("ExynosDisplayUtils", str + " File not found");
                return null;
            }
            try {
                fileInputStream2 = new FileInputStream(str);
                try {
                    XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                    newPullParser.setInput(fileInputStream2, null);
                    int eventType = newPullParser.getEventType();
                    ArrayList arrayList = new ArrayList();
                    new ArrayList();
                    boolean z = false;
                    char c = 0;
                    char c2 = 0;
                    while (eventType != 1) {
                        if (eventType != 0 && eventType != 1) {
                            if (eventType == 2) {
                                String name = newPullParser.getName();
                                if (name.equals("mode") && newPullParser.getAttributeValue(str5, "name").equals(str2)) {
                                    z = true;
                                }
                                if (name.equals(str3) && Integer.parseInt(newPullParser.getAttributeValue(str5, "al")) == i) {
                                    c = 2;
                                }
                                if (name.equals(str4)) {
                                    String attributeValue = newPullParser.getAttributeValue(str5, "att0");
                                    if (attributeValue != null && Integer.parseInt(attributeValue) != i2) {
                                    }
                                    c2 = 11;
                                }
                            } else if (eventType == 3) {
                                String name2 = newPullParser.getName();
                                if (name2.equals("mode")) {
                                    z = false;
                                }
                                if (name2.equals(str3)) {
                                    c = 0;
                                }
                                if (name2.equals(str4)) {
                                    c2 = 0;
                                }
                            } else if (eventType == 4 && z && c == 2 && c2 == 11) {
                                arrayList.add(newPullParser.getText());
                            }
                        }
                        eventType = newPullParser.next();
                        str5 = null;
                    }
                    if (arrayList.size() == 0) {
                        try {
                            fileInputStream2.close();
                            return null;
                        } catch (Exception unused) {
                            Log.e("ExynosDisplayUtils", "File Close error");
                            return null;
                        }
                    }
                    String[] strArr = new String[arrayList.size()];
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        String str6 = (String) arrayList.get(i3);
                        strArr[i3] = str6;
                        strArr[i3] = str6.trim();
                    }
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused2) {
                        Log.e("ExynosDisplayUtils", "File Close error");
                    }
                    return strArr;
                } catch (IOException e) {
                    e = e;
                    e.printStackTrace();
                    if (fileInputStream2 == null) {
                        return null;
                    }
                    try {
                        fileInputStream2.close();
                        return null;
                    } catch (Exception unused3) {
                        Log.e("ExynosDisplayUtils", "File Close error");
                        return null;
                    }
                } catch (XmlPullParserException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileInputStream2 == null) {
                        return null;
                    }
                    fileInputStream2.close();
                    return null;
                }
            } catch (IOException e3) {
                e = e3;
                fileInputStream2 = null;
            } catch (XmlPullParserException e4) {
                e = e4;
                fileInputStream2 = null;
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused4) {
                        Log.e("ExynosDisplayUtils", "File Close error");
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = isFile;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x00d8, code lost:
    
        if (r1 == null) goto L68;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] parserFactoryXMLAttribute(java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.exynos.ExynosDisplayUtils.parserFactoryXMLAttribute(java.lang.String, java.lang.String, java.lang.String, java.lang.String):java.lang.String[]");
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [boolean] */
    public static String[] parserFactoryXMLText(String str, String str2, String str3, int i, int i2) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        ?? isFile = new File(str).isFile();
        try {
            if (isFile == 0) {
                Log.e("ExynosDisplayUtils", str + " File not found");
                return null;
            }
            try {
                fileInputStream2 = new FileInputStream(str);
            } catch (IOException e) {
                e = e;
                fileInputStream2 = null;
            } catch (XmlPullParserException e2) {
                e = e2;
                fileInputStream2 = null;
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused) {
                        Log.e("ExynosDisplayUtils", "File Close error");
                    }
                }
                throw th;
            }
            try {
                XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
                newPullParser.setInput(fileInputStream2, null);
                ArrayList arrayList = new ArrayList();
                new ArrayList();
                boolean z = false;
                char c = 0;
                for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                    if (eventType != 0 && eventType != 1) {
                        if (eventType == 2) {
                            String name = newPullParser.getName();
                            if (name.equals("mode") && newPullParser.getAttributeValue(null, "name").equals(str2)) {
                                z = true;
                            }
                            if (str3.equals("cgc17_enc")) {
                                if (name.equals("cgc17_enc")) {
                                    String attributeValue = newPullParser.getAttributeValue(null, "att0");
                                    String attributeValue2 = newPullParser.getAttributeValue(null, "att1");
                                    if (Integer.parseInt(attributeValue) == i) {
                                        if (Integer.parseInt(attributeValue2) == i2) {
                                        }
                                    }
                                }
                            } else if (str3.equals("hsc48_lcg")) {
                                if (name.equals("hsc48_lcg")) {
                                    if (Integer.parseInt(newPullParser.getAttributeValue(null, "att0")) != i) {
                                    }
                                }
                            } else if (str3.equals("gamma")) {
                                if (name.equals("gamma")) {
                                    String attributeValue3 = newPullParser.getAttributeValue(null, "att0");
                                    if (attributeValue3 != null) {
                                        if (Integer.parseInt(attributeValue3) == i) {
                                        }
                                    }
                                }
                            } else if (str3.equals("degamma")) {
                                if (name.equals("degamma")) {
                                    String attributeValue4 = newPullParser.getAttributeValue(null, "att0");
                                    if (attributeValue4 != null) {
                                        if (Integer.parseInt(attributeValue4) == i) {
                                        }
                                    }
                                }
                            } else if (!name.equals(str3)) {
                            }
                            c = 2;
                        } else if (eventType == 3) {
                            String name2 = newPullParser.getName();
                            if (name2.equals("mode")) {
                                z = false;
                            }
                            if (str3.equals("cgc17_enc")) {
                                if (!name2.equals("cgc17_enc")) {
                                }
                                c = 0;
                            } else if (str3.equals("hsc48_lcg")) {
                                if (name2.equals("hsc48_lcg")) {
                                    c = 0;
                                }
                            } else if (name2.equals(str3)) {
                                c = 0;
                            }
                        } else if (eventType == 4 && z && c == 2) {
                            arrayList.add(newPullParser.getText());
                        }
                    }
                }
                if (arrayList.size() == 0) {
                    try {
                        fileInputStream2.close();
                        return null;
                    } catch (Exception unused2) {
                        Log.e("ExynosDisplayUtils", "File Close error");
                        return null;
                    }
                }
                String[] strArr = new String[arrayList.size()];
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    String str4 = (String) arrayList.get(i3);
                    strArr[i3] = str4;
                    strArr[i3] = str4.trim();
                }
                try {
                    fileInputStream2.close();
                } catch (Exception unused3) {
                    Log.e("ExynosDisplayUtils", "File Close error");
                }
                return strArr;
            } catch (IOException e3) {
                e = e3;
                e.printStackTrace();
                if (fileInputStream2 == null) {
                    return null;
                }
                try {
                    fileInputStream2.close();
                    return null;
                } catch (Exception unused4) {
                    Log.e("ExynosDisplayUtils", "File Close error");
                    return null;
                }
            } catch (XmlPullParserException e4) {
                e = e4;
                e.printStackTrace();
                if (fileInputStream2 == null) {
                    return null;
                }
                fileInputStream2.close();
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = isFile;
        }
    }

    public static void sendEmptyUpdate() {
        try {
            IBinder service = ServiceManager.getService("SurfaceFlinger");
            if (service != null) {
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("android.ui.ISurfaceComposer");
                obtain.writeInt(0);
                service.transact(1006, obtain, null, 0);
                obtain.recycle();
            }
        } catch (RemoteException unused) {
            Log.d("ExynosDisplayUtils", "failed to sendEmptyUpdate");
        }
    }
}
