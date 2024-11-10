package com.android.server.pm.pkg.component;

/* loaded from: classes3.dex */
public abstract class ParsedServiceUtils {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013c, code lost:
    
        switch(r3) {
            case 0: goto L56;
            case 1: goto L53;
            case 2: goto L51;
            default: goto L50;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013f, code lost:
    
        r7 = r29;
        r6 = r23;
        r1 = com.android.server.pm.pkg.parsing.ParsingUtils.unknownTag(r6, r27, r7, r33);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0155, code lost:
    
        r21 = r6;
        r17 = r8;
        r18 = r9;
        r19 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c6, code lost:
    
        if (r1.isError() == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01cd, code lost:
    
        r8 = r17;
        r9 = r18;
        r10 = r19;
        r23 = r21;
        r13 = 0;
        r15 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01cc, code lost:
    
        return r33.error(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x014a, code lost:
    
        r7 = r29;
        r6 = r23;
        r1 = com.android.server.pm.pkg.component.ParsedComponentUtils.addProperty(r14, r27, r28, r7, r33);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0160, code lost:
    
        r21 = r23;
        r17 = r8;
        r18 = r9;
        r19 = r10;
        r1 = com.android.server.pm.pkg.component.ParsedMainComponentUtils.parseIntentFilter(r14, r27, r28, r29, r16, true, false, false, false, r33);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0193, code lost:
    
        if (r1.isSuccess() == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0195, code lost:
    
        r2 = (com.android.server.pm.pkg.component.ParsedIntentInfoImpl) r1.getResult();
        r14.setOrder(java.lang.Math.max(r2.getIntentFilter().getOrder(), r14.getOrder()));
        r14.addIntent(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b2, code lost:
    
        r17 = r8;
        r18 = r9;
        r19 = r10;
        r21 = r23;
        r1 = com.android.server.pm.pkg.component.ParsedComponentUtils.addMetaData(r14, r27, r28, r29, r33);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.parsing.result.ParseResult parseService(java.lang.String[] r26, com.android.server.pm.pkg.parsing.ParsingPackage r27, android.content.res.Resources r28, android.content.res.XmlResourceParser r29, int r30, boolean r31, java.lang.String r32, android.content.pm.parsing.result.ParseInput r33) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.component.ParsedServiceUtils.parseService(java.lang.String[], com.android.server.pm.pkg.parsing.ParsingPackage, android.content.res.Resources, android.content.res.XmlResourceParser, int, boolean, java.lang.String, android.content.pm.parsing.result.ParseInput):android.content.pm.parsing.result.ParseResult");
    }
}
