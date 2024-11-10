package com.android.server.pm.pkg.component;

import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.ArraySet;
import com.android.internal.R;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.XmlUtils;
import com.android.server.pm.pkg.parsing.ParsingPackage;
import com.android.server.pm.pkg.parsing.ParsingUtils;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class ParsedProcessUtils {
    public static ParseResult parseDenyPermission(Set set, Resources resources, XmlResourceParser xmlResourceParser, ParseInput parseInput) {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestDenyPermission);
        try {
            String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
            if (nonConfigurationString != null && nonConfigurationString.equals("android.permission.INTERNET")) {
                set = CollectionUtils.add(set, nonConfigurationString);
            }
            obtainAttributes.recycle();
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return parseInput.success(set);
        } catch (Throwable th) {
            obtainAttributes.recycle();
            throw th;
        }
    }

    public static ParseResult parseAllowPermission(Set set, Resources resources, XmlResourceParser xmlResourceParser, ParseInput parseInput) {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestAllowPermission);
        try {
            String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
            if (nonConfigurationString != null && nonConfigurationString.equals("android.permission.INTERNET")) {
                set = CollectionUtils.remove(set, nonConfigurationString);
            }
            obtainAttributes.recycle();
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return parseInput.success(set);
        } catch (Throwable th) {
            obtainAttributes.recycle();
            throw th;
        }
    }

    public static ParseResult parseProcess(Set set, String[] strArr, ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, int i, ParseInput parseInput) {
        ParseResult parseAllowPermission;
        ParsedProcessImpl parsedProcessImpl = new ParsedProcessImpl();
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProcess);
        if (set != null) {
            try {
                parsedProcessImpl.setDeniedPermissions(new ArraySet(set));
            } finally {
                obtainAttributes.recycle();
            }
        }
        ParseResult buildProcessName = ComponentParseUtils.buildProcessName(parsingPackage.getPackageName(), parsingPackage.getPackageName(), obtainAttributes.getNonConfigurationString(1, 0), i, strArr, parseInput);
        if (buildProcessName.isError()) {
            return parseInput.error(buildProcessName);
        }
        String packageName = parsingPackage.getPackageName();
        String buildClassName = ParsingUtils.buildClassName(packageName, obtainAttributes.getNonConfigurationString(0, 0));
        parsedProcessImpl.setName((String) buildProcessName.getResult());
        parsedProcessImpl.putAppClassNameForPackage(packageName, buildClassName);
        parsedProcessImpl.setGwpAsanMode(obtainAttributes.getInt(2, -1));
        parsedProcessImpl.setMemtagMode(obtainAttributes.getInt(3, -1));
        if (obtainAttributes.hasValue(4)) {
            parsedProcessImpl.setNativeHeapZeroInitialized(obtainAttributes.getBoolean(4, false) ? 1 : 0);
        }
        obtainAttributes.recycle();
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlResourceParser.getName();
                name.hashCode();
                if (name.equals("allow-permission")) {
                    parseAllowPermission = parseAllowPermission(parsedProcessImpl.getDeniedPermissions(), resources, xmlResourceParser, parseInput);
                    if (parseAllowPermission.isSuccess()) {
                        parsedProcessImpl.setDeniedPermissions((Set) parseAllowPermission.getResult());
                    }
                } else if (name.equals("deny-permission")) {
                    parseAllowPermission = parseDenyPermission(parsedProcessImpl.getDeniedPermissions(), resources, xmlResourceParser, parseInput);
                    if (parseAllowPermission.isSuccess()) {
                        parsedProcessImpl.setDeniedPermissions((Set) parseAllowPermission.getResult());
                    }
                } else {
                    parseAllowPermission = ParsingUtils.unknownTag("<process>", parsingPackage, xmlResourceParser, parseInput);
                }
                if (parseAllowPermission.isError()) {
                    return parseInput.error(parseAllowPermission);
                }
            }
        }
        return parseInput.success(parsedProcessImpl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00ca, code lost:
    
        return r15.success(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0043, code lost:
    
        if (r3.equals("process") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parseProcesses(java.lang.String[] r10, com.android.server.pm.pkg.parsing.ParsingPackage r11, android.content.res.Resources r12, android.content.res.XmlResourceParser r13, int r14, android.content.pm.parsing.result.ParseInput r15) {
        /*
            android.util.ArrayMap r0 = new android.util.ArrayMap
            r0.<init>()
            int r1 = r13.getDepth()
            r2 = 0
        La:
            int r3 = r13.next()
            r4 = 1
            if (r3 == r4) goto Lc6
            r5 = 3
            if (r3 != r5) goto L1a
            int r6 = r13.getDepth()
            if (r6 <= r1) goto Lc6
        L1a:
            if (r3 == r5) goto La
            r5 = 4
            if (r3 != r5) goto L20
            goto La
        L20:
            java.lang.String r3 = r13.getName()
            r3.hashCode()
            int r5 = r3.hashCode()
            r6 = -1
            switch(r5) {
                case -1239165229: goto L46;
                case -309518737: goto L3c;
                case 1658008624: goto L31;
                default: goto L2f;
            }
        L2f:
            r4 = r6
            goto L50
        L31:
            java.lang.String r4 = "deny-permission"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L3a
            goto L2f
        L3a:
            r4 = 2
            goto L50
        L3c:
            java.lang.String r5 = "process"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L50
            goto L2f
        L46:
            java.lang.String r4 = "allow-permission"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L4f
            goto L2f
        L4f:
            r4 = 0
        L50:
            switch(r4) {
                case 0: goto Lab;
                case 1: goto L6b;
                case 2: goto L5a;
                default: goto L53;
            }
        L53:
            java.lang.String r3 = "<processes>"
            android.content.pm.parsing.result.ParseResult r3 = com.android.server.pm.pkg.parsing.ParsingUtils.unknownTag(r3, r11, r13, r15)
            goto Lbb
        L5a:
            android.content.pm.parsing.result.ParseResult r3 = parseDenyPermission(r2, r12, r13, r15)
            boolean r4 = r3.isSuccess()
            if (r4 == 0) goto Lbb
            java.lang.Object r2 = r3.getResult()
            java.util.Set r2 = (java.util.Set) r2
            goto Lbb
        L6b:
            r3 = r2
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r8 = r14
            r9 = r15
            android.content.pm.parsing.result.ParseResult r3 = parseProcess(r3, r4, r5, r6, r7, r8, r9)
            boolean r4 = r3.isSuccess()
            if (r4 == 0) goto Lbb
            java.lang.Object r4 = r3.getResult()
            com.android.server.pm.pkg.component.ParsedProcess r4 = (com.android.server.pm.pkg.component.ParsedProcess) r4
            java.lang.String r5 = r4.getName()
            java.lang.Object r5 = r0.put(r5, r4)
            if (r5 == 0) goto Lbb
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "<process> specified existing name '"
            r3.append(r5)
            java.lang.String r4 = r4.getName()
            r3.append(r4)
            java.lang.String r4 = "'"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.content.pm.parsing.result.ParseResult r3 = r15.error(r3)
            goto Lbb
        Lab:
            android.content.pm.parsing.result.ParseResult r3 = parseAllowPermission(r2, r12, r13, r15)
            boolean r4 = r3.isSuccess()
            if (r4 == 0) goto Lbb
            java.lang.Object r2 = r3.getResult()
            java.util.Set r2 = (java.util.Set) r2
        Lbb:
            boolean r4 = r3.isError()
            if (r4 == 0) goto La
            android.content.pm.parsing.result.ParseResult r10 = r15.error(r3)
            return r10
        Lc6:
            android.content.pm.parsing.result.ParseResult r10 = r15.success(r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ParsedProcessUtils.parseProcesses(java.lang.String[], com.android.server.pm.pkg.parsing.ParsingPackage, android.content.res.Resources, android.content.res.XmlResourceParser, int, android.content.pm.parsing.result.ParseInput):android.content.pm.parsing.result.ParseResult");
    }
}
