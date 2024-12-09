package javax.mail.internet;

/* compiled from: MailDateFormat.java */
/* loaded from: classes.dex */
class MailDateParser {
    int index = 0;
    char[] orig;

    public MailDateParser(char[] cArr) {
        this.orig = cArr;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:202)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public void skipUntilNumber() throws java.text.ParseException {
        /*
            r2 = this;
        L0:
            char[] r0 = r2.orig     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L10
            int r1 = r2.index     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L10
            char r0 = r0[r1]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L10
            switch(r0) {
                case 48: goto La;
                case 49: goto La;
                case 50: goto La;
                case 51: goto La;
                case 52: goto La;
                case 53: goto La;
                case 54: goto La;
                case 55: goto La;
                case 56: goto La;
                case 57: goto La;
                default: goto L9;
            }     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L10
        L9:
            goto Lb
        La:
            return
        Lb:
            int r1 = r1 + 1
            r2.index = r1     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L10
            goto L0
        L10:
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r1 = "No Number Found"
            int r2 = r2.index
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MailDateParser.skipUntilNumber():void");
    }

    public void skipWhiteSpace() {
        int length = this.orig.length;
        while (true) {
            int i = this.index;
            if (i >= length) {
                return;
            }
            char c = this.orig[i];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                return;
            } else {
                this.index = i + 1;
            }
        }
    }

    public void skipChar(char c) throws java.text.ParseException {
        int i = this.index;
        char[] cArr = this.orig;
        if (i < cArr.length) {
            if (cArr[i] == c) {
                this.index = i + 1;
                return;
            }
            throw new java.text.ParseException("Wrong char", this.index);
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    public boolean skipIfChar(char c) throws java.text.ParseException {
        int i = this.index;
        char[] cArr = this.orig;
        if (i < cArr.length) {
            if (cArr[i] != c) {
                return false;
            }
            this.index = i + 1;
            return true;
        }
        throw new java.text.ParseException("No more characters", this.index);
    }

    public int parseNumber() throws java.text.ParseException {
        int length = this.orig.length;
        boolean z = false;
        int i = 0;
        while (true) {
            int i2 = this.index;
            if (i2 >= length) {
                if (z) {
                    return i;
                }
                throw new java.text.ParseException("No Number found", this.index);
            }
            switch (this.orig[i2]) {
                case '0':
                    i *= 10;
                    break;
                case '1':
                    i = (i * 10) + 1;
                    break;
                case '2':
                    i = (i * 10) + 2;
                    break;
                case '3':
                    i = (i * 10) + 3;
                    break;
                case '4':
                    i = (i * 10) + 4;
                    break;
                case '5':
                    i = (i * 10) + 5;
                    break;
                case '6':
                    i = (i * 10) + 6;
                    break;
                case '7':
                    i = (i * 10) + 7;
                    break;
                case '8':
                    i = (i * 10) + 8;
                    break;
                case '9':
                    i = (i * 10) + 9;
                    break;
                default:
                    if (z) {
                        return i;
                    }
                    throw new java.text.ParseException("No Number found", this.index);
            }
            this.index = i2 + 1;
            z = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x00d2, code lost:
    
        if (r3 == 'u') goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e A[Catch: ArrayIndexOutOfBoundsException -> 0x0155, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0155, blocks: (B:3:0x0002, B:22:0x0046, B:23:0x0049, B:30:0x004e, B:33:0x0058, B:39:0x0069, B:43:0x0077, B:49:0x0088, B:52:0x0092, B:64:0x00a9, B:67:0x00b3, B:72:0x00c0, B:78:0x00d4, B:90:0x00eb, B:95:0x00f7, B:98:0x0101, B:104:0x0111, B:107:0x011b, B:112:0x0128, B:119:0x0139, B:125:0x0149), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0069 A[Catch: ArrayIndexOutOfBoundsException -> 0x0155, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0155, blocks: (B:3:0x0002, B:22:0x0046, B:23:0x0049, B:30:0x004e, B:33:0x0058, B:39:0x0069, B:43:0x0077, B:49:0x0088, B:52:0x0092, B:64:0x00a9, B:67:0x00b3, B:72:0x00c0, B:78:0x00d4, B:90:0x00eb, B:95:0x00f7, B:98:0x0101, B:104:0x0111, B:107:0x011b, B:112:0x0128, B:119:0x0139, B:125:0x0149), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0088 A[Catch: ArrayIndexOutOfBoundsException -> 0x0155, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0155, blocks: (B:3:0x0002, B:22:0x0046, B:23:0x0049, B:30:0x004e, B:33:0x0058, B:39:0x0069, B:43:0x0077, B:49:0x0088, B:52:0x0092, B:64:0x00a9, B:67:0x00b3, B:72:0x00c0, B:78:0x00d4, B:90:0x00eb, B:95:0x00f7, B:98:0x0101, B:104:0x0111, B:107:0x011b, B:112:0x0128, B:119:0x0139, B:125:0x0149), top: B:2:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int parseMonth() throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 372
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MailDateParser.parseMonth():int");
    }

    public int parseTimeZone() throws java.text.ParseException {
        int i = this.index;
        char[] cArr = this.orig;
        if (i >= cArr.length) {
            throw new java.text.ParseException("No more characters", this.index);
        }
        char c = cArr[i];
        if (c == '+' || c == '-') {
            return parseNumericTimeZone();
        }
        return parseAlphaTimeZone();
    }

    public int parseNumericTimeZone() throws java.text.ParseException {
        boolean z;
        char[] cArr = this.orig;
        int i = this.index;
        this.index = i + 1;
        char c = cArr[i];
        if (c == '+') {
            z = true;
        } else {
            if (c != '-') {
                throw new java.text.ParseException("Bad Numeric TimeZone", this.index);
            }
            z = false;
        }
        int parseNumber = parseNumber();
        int i2 = ((parseNumber / 100) * 60) + (parseNumber % 100);
        return z ? -i2 : i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int parseAlphaTimeZone() throws java.text.ParseException {
        /*
            r8 = this;
            java.lang.String r0 = "Bad Alpha TimeZone"
            char[] r1 = r8.orig     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            int r2 = r8.index     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            int r3 = r2 + 1
            r8.index = r3     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            char r2 = r1[r2]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            r4 = 116(0x74, float:1.63E-43)
            r5 = 84
            r6 = 1
            r7 = 0
            switch(r2) {
                case 67: goto L58;
                case 69: goto L55;
                case 71: goto L34;
                case 77: goto L31;
                case 80: goto L2e;
                case 85: goto L19;
                case 99: goto L58;
                case 101: goto L55;
                case 103: goto L34;
                case 109: goto L31;
                case 112: goto L2e;
                case 117: goto L19;
                default: goto L15;
            }     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
        L15:
            java.text.ParseException r1 = new java.text.ParseException     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            goto L9f
        L19:
            int r2 = r3 + 1
            r8.index = r2     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            char r2 = r1[r3]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            if (r2 == r5) goto L2c
            if (r2 != r4) goto L24
            goto L2c
        L24:
            java.text.ParseException r1 = new java.text.ParseException     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            int r2 = r8.index     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            r1.<init>(r0, r2)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            throw r1     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
        L2c:
            r6 = r7
            goto L5a
        L2e:
            r7 = 480(0x1e0, float:6.73E-43)
            goto L5a
        L31:
            r7 = 420(0x1a4, float:5.89E-43)
            goto L5a
        L34:
            int r2 = r3 + 1
            r8.index = r2     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            char r3 = r1[r3]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            r6 = 77
            if (r3 == r6) goto L42
            r6 = 109(0x6d, float:1.53E-43)
            if (r3 != r6) goto L4d
        L42:
            int r3 = r2 + 1
            r8.index = r3     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            char r2 = r1[r2]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            if (r2 == r5) goto L2c
            if (r2 != r4) goto L4d
            goto L2c
        L4d:
            java.text.ParseException r1 = new java.text.ParseException     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            int r2 = r8.index     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            r1.<init>(r0, r2)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            throw r1     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
        L55:
            r7 = 300(0x12c, float:4.2E-43)
            goto L5a
        L58:
            r7 = 360(0x168, float:5.04E-43)
        L5a:
            if (r6 == 0) goto L9e
            int r2 = r8.index
            int r3 = r2 + 1
            r8.index = r3
            char r2 = r1[r2]
            r6 = 83
            if (r2 == r6) goto L8b
            r6 = 115(0x73, float:1.61E-43)
            if (r2 != r6) goto L6d
            goto L8b
        L6d:
            r6 = 68
            if (r2 == r6) goto L75
            r6 = 100
            if (r2 != r6) goto L9e
        L75:
            int r2 = r3 + 1
            r8.index = r2
            char r1 = r1[r3]
            if (r1 == r5) goto L88
            if (r1 == r4) goto L80
            goto L88
        L80:
            java.text.ParseException r1 = new java.text.ParseException
            int r8 = r8.index
            r1.<init>(r0, r8)
            throw r1
        L88:
            int r7 = r7 + (-60)
            goto L9e
        L8b:
            int r2 = r3 + 1
            r8.index = r2
            char r1 = r1[r3]
            if (r1 == r5) goto L9e
            if (r1 != r4) goto L96
            goto L9e
        L96:
            java.text.ParseException r1 = new java.text.ParseException
            int r8 = r8.index
            r1.<init>(r0, r8)
            throw r1
        L9e:
            return r7
        L9f:
            int r2 = r8.index     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            r1.<init>(r0, r2)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
            throw r1     // Catch: java.lang.ArrayIndexOutOfBoundsException -> La5
        La5:
            java.text.ParseException r1 = new java.text.ParseException
            int r8 = r8.index
            r1.<init>(r0, r8)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.mail.internet.MailDateParser.parseAlphaTimeZone():int");
    }

    int getIndex() {
        return this.index;
    }
}
