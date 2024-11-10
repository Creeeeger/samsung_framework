package com.android.server.graphics.fonts;

import android.graphics.fonts.FontUpdateRequest;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Xml;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class PersistentSystemFontConfig {

    /* loaded from: classes2.dex */
    public class Config {
        public long lastModifiedMillis;
        public final Set updatedFontDirs = new ArraySet();
        public final List fontFamilies = new ArrayList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0059, code lost:
    
        if (r3.equals("family") == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void loadFromXml(java.io.InputStream r6, com.android.server.graphics.fonts.PersistentSystemFontConfig.Config r7) {
        /*
            com.android.modules.utils.TypedXmlPullParser r6 = android.util.Xml.resolvePullParser(r6)
        L4:
            int r0 = r6.next()
            r1 = 1
            if (r0 == r1) goto La2
            r2 = 2
            if (r0 == r2) goto Lf
            goto L4
        Lf:
            int r0 = r6.getDepth()
            java.lang.String r3 = r6.getName()
            java.lang.String r4 = "PersistentSystemFontConfig"
            if (r0 != r1) goto L38
            java.lang.String r0 = "fontConfig"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L4
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Invalid root tag: "
            r6.append(r7)
            r6.append(r3)
            java.lang.String r6 = r6.toString()
            android.util.Slog.e(r4, r6)
            return
        L38:
            if (r0 != r2) goto L4
            r3.hashCode()
            int r0 = r3.hashCode()
            r5 = -1
            switch(r0) {
                case -1540845619: goto L5c;
                case -1281860764: goto L53;
                case -23402365: goto L47;
                default: goto L45;
            }
        L45:
            r1 = r5
            goto L67
        L47:
            java.lang.String r0 = "updatedFontDir"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L51
            goto L45
        L51:
            r1 = r2
            goto L67
        L53:
            java.lang.String r0 = "family"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L67
            goto L45
        L5c:
            java.lang.String r0 = "lastModifiedDate"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L66
            goto L45
        L66:
            r1 = 0
        L67:
            java.lang.String r0 = "value"
            switch(r1) {
                case 0: goto L98;
                case 1: goto L8d;
                case 2: goto L82;
                default: goto L6d;
            }
        L6d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Skipping unknown tag: "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            android.util.Slog.w(r4, r0)
            goto L4
        L82:
            java.util.Set r1 = r7.updatedFontDirs
            java.lang.String r0 = getAttribute(r6, r0)
            r1.add(r0)
            goto L4
        L8d:
            java.util.List r0 = r7.fontFamilies
            android.graphics.fonts.FontUpdateRequest$Family r1 = android.graphics.fonts.FontUpdateRequest.Family.readFromXml(r6)
            r0.add(r1)
            goto L4
        L98:
            r1 = 0
            long r0 = parseLongAttribute(r6, r0, r1)
            r7.lastModifiedMillis = r0
            goto L4
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.graphics.fonts.PersistentSystemFontConfig.loadFromXml(java.io.InputStream, com.android.server.graphics.fonts.PersistentSystemFontConfig$Config):void");
    }

    public static void writeToXml(OutputStream outputStream, Config config) {
        TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(outputStream);
        resolveSerializer.startDocument((String) null, Boolean.TRUE);
        resolveSerializer.startTag((String) null, "fontConfig");
        resolveSerializer.startTag((String) null, "lastModifiedDate");
        resolveSerializer.attribute((String) null, "value", Long.toString(config.lastModifiedMillis));
        resolveSerializer.endTag((String) null, "lastModifiedDate");
        for (String str : config.updatedFontDirs) {
            resolveSerializer.startTag((String) null, "updatedFontDir");
            resolveSerializer.attribute((String) null, "value", str);
            resolveSerializer.endTag((String) null, "updatedFontDir");
        }
        List list = config.fontFamilies;
        for (int i = 0; i < list.size(); i++) {
            FontUpdateRequest.Family family = (FontUpdateRequest.Family) list.get(i);
            resolveSerializer.startTag((String) null, "family");
            FontUpdateRequest.Family.writeFamilyToXml(resolveSerializer, family);
            resolveSerializer.endTag((String) null, "family");
        }
        resolveSerializer.endTag((String) null, "fontConfig");
        resolveSerializer.endDocument();
    }

    public static long parseLongAttribute(TypedXmlPullParser typedXmlPullParser, String str, long j) {
        String attributeValue = typedXmlPullParser.getAttributeValue((String) null, str);
        if (TextUtils.isEmpty(attributeValue)) {
            return j;
        }
        try {
            return Long.parseLong(attributeValue);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static String getAttribute(TypedXmlPullParser typedXmlPullParser, String str) {
        String attributeValue = typedXmlPullParser.getAttributeValue((String) null, str);
        return attributeValue == null ? "" : attributeValue;
    }
}
