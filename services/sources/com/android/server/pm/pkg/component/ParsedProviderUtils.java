package com.android.server.pm.pkg.component;

import android.content.pm.PathPermission;
import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.PatternMatcher;
import android.util.Slog;
import com.android.internal.R;
import com.android.server.pm.pkg.parsing.ParsingPackage;
import java.util.Objects;

/* loaded from: classes3.dex */
public abstract class ParsedProviderUtils {
    public static ParseResult parseProvider(String[] strArr, ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, int i, boolean z, String str, ParseInput parseInput) {
        TypedArray typedArray;
        int targetSdkVersion = parsingPackage.getTargetSdkVersion();
        String packageName = parsingPackage.getPackageName();
        ParsedProviderImpl parsedProviderImpl = new ParsedProviderImpl();
        String name = xmlResourceParser.getName();
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProvider);
        try {
            ParseResult parseMainComponent = ParsedMainComponentUtils.parseMainComponent(parsedProviderImpl, name, strArr, parsingPackage, obtainAttributes, i, z, str, parseInput, 17, 14, 18, 6, 1, 0, 15, 2, 8, 19, 21, 23);
            if (parseMainComponent.isError()) {
                ParseResult error = parseInput.error(parseMainComponent);
                obtainAttributes.recycle();
                return error;
            }
            typedArray = obtainAttributes;
            try {
                String nonConfigurationString = typedArray.getNonConfigurationString(10, 0);
                parsedProviderImpl.setSyncable(typedArray.getBoolean(11, false)).setExported(typedArray.getBoolean(7, targetSdkVersion < 17));
                String nonConfigurationString2 = typedArray.getNonConfigurationString(3, 0);
                String nonConfigurationString3 = typedArray.getNonConfigurationString(4, 0);
                if (nonConfigurationString3 == null) {
                    nonConfigurationString3 = nonConfigurationString2;
                }
                if (nonConfigurationString3 == null) {
                    parsedProviderImpl.setReadPermission(parsingPackage.getPermission());
                } else {
                    parsedProviderImpl.setReadPermission(nonConfigurationString3);
                }
                String nonConfigurationString4 = typedArray.getNonConfigurationString(5, 0);
                if (nonConfigurationString4 != null) {
                    nonConfigurationString2 = nonConfigurationString4;
                }
                if (nonConfigurationString2 == null) {
                    parsedProviderImpl.setWritePermission(parsingPackage.getPermission());
                } else {
                    parsedProviderImpl.setWritePermission(nonConfigurationString2);
                }
                parsedProviderImpl.setGrantUriPermissions(typedArray.getBoolean(13, false)).setForceUriPermissions(typedArray.getBoolean(22, false)).setMultiProcess(typedArray.getBoolean(9, false)).setInitOrder(typedArray.getInt(12, 0)).setFlags(parsedProviderImpl.getFlags() | ComponentParseUtils.flag(1073741824, 16, typedArray));
                boolean z2 = typedArray.getBoolean(20, false);
                if (z2) {
                    parsedProviderImpl.setFlags(parsedProviderImpl.getFlags() | 1048576);
                    parsingPackage.setVisibleToInstantApps(true);
                }
                typedArray.recycle();
                if (parsingPackage.isSaveStateDisallowed() && Objects.equals(parsedProviderImpl.getProcessName(), packageName)) {
                    return parseInput.error("Heavy-weight applications can not have providers in main process");
                }
                if (nonConfigurationString == null) {
                    return parseInput.error("<provider> does not include authorities attribute");
                }
                if (nonConfigurationString.length() <= 0) {
                    return parseInput.error("<provider> has empty authorities attribute");
                }
                parsedProviderImpl.setAuthority(nonConfigurationString);
                return parseProviderTags(parsingPackage, name, resources, xmlResourceParser, z2, parsedProviderImpl, parseInput);
            } catch (Throwable th) {
                th = th;
                typedArray.recycle();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            typedArray = obtainAttributes;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x005d, code lost:
    
        if (r0.equals("meta-data") == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parseProviderTags(com.android.server.pm.pkg.parsing.ParsingPackage r16, java.lang.String r17, android.content.res.Resources r18, android.content.res.XmlResourceParser r19, boolean r20, com.android.server.pm.pkg.component.ParsedProviderImpl r21, android.content.pm.parsing.result.ParseInput r22) {
        /*
            r10 = r16
            r11 = r18
            r12 = r19
            r13 = r21
            r14 = r22
            int r15 = r19.getDepth()
        Le:
            int r0 = r19.next()
            r1 = 1
            if (r0 == r1) goto Lcf
            r2 = 3
            if (r0 != r2) goto L1e
            int r3 = r19.getDepth()
            if (r3 <= r15) goto Lcf
        L1e:
            r3 = 2
            if (r0 == r3) goto L22
            goto Le
        L22:
            java.lang.String r0 = r19.getName()
            r0.hashCode()
            int r4 = r0.hashCode()
            r5 = -1
            switch(r4) {
                case -1814617695: goto L60;
                case -1115949454: goto L56;
                case -1029793847: goto L4b;
                case -993141291: goto L3f;
                case 636171383: goto L33;
                default: goto L31;
            }
        L31:
            r1 = r5
            goto L6a
        L33:
            java.lang.String r1 = "path-permission"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3d
            goto L31
        L3d:
            r1 = 4
            goto L6a
        L3f:
            java.lang.String r1 = "property"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L49
            goto L31
        L49:
            r1 = r2
            goto L6a
        L4b:
            java.lang.String r1 = "intent-filter"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L54
            goto L31
        L54:
            r1 = r3
            goto L6a
        L56:
            java.lang.String r2 = "meta-data"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L6a
            goto L31
        L60:
            java.lang.String r1 = "grant-uri-permission"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L69
            goto L31
        L69:
            r1 = 0
        L6a:
            switch(r1) {
                case 0: goto Lc0;
                case 1: goto Lbb;
                case 2: goto L82;
                case 3: goto L7b;
                case 4: goto L74;
                default: goto L6d;
            }
        L6d:
            r9 = r17
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.parsing.ParsingUtils.unknownTag(r9, r10, r12, r14)
            goto Lc4
        L74:
            r9 = r17
            android.content.pm.parsing.result.ParseResult r0 = parsePathPermission(r13, r10, r11, r12, r14)
            goto Lc4
        L7b:
            r9 = r17
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.component.ParsedComponentUtils.addProperty(r13, r10, r11, r12, r14)
            goto Lc4
        L82:
            r9 = r17
            r5 = 1
            r6 = 0
            r7 = 0
            r8 = 0
            r0 = r21
            r1 = r16
            r2 = r18
            r3 = r19
            r4 = r20
            r9 = r22
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.component.ParsedMainComponentUtils.parseIntentFilter(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            boolean r1 = r0.isSuccess()
            if (r1 == 0) goto Lc4
            java.lang.Object r1 = r0.getResult()
            com.android.server.pm.pkg.component.ParsedIntentInfoImpl r1 = (com.android.server.pm.pkg.component.ParsedIntentInfoImpl) r1
            android.content.IntentFilter r2 = r1.getIntentFilter()
            int r2 = r2.getOrder()
            int r3 = r21.getOrder()
            int r2 = java.lang.Math.max(r2, r3)
            r13.setOrder(r2)
            r13.addIntent(r1)
            goto Lc4
        Lbb:
            android.content.pm.parsing.result.ParseResult r0 = com.android.server.pm.pkg.component.ParsedComponentUtils.addMetaData(r13, r10, r11, r12, r14)
            goto Lc4
        Lc0:
            android.content.pm.parsing.result.ParseResult r0 = parseGrantUriPermission(r13, r10, r11, r12, r14)
        Lc4:
            boolean r1 = r0.isError()
            if (r1 == 0) goto Le
            android.content.pm.parsing.result.ParseResult r0 = r14.error(r0)
            return r0
        Lcf:
            android.content.pm.parsing.result.ParseResult r0 = r14.success(r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ParsedProviderUtils.parseProviderTags(com.android.server.pm.pkg.parsing.ParsingPackage, java.lang.String, android.content.res.Resources, android.content.res.XmlResourceParser, boolean, com.android.server.pm.pkg.component.ParsedProviderImpl, android.content.pm.parsing.result.ParseInput):android.content.pm.parsing.result.ParseResult");
    }

    public static ParseResult parseGrantUriPermission(ParsedProviderImpl parsedProviderImpl, ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, ParseInput parseInput) {
        PatternMatcher patternMatcher;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestGrantUriPermission);
        try {
            String name = xmlResourceParser.getName();
            String nonConfigurationString = obtainAttributes.getNonConfigurationString(4, 0);
            if (nonConfigurationString != null) {
                patternMatcher = new PatternMatcher(nonConfigurationString, 3);
            } else {
                String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(2, 0);
                if (nonConfigurationString2 != null) {
                    patternMatcher = new PatternMatcher(nonConfigurationString2, 2);
                } else {
                    String nonConfigurationString3 = obtainAttributes.getNonConfigurationString(1, 0);
                    if (nonConfigurationString3 != null) {
                        patternMatcher = new PatternMatcher(nonConfigurationString3, 1);
                    } else {
                        String nonConfigurationString4 = obtainAttributes.getNonConfigurationString(3, 0);
                        if (nonConfigurationString4 != null) {
                            patternMatcher = new PatternMatcher(nonConfigurationString4, 4);
                        } else {
                            String nonConfigurationString5 = obtainAttributes.getNonConfigurationString(0, 0);
                            patternMatcher = nonConfigurationString5 != null ? new PatternMatcher(nonConfigurationString5, 0) : null;
                        }
                    }
                }
            }
            if (patternMatcher != null) {
                parsedProviderImpl.addUriPermissionPattern(patternMatcher);
                parsedProviderImpl.setGrantUriPermissions(true);
            } else {
                Slog.w("PackageParsing", "Unknown element under <path-permission>: " + name + " at " + parsingPackage.getBaseApkPath() + " " + xmlResourceParser.getPositionDescription());
            }
            return parseInput.success(parsedProviderImpl);
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ParseResult parsePathPermission(ParsedProviderImpl parsedProviderImpl, ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, ParseInput parseInput) {
        boolean z;
        PathPermission pathPermission;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPathPermission);
        try {
            String name = xmlResourceParser.getName();
            String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
            String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(1, 0);
            if (nonConfigurationString2 == null) {
                nonConfigurationString2 = nonConfigurationString;
            }
            String nonConfigurationString3 = obtainAttributes.getNonConfigurationString(2, 0);
            if (nonConfigurationString3 != null) {
                nonConfigurationString = nonConfigurationString3;
            }
            if (nonConfigurationString2 != null) {
                nonConfigurationString2 = nonConfigurationString2.intern();
                z = true;
            } else {
                z = false;
            }
            if (nonConfigurationString != null) {
                nonConfigurationString = nonConfigurationString.intern();
                z = true;
            }
            if (!z) {
                Slog.w("PackageParsing", "No readPermission or writePermission for <path-permission>: " + name + " at " + parsingPackage.getBaseApkPath() + " " + xmlResourceParser.getPositionDescription());
                return parseInput.success(parsedProviderImpl);
            }
            String nonConfigurationString4 = obtainAttributes.getNonConfigurationString(7, 0);
            if (nonConfigurationString4 != null) {
                pathPermission = new PathPermission(nonConfigurationString4, 3, nonConfigurationString2, nonConfigurationString);
            } else {
                String nonConfigurationString5 = obtainAttributes.getNonConfigurationString(5, 0);
                if (nonConfigurationString5 != null) {
                    pathPermission = new PathPermission(nonConfigurationString5, 2, nonConfigurationString2, nonConfigurationString);
                } else {
                    String nonConfigurationString6 = obtainAttributes.getNonConfigurationString(4, 0);
                    if (nonConfigurationString6 != null) {
                        pathPermission = new PathPermission(nonConfigurationString6, 1, nonConfigurationString2, nonConfigurationString);
                    } else {
                        String nonConfigurationString7 = obtainAttributes.getNonConfigurationString(6, 0);
                        if (nonConfigurationString7 != null) {
                            pathPermission = new PathPermission(nonConfigurationString7, 4, nonConfigurationString2, nonConfigurationString);
                        } else {
                            String nonConfigurationString8 = obtainAttributes.getNonConfigurationString(3, 0);
                            pathPermission = nonConfigurationString8 != null ? new PathPermission(nonConfigurationString8, 0, nonConfigurationString2, nonConfigurationString) : null;
                        }
                    }
                }
            }
            if (pathPermission != null) {
                parsedProviderImpl.addPathPermission(pathPermission);
            } else {
                Slog.w("PackageParsing", "No path, pathPrefix, or pathPattern for <path-permission>: " + name + " at " + parsingPackage.getBaseApkPath() + " " + xmlResourceParser.getPositionDescription());
            }
            return parseInput.success(parsedProviderImpl);
        } finally {
            obtainAttributes.recycle();
        }
    }
}
