package com.android.server.pm.pkg.component;

import android.content.pm.parsing.result.ParseInput;
import android.content.pm.parsing.result.ParseResult;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.ArrayMap;
import android.util.EventLog;
import com.android.internal.R;
import com.android.server.pm.pkg.parsing.ParsingPackage;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public abstract class ParsedPermissionUtils {
    /* JADX WARN: Removed duplicated region for block: B:61:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parsePermission(com.android.server.pm.pkg.parsing.ParsingPackage r21, android.content.res.Resources r22, android.content.res.XmlResourceParser r23, boolean r24, android.content.pm.parsing.result.ParseInput r25) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ParsedPermissionUtils.parsePermission(com.android.server.pm.pkg.parsing.ParsingPackage, android.content.res.Resources, android.content.res.XmlResourceParser, boolean, android.content.pm.parsing.result.ParseInput):android.content.pm.parsing.result.ParseResult");
    }

    public static ParseResult parsePermissionTree(ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, boolean z, ParseInput parseInput) {
        ParsedPermissionImpl parsedPermissionImpl = new ParsedPermissionImpl();
        String str = "<" + xmlResourceParser.getName() + ">";
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionTree);
        try {
            ParseResult parseComponent = ParsedComponentUtils.parseComponent(parsedPermissionImpl, str, parsingPackage, obtainAttributes, z, parseInput, 4, -1, 1, 0, 3, 2, 5);
            if (parseComponent.isError()) {
                return parseInput.error(parseComponent);
            }
            obtainAttributes.recycle();
            int indexOf = parsedPermissionImpl.getName().indexOf(46);
            if (indexOf > 0) {
                indexOf = parsedPermissionImpl.getName().indexOf(46, indexOf + 1);
            }
            if (indexOf < 0) {
                return parseInput.error("<permission-tree> name has less than three segments: " + parsedPermissionImpl.getName());
            }
            parsedPermissionImpl.setProtectionLevel(0).setTree(true);
            ParseResult parseAllMetaData = ComponentParseUtils.parseAllMetaData(parsingPackage, resources, xmlResourceParser, str, parsedPermissionImpl, parseInput);
            if (parseAllMetaData.isError()) {
                return parseInput.error(parseAllMetaData);
            }
            return parseInput.success((ParsedPermission) parseAllMetaData.getResult());
        } finally {
            obtainAttributes.recycle();
        }
    }

    public static ParseResult parsePermissionGroup(ParsingPackage parsingPackage, Resources resources, XmlResourceParser xmlResourceParser, boolean z, ParseInput parseInput) {
        TypedArray typedArray;
        ParsedPermissionGroupImpl parsedPermissionGroupImpl = new ParsedPermissionGroupImpl();
        String str = "<" + xmlResourceParser.getName() + ">";
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionGroup);
        try {
            ParseResult parseComponent = ParsedComponentUtils.parseComponent(parsedPermissionGroupImpl, str, parsingPackage, obtainAttributes, z, parseInput, 7, 4, 1, 0, 5, 2, 8);
            if (parseComponent.isError()) {
                ParseResult error = parseInput.error(parseComponent);
                obtainAttributes.recycle();
                return error;
            }
            typedArray = obtainAttributes;
            try {
                parsedPermissionGroupImpl.setRequestDetailRes(typedArray.getResourceId(12, 0)).setBackgroundRequestRes(typedArray.getResourceId(9, 0)).setBackgroundRequestDetailRes(typedArray.getResourceId(10, 0)).setRequestRes(typedArray.getResourceId(11, 0)).setPriority(typedArray.getInt(3, 0)).setFlags(typedArray.getInt(6, 0));
                typedArray.recycle();
                ParseResult parseAllMetaData = ComponentParseUtils.parseAllMetaData(parsingPackage, resources, xmlResourceParser, str, parsedPermissionGroupImpl, parseInput);
                if (parseAllMetaData.isError()) {
                    return parseInput.error(parseAllMetaData);
                }
                return parseInput.success((ParsedPermissionGroup) parseAllMetaData.getResult());
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

    public static boolean isRuntime(ParsedPermission parsedPermission) {
        return getProtection(parsedPermission) == 1;
    }

    public static boolean isAppOp(ParsedPermission parsedPermission) {
        return (parsedPermission.getProtectionLevel() & 64) != 0;
    }

    public static int getProtection(ParsedPermission parsedPermission) {
        return parsedPermission.getProtectionLevel() & 15;
    }

    public static int getProtectionFlags(ParsedPermission parsedPermission) {
        return parsedPermission.getProtectionLevel() & (-16);
    }

    public static boolean isMalformedDuplicate(ParsedPermission parsedPermission, ParsedPermission parsedPermission2) {
        return (parsedPermission == null || parsedPermission2 == null || parsedPermission.isTree() || parsedPermission2.isTree() || (parsedPermission.getProtectionLevel() == parsedPermission2.getProtectionLevel() && Objects.equals(parsedPermission.getGroup(), parsedPermission2.getGroup()))) ? false : true;
    }

    public static boolean declareDuplicatePermission(ParsingPackage parsingPackage) {
        List permissions = parsingPackage.getPermissions();
        int size = permissions.size();
        if (size > 0) {
            ArrayMap arrayMap = new ArrayMap(size);
            for (int i = 0; i < size; i++) {
                ParsedPermission parsedPermission = (ParsedPermission) permissions.get(i);
                String name = parsedPermission.getName();
                if (isMalformedDuplicate(parsedPermission, (ParsedPermission) arrayMap.get(name))) {
                    EventLog.writeEvent(1397638484, "213323615");
                    return true;
                }
                arrayMap.put(name, parsedPermission);
            }
        }
        return false;
    }
}
