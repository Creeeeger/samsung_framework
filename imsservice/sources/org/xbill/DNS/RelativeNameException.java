package org.xbill.DNS;

/* loaded from: classes.dex */
public class RelativeNameException extends IllegalArgumentException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public RelativeNameException(org.xbill.DNS.Name r3) {
        /*
            r2 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "'"
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = "' is not an absolute name"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xbill.DNS.RelativeNameException.<init>(org.xbill.DNS.Name):void");
    }

    public RelativeNameException(String str) {
        super(str);
    }
}
