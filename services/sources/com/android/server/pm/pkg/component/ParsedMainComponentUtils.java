package com.android.server.pm.pkg.component;

import android.content.IntentFilter;
import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Slog;
import com.android.server.pm.pkg.parsing.ParsingPackage;

/* loaded from: classes3.dex */
public abstract class ParsedMainComponentUtils {
    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parseMainComponent(com.android.server.pm.pkg.component.ParsedMainComponentImpl r16, java.lang.String r17, java.lang.String[] r18, com.android.server.pm.pkg.parsing.ParsingPackage r19, android.content.res.TypedArray r20, int r21, boolean r22, java.lang.String r23, android.content.pm.parsing.result.ParseInput r24, int r25, int r26, int r27, int r28, int r29, int r30, int r31, int r32, int r33, int r34, int r35, int r36) {
        /*
            r13 = r16
            r14 = r20
            r15 = r23
            r12 = r24
            r11 = r27
            r10 = r28
            r9 = r33
            r8 = r35
            r7 = r36
            r0 = r16
            r1 = r17
            r2 = r19
            r3 = r20
            r4 = r22
            r5 = r24
            r6 = r25
            r7 = r26
            r15 = r8
            r8 = r29
            r15 = r9
            r9 = r30
            r15 = r10
            r10 = r31
            r15 = r11
            r11 = r32
            r12 = r34
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.component.ParsedComponentUtils.parseComponent(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            boolean r1 = r0.isError()
            if (r1 == 0) goto L3b
            return r0
        L3b:
            r0 = 1
            r1 = 0
            r2 = -1
            if (r15 == r2) goto L53
            boolean r3 = r14.getBoolean(r15, r1)
            r13.setDirectBootAware(r3)
            boolean r3 = r16.isDirectBootAware()
            if (r3 == 0) goto L53
            r3 = r19
            r3.setPartiallyDirectBootAware(r0)
            goto L55
        L53:
            r3 = r19
        L55:
            r4 = r28
            if (r4 == r2) goto L60
            boolean r0 = r14.getBoolean(r4, r0)
            r13.setEnabled(r0)
        L60:
            r0 = r33
            if (r0 == r2) goto La8
            int r4 = r19.getTargetSdkVersion()
            r5 = 8
            if (r4 < r5) goto L73
            r4 = 1024(0x400, float:1.435E-42)
            java.lang.String r0 = r14.getNonConfigurationString(r0, r4)
            goto L77
        L73:
            java.lang.String r0 = r14.getNonResourceString(r0)
        L77:
            java.lang.String r4 = r19.getPackageName()
            java.lang.String r3 = r19.getProcessName()
            r25 = r4
            r26 = r3
            r27 = r0
            r28 = r21
            r29 = r18
            r30 = r24
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.component.ComponentParseUtils.buildProcessName(r25, r26, r27, r28, r29, r30)
            boolean r3 = r0.isError()
            if (r3 == 0) goto L9c
            r3 = r24
            android.content.pm.parsing.result.ParseResult r0 = r3.error(r0)
            return r0
        L9c:
            r3 = r24
            java.lang.Object r0 = r0.getResult()
            java.lang.String r0 = (java.lang.String) r0
            r13.setProcessName(r0)
            goto Laa
        La8:
            r3 = r24
        Laa:
            r0 = r35
            if (r0 == r2) goto Lb5
            java.lang.String r0 = r14.getNonConfigurationString(r0, r1)
            r13.setSplitName(r0)
        Lb5:
            r0 = r23
            if (r0 == 0) goto Lc2
            java.lang.String r4 = r16.getSplitName()
            if (r4 != 0) goto Lc2
            r13.setSplitName(r0)
        Lc2:
            r0 = r36
            if (r0 == r2) goto Ld5
            java.lang.String r0 = r14.getNonConfigurationString(r0, r1)
            if (r0 == 0) goto Ld5
            java.lang.String r1 = "\\|"
            java.lang.String[] r0 = r0.split(r1)
            r13.setAttributionTags(r0)
        Ld5:
            android.content.pm.parsing.result.ParseResult r0 = r3.success(r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ParsedMainComponentUtils.parseMainComponent(com.android.server.pm.pkg.component.ParsedMainComponentImpl, java.lang.String, java.lang.String[], com.android.server.pm.pkg.parsing.ParsingPackage, android.content.res.TypedArray, int, boolean, java.lang.String, android.content.pm.parsing.result.ParseInput, int, int, int, int, int, int, int, int, int, int, int, int):android.content.pm.parsing.result.ParseResult");
    }

    public static ParseResult parseIntentFilter(ParsedMainComponent parsedMainComponent, ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ParseInput parseInput) {
        int i;
        ParseResult parseIntentInfo = ParsedIntentInfoUtils.parseIntentInfo(parsedMainComponent.getName(), parsingPackage, resources, xmlResourceParser, z2, z3, parseInput);
        if (parseIntentInfo.isError()) {
            return parseInput.error(parseIntentInfo);
        }
        ParsedIntentInfo parsedIntentInfo = (ParsedIntentInfo) parseIntentInfo.getResult();
        IntentFilter intentFilter = parsedIntentInfo.getIntentFilter();
        if (intentFilter.countActions() == 0 && z5) {
            Slog.w("PackageParsing", "No actions in " + xmlResourceParser.getName() + " at " + parsingPackage.getBaseApkPath() + " " + xmlResourceParser.getPositionDescription());
            return parseInput.success((Object) null);
        }
        if (z) {
            i = 1;
        } else {
            i = (z4 && ComponentParseUtils.isImplicitlyExposedIntent(parsedIntentInfo)) ? 2 : 0;
        }
        intentFilter.setVisibilityToInstantApp(i);
        return parseInput.success((ParsedIntentInfoImpl) parseIntentInfo.getResult());
    }
}
