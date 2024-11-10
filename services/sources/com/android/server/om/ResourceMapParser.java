package com.android.server.om;

import android.content.APKContents;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.os.FileUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.internal.util.XmlUtils;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.AndroidPackageSplit;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public abstract class ResourceMapParser {
    public static final boolean DEBUG = "eng".equals(Build.TYPE);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum ResourceType {
        DRAWABLE,
        COLOR
    }

    public static void parseResourceMap(AndroidPackage androidPackage) {
        AssetManager assetManager;
        APKContents aPKContents;
        if (DEBUG) {
            Log.d("ResourceMapParser", "parseResourceMap = " + androidPackage.getPackageName());
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                aPKContents = new APKContents(((AndroidPackageSplit) androidPackage.getSplits().get(0)).getPath());
                assetManager = aPKContents.getAssets();
            } catch (IOException | RuntimeException | XmlPullParserException e) {
                e = e;
                assetManager = null;
            } catch (Throwable th) {
                th = th;
                assetManager = null;
                IoUtils.closeQuietly(xmlResourceParser);
                IoUtils.closeQuietly(assetManager);
                throw th;
            }
            try {
                Resources resources = aPKContents.getResources();
                int identifier = resources.getIdentifier("resource_map", "xml", androidPackage.getPackageName());
                if (identifier != 0) {
                    xmlResourceParser = resources.getXml(identifier);
                    parseResourceMapToFile(androidPackage.getPackageName(), androidPackage.getBaseApkPath(), resources, xmlResourceParser);
                } else {
                    Log.e("ResourceMapParser", "resource_map file not found in res/xml/.. folder");
                }
            } catch (IOException | RuntimeException | XmlPullParserException e2) {
                e = e2;
                Log.e("ResourceMapParser", "Failed to parse resource_map");
                e.printStackTrace();
                IoUtils.closeQuietly(xmlResourceParser);
                IoUtils.closeQuietly(assetManager);
            }
            IoUtils.closeQuietly(xmlResourceParser);
            IoUtils.closeQuietly(assetManager);
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(xmlResourceParser);
            IoUtils.closeQuietly(assetManager);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0080, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x007d, code lost:
    
        writeMapFile(r7, r8, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void parseResourceMapToFile(java.lang.String r7, java.lang.String r8, android.content.res.Resources r9, android.content.res.XmlResourceParser r10) {
        /*
            android.util.ArrayMap r0 = new android.util.ArrayMap
            r0.<init>()
            r10.getEventType()
            int r1 = r10.getDepth()
            r2 = 0
        Ld:
            int r3 = r10.next()
            r4 = 1
            if (r3 == r4) goto L7d
            r5 = 3
            if (r3 != r5) goto L1d
            int r6 = r10.getDepth()
            if (r6 <= r1) goto L7d
        L1d:
            if (r3 == r5) goto Ld
            r5 = 4
            if (r3 != r5) goto L23
            goto Ld
        L23:
            java.lang.String r3 = r10.getName()
            if (r3 != 0) goto L2a
            goto Ld
        L2a:
            if (r2 == 0) goto L6a
            java.lang.String r4 = "drawable"
            boolean r5 = r4.equals(r3)
            if (r5 == 0) goto L4b
            java.lang.Object r3 = r0.get(r4)
            if (r3 != 0) goto L42
            android.util.ArrayMap r3 = new android.util.ArrayMap
            r3.<init>()
            r0.put(r4, r3)
        L42:
            com.android.server.om.ResourceMapParser$ResourceType r3 = com.android.server.om.ResourceMapParser.ResourceType.DRAWABLE
            boolean r3 = parseResourceEntries(r7, r9, r10, r0, r3)
            if (r3 != 0) goto Ld
            return
        L4b:
            java.lang.String r4 = "color"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto Ld
            java.lang.Object r3 = r0.get(r4)
            if (r3 != 0) goto L61
            android.util.ArrayMap r3 = new android.util.ArrayMap
            r3.<init>()
            r0.put(r4, r3)
        L61:
            com.android.server.om.ResourceMapParser$ResourceType r3 = com.android.server.om.ResourceMapParser.ResourceType.COLOR
            boolean r3 = parseResourceEntries(r7, r9, r10, r0, r3)
            if (r3 != 0) goto Ld
            return
        L6a:
            java.lang.String r2 = "resource-map"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L75
            r2 = r4
            goto Ld
        L75:
            org.xmlpull.v1.XmlPullParserException r7 = new org.xmlpull.v1.XmlPullParserException
            java.lang.String r8 = "Invalid resource_map XML"
            r7.<init>(r8)
            throw r7
        L7d:
            writeMapFile(r7, r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.om.ResourceMapParser.parseResourceMapToFile(java.lang.String, java.lang.String, android.content.res.Resources, android.content.res.XmlResourceParser):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00bf, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean parseResourceEntries(java.lang.String r7, android.content.res.Resources r8, android.content.res.XmlResourceParser r9, android.util.ArrayMap r10, com.android.server.om.ResourceMapParser.ResourceType r11) {
        /*
            int r0 = r9.getDepth()
        L4:
            int r1 = r9.next()
            r2 = 1
            if (r1 == r2) goto Lbf
            r3 = 3
            if (r1 != r3) goto L14
            int r4 = r9.getDepth()
            if (r4 <= r0) goto Lbf
        L14:
            if (r1 == r3) goto L4
            r3 = 4
            if (r1 != r3) goto L1a
            goto L4
        L1a:
            java.lang.String r1 = r9.getName()
            r3 = 0
            java.lang.String r4 = "overlay"
            java.lang.String r3 = r9.getAttributeValue(r3, r4)
            java.lang.String r4 = "match"
            boolean r1 = r4.equals(r1)
            java.lang.String r4 = "ResourceMapParser"
            if (r1 == 0) goto L96
            if (r3 == 0) goto L96
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            boolean r5 = parseEntry(r7, r8, r9, r1, r11)
            if (r5 != 0) goto L40
            r7 = 0
            return r7
        L40:
            boolean r5 = r1.isEmpty()
            if (r5 != 0) goto L7c
            java.util.Iterator r1 = r1.iterator()
        L4a:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L4
            java.lang.Object r4 = r1.next()
            java.lang.String r4 = (java.lang.String) r4
            int[] r5 = com.android.server.om.ResourceMapParser.AnonymousClass1.$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType
            int r6 = r11.ordinal()
            r5 = r5[r6]
            if (r5 == r2) goto L70
            r6 = 2
            if (r5 == r6) goto L64
            goto L4a
        L64:
            java.lang.String r5 = "drawable"
            java.lang.Object r5 = r10.get(r5)
            android.util.ArrayMap r5 = (android.util.ArrayMap) r5
            r5.put(r4, r3)
            goto L4a
        L70:
            java.lang.String r5 = "color"
            java.lang.Object r5 = r10.get(r5)
            android.util.ArrayMap r5 = (android.util.ArrayMap) r5
            r5.put(r4, r3)
            goto L4a
        L7c:
            boolean r1 = com.android.server.om.ResourceMapParser.DEBUG
            if (r1 == 0) goto L4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Empty mapping for "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.w(r4, r1)
            goto L4
        L96:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unknown element under <resource-map>: "
            r1.append(r2)
            java.lang.String r2 = r9.getName()
            r1.append(r2)
            java.lang.String r2 = " at  "
            r1.append(r2)
            java.lang.String r2 = r9.getPositionDescription()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.w(r4, r1)
            com.android.internal.util.XmlUtils.skipCurrentTag(r9)
            goto L4
        Lbf:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.om.ResourceMapParser.parseResourceEntries(java.lang.String, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.ArrayMap, com.android.server.om.ResourceMapParser$ResourceType):boolean");
    }

    /* renamed from: com.android.server.om.ResourceMapParser$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$server$om$ResourceMapParser$ResourceType;

        static {
            int[] iArr = new int[ResourceType.values().length];
            $SwitchMap$com$android$server$om$ResourceMapParser$ResourceType = iArr;
            try {
                iArr[ResourceType.COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$server$om$ResourceMapParser$ResourceType[ResourceType.DRAWABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static boolean parseEntry(String str, Resources resources, XmlResourceParser xmlResourceParser, ArrayList arrayList, ResourceType resourceType) {
        int identifier;
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && "original".equals(xmlResourceParser.getName())) {
                if (xmlResourceParser.next() == 4) {
                    String text = xmlResourceParser.getText();
                    if (text != null && !text.isEmpty()) {
                        int i = AnonymousClass1.$SwitchMap$com$android$server$om$ResourceMapParser$ResourceType[resourceType.ordinal()];
                        if (i == 1) {
                            identifier = resources.getIdentifier(text, "color", str);
                        } else {
                            identifier = i != 2 ? 0 : resources.getIdentifier(text, "drawable", str);
                        }
                        if (identifier != 0) {
                            arrayList.add(text);
                        }
                    }
                    if (xmlResourceParser.next() != 3 || !"original".equals(xmlResourceParser.getName())) {
                        Log.w("ResourceMapParser", "Unknown element under <match>: " + xmlResourceParser.getName() + " at  " + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                } else {
                    Log.w("ResourceMapParser", "Unknown element under <match>: " + xmlResourceParser.getName() + " at  " + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
        return true;
    }

    public static void writeMapFile(String str, String str2, ArrayMap arrayMap) {
        File file = new File("/data/overlays/remaps/");
        if (!file.exists()) {
            file.mkdir();
            FileUtils.setPermissions(file, 485, -1, -1);
        }
        File file2 = new File("/data/overlays/remaps/" + str2.replace("/", ".") + ".map");
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2, false));
        try {
            if (DEBUG) {
                Log.d("ResourceMapParser", "create resource map for " + str);
            }
            ArrayMap arrayMap2 = (ArrayMap) arrayMap.get("color");
            if (arrayMap2 != null && arrayMap2.size() > 0) {
                bufferedWriter.write("# C\n");
                for (Map.Entry entry : arrayMap2.entrySet()) {
                    bufferedWriter.write(((String) entry.getKey()) + " " + ((String) entry.getValue()));
                    bufferedWriter.newLine();
                }
            }
            ArrayMap arrayMap3 = (ArrayMap) arrayMap.get("drawable");
            if (arrayMap3 != null && arrayMap3.size() > 0) {
                bufferedWriter.write("# D\n");
                for (Map.Entry entry2 : arrayMap3.entrySet()) {
                    bufferedWriter.write(((String) entry2.getKey()) + " " + ((String) entry2.getValue()));
                    bufferedWriter.newLine();
                }
            }
            FileUtils.setPermissions(file2, 485, -1, -1);
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
