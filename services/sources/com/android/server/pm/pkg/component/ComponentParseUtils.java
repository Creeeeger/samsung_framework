package com.android.server.pm.pkg.component;

import android.content.IntentFilter;
import android.content.pm.parsing.FrameworkParsingPackageUtils;
import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.res.TypedArray;
import android.text.TextUtils;
import com.android.server.pm.pkg.PackageUserState;
import com.android.server.pm.pkg.PackageUserStateUtils;

/* loaded from: classes3.dex */
public abstract class ComponentParseUtils {
    public static boolean isImplicitlyExposedIntent(ParsedIntentInfo parsedIntentInfo) {
        IntentFilter intentFilter = parsedIntentInfo.getIntentFilter();
        return intentFilter.hasCategory("android.intent.category.BROWSABLE") || intentFilter.hasAction("android.intent.action.SEND") || intentFilter.hasAction("android.intent.action.SENDTO") || intentFilter.hasAction("android.intent.action.SEND_MULTIPLE");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
    
        return r8.success(r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parseAllMetaData(com.android.server.pm.pkg.parsing.ParsingPackage r3, android.content.res.Resources r4, android.content.res.XmlResourceParser r5, java.lang.String r6, com.android.server.pm.pkg.component.ParsedComponentImpl r7, android.content.pm.parsing.result.ParseInput r8) {
        /*
            int r0 = r5.getDepth()
        L4:
            int r1 = r5.next()
            r2 = 1
            if (r1 == r2) goto L39
            r2 = 3
            if (r1 != r2) goto L14
            int r2 = r5.getDepth()
            if (r2 <= r0) goto L39
        L14:
            r2 = 2
            if (r1 == r2) goto L18
            goto L4
        L18:
            java.lang.String r1 = "meta-data"
            java.lang.String r2 = r5.getName()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L2a
            android.content.pm.parsing.result.ParseResult r1 = com.android.server.pm.pkg.component.ParsedComponentUtils.addMetaData(r7, r3, r4, r5, r8)
            goto L2e
        L2a:
            android.content.pm.parsing.result.ParseResult r1 = com.android.server.pm.pkg.parsing.ParsingUtils.unknownTag(r6, r3, r5, r8)
        L2e:
            boolean r2 = r1.isError()
            if (r2 == 0) goto L4
            android.content.pm.parsing.result.ParseResult r3 = r8.error(r1)
            return r3
        L39:
            android.content.pm.parsing.result.ParseResult r3 = r8.success(r7)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ComponentParseUtils.parseAllMetaData(com.android.server.pm.pkg.parsing.ParsingPackage, android.content.res.Resources, android.content.res.XmlResourceParser, java.lang.String, com.android.server.pm.pkg.component.ParsedComponentImpl, android.content.pm.parsing.result.ParseInput):android.content.pm.parsing.result.ParseResult");
    }

    public static ParseResult buildProcessName(String str, String str2, CharSequence charSequence, int i, String[] strArr, ParseInput parseInput) {
        if ((i & 2) != 0 && !"system".contentEquals(charSequence)) {
            if (str2 != null) {
                str = str2;
            }
            return parseInput.success(str);
        }
        if (strArr != null) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                String str3 = strArr[length];
                if (str3.equals(str) || str3.equals(str2) || str3.contentEquals(charSequence)) {
                    return parseInput.success(str);
                }
            }
        }
        if (charSequence == null || charSequence.length() <= 0) {
            return parseInput.success(str2);
        }
        return parseInput.success(TextUtils.safeIntern((String) buildCompoundName(str, charSequence, "process", parseInput).getResult()));
    }

    public static ParseResult buildTaskAffinityName(String str, String str2, CharSequence charSequence, ParseInput parseInput) {
        if (charSequence == null) {
            return parseInput.success(str2);
        }
        if (charSequence.length() <= 0) {
            return parseInput.success((Object) null);
        }
        return buildCompoundName(str, charSequence, "taskAffinity", parseInput);
    }

    public static ParseResult buildCompoundName(String str, CharSequence charSequence, String str2, ParseInput parseInput) {
        String charSequence2 = charSequence.toString();
        char charAt = charSequence2.charAt(0);
        if (str != null && charAt == ':') {
            if (charSequence2.length() < 2) {
                return parseInput.error("Bad " + str2 + " name " + charSequence2 + " in package " + str + ": must be at least two characters");
            }
            ParseResult validateName = FrameworkParsingPackageUtils.validateName(parseInput, charSequence2.substring(1), false, false);
            if (validateName.isError()) {
                return parseInput.error("Invalid " + str2 + " name " + charSequence2 + " in package " + str + ": " + validateName.getErrorMessage());
            }
            return parseInput.success(str + charSequence2);
        }
        if (!"system".equals(charSequence2)) {
            ParseResult validateName2 = FrameworkParsingPackageUtils.validateName(parseInput, charSequence2, true, false);
            if (validateName2.isError()) {
                return parseInput.error("Invalid " + str2 + " name " + charSequence2 + " in package " + str + ": " + validateName2.getErrorMessage());
            }
        }
        return parseInput.success(charSequence2);
    }

    public static int flag(int i, int i2, TypedArray typedArray) {
        if (typedArray.getBoolean(i2, false)) {
            return i;
        }
        return 0;
    }

    public static int flag(int i, int i2, boolean z, TypedArray typedArray) {
        if (typedArray.getBoolean(i2, z)) {
            return i;
        }
        return 0;
    }

    public static CharSequence getNonLocalizedLabel(ParsedComponent parsedComponent) {
        return parsedComponent.getNonLocalizedLabel();
    }

    public static int getIcon(ParsedComponent parsedComponent) {
        return parsedComponent.getIcon();
    }

    public static boolean isMatch(PackageUserState packageUserState, boolean z, boolean z2, ParsedMainComponent parsedMainComponent, long j) {
        return PackageUserStateUtils.isMatch(packageUserState, z, z2, parsedMainComponent.isEnabled(), parsedMainComponent.isDirectBootAware(), parsedMainComponent.getName(), j);
    }
}
