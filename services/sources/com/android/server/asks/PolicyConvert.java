package com.android.server.asks;

import android.util.Slog;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class PolicyConvert {
    public Map pkgInfos = new HashMap();
    public String TAG = "AASA_PolicyConvert ";

    public boolean convert(String str) {
        Slog.i(this.TAG, "working..");
        AASA();
        EM();
        RestrictPackages();
        boolean makeASKSxml = makeASKSxml(this.pkgInfos, str);
        if (makeASKSxml) {
            deleteFiles();
        }
        Slog.i(this.TAG, "end");
        return makeASKSxml;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x010f, code lost:
    
        if (r2 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0112, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f0, code lost:
    
        if (r2 != null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean makeASKSxml(java.util.Map r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.PolicyConvert.makeASKSxml(java.util.Map, java.lang.String):boolean");
    }

    public final String parseToken(String str, String str2) {
        String[] split;
        String[] split2 = str.split(str2);
        if (split2 == null || split2.length != 2 || (split = split2[1].split("\"/>")) == null) {
            return null;
        }
        return split[0];
    }

    public final void MakeString(ArrayList arrayList, String str, String str2, Map map) {
        ArrayList arrayList2 = map.containsKey(str) ? (ArrayList) map.get(str) : new ArrayList();
        arrayList2.add("        <restrict version=\"" + str2 + "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Token\">");
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList2.add("            <permission value=\"" + ((String) arrayList.get(i)) + "\"/>");
        }
        arrayList2.add("        </restrict>");
        map.put(str, arrayList2);
    }

    public final void MakeString(String str, String str2, Map map) {
        ArrayList arrayList = map.containsKey(str) ? (ArrayList) map.get(str) : new ArrayList();
        arrayList.add("        <emmode value=\"" + str2 + "\"/>");
        map.put(str, arrayList);
    }

    public final void MakeString(ArrayList arrayList, String str, String str2, String str3, Map map) {
        for (int i = 0; i < arrayList.size(); i++) {
            ArrayList arrayList2 = map.containsKey(arrayList.get(i)) ? (ArrayList) map.get(arrayList.get(i)) : new ArrayList();
            if ("DELETE".equals(str)) {
                arrayList2.add("        <delete version=\"" + str3 + "\" datelimit=\"" + str2 + "\"/>");
            } else {
                arrayList2.add("        <restrict version=\"" + str3 + "\" type=\"" + str + "\" datelimit=\"" + str2 + "\" from=\"Token\"/>");
            }
            map.put((String) arrayList.get(i), arrayList2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0116 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AASA() {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.PolicyConvert.AASA():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x016b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void RestrictPackages() {
        /*
            Method dump skipped, instructions count: 387
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.PolicyConvert.RestrictPackages():void");
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00d4: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:97:0x00d4 */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d2 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void EM() {
        /*
            Method dump skipped, instructions count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.PolicyConvert.EM():void");
    }

    public final void deleteFiles() {
        File file = new File("/data/system/.aasa/AASApolicy/AASA.xml");
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File("/data/system/.aasa/AASApolicy/AASA-TEMP.xml");
        if (file2.exists()) {
            file2.delete();
        }
        File file3 = new File("/data/system/.aasa/EMSupportPackages.xml");
        if (file3.exists()) {
            file3.delete();
        }
        File file4 = new File("/data/system/.aasa/RestrictPackages.xml");
        if (file4.exists()) {
            file4.delete();
        }
        File file5 = new File("/data/system/.aasa/AASApackages.xml");
        if (file5.exists()) {
            file5.delete();
        }
    }
}
